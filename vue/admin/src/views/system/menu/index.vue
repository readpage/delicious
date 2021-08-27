<template>
  <div class="view">
    <el-scrollbar>
      <div class="menu">
        <el-space :size="10">
          <el-button size="mini" icon="el-icon-refresh" @click="reload">刷新</el-button>
        </el-space>
        <el-table :data="menu" ref="table" row-key="id" stripe
          max-height="500"
          @expand-change="expandChange"
          v-loading="state.user.loading"
          element-loading-text="拼命加载中"
          element-loading-spinner="el-icon-loading"
        >
          <el-table-column prop="meta.title" label="名称" show-overflow-tooltip min-width="180"></el-table-column>
          <el-table-column label="图标" width="80">
            <template #default="scope">
              <i :class="scope.row.meta.icon"></i>
            </template>
          </el-table-column>
          <el-table-column prop="orderNum" label="排序" min-width="50"></el-table-column>
          <el-table-column prop="type" label="类型" width="80">
            <template #default="scope">
              <el-tag size="small">{{ setType(scope.row) }}</el-tag>
            </template>
          </el-table-column>
          <el-table-column prop="path" label="节点路由" show-overflow-tooltip min-width="180"></el-table-column>
          <el-table-column prop="createTime" label="创建时间" width="180"></el-table-column>
          <el-table-column prop="updateTime" label="修改时间" width="180"></el-table-column>
          <el-table-column prop="version" label="版本" min-width="50"></el-table-column>
          <el-table-column label="操作" fixed="right" width="130">
            <el-space>
              <el-button type="primary" size="mini" icon="el-icon-edit"></el-button>
              <el-button type="danger" size="mini" icon="el-icon-delete"></el-button>
            </el-space>
          </el-table-column>
        </el-table>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Amenu } from "@/api";
import { translateToTree } from "@/hooks/useMenu";
import { useStore } from "@/store";
import { computed, onMounted, ref } from "vue";

const { state, commit } = useStore()
const menu = ref<Imenu[]>([]);
function reload() {
  commit("user/showLoading")
  Amenu.list().then((res) => {
    menu.value = translateToTree(
      res.data.map((item: any) => {
        item.meta = { title: item.title, icon: item.icon };
        delete item.title;
        delete item.icon;
        return item;
      })
    );
  });
}
reload()
function setType(row: Imenu): string {
  switch(row.type) {
    case 0:
      return "目录"
    case 1:
    case 3:
      return "菜单"
    case 2:
      return "权限"
    default:
      return "未知"
  }
}

const table = ref()
function expandChange(row: Imenu, expanded: boolean) {
  if (expanded) {
    function tree(menu: Imenu[]) {
      menu.forEach(item => {
        const child = item.children
        if (child) {
          tree(child)
        }
        if (row.id != item.id && row.parentId == item.parentId) {
          const child = item.children
          table.value.toggleRowExpansion(item, false)
        }
      });
    }
    tree(menu.value)
  }
}
</script>

<style lang="scss" scoped>
.view {
  height: 100%;
  background: #fff;
  .menu {
    padding: 10px;

    .el-space {
      margin-bottom: 10px;
    }
  }
}
</style>

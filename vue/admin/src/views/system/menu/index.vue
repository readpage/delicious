<template>
  <div class="view">
    <el-scrollbar>
      <div class="menu">
        <el-space :size="10">
          <el-button size="mini" icon="el-icon-refresh" @click="reload">刷新</el-button>
          <Add />
        </el-space>
        <el-table :data="treeList" ref="tableRef" row-key="id" stripe
          max-height="500"
          @expand-change="expandChange"
          v-loading="app.loading"
          element-loading-text="拼命加载中"
          element-loading-spinner="el-icon-loading"
        >
          <el-table-column prop="title" label="名称" show-overflow-tooltip min-width="180"></el-table-column>
          <el-table-column label="图标" width="80">
            <template #default="scope">
              <i :class="scope.row.icon"></i>
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
            <template #default="scope">
              <el-space>
                <Edit @onUpdate="onUpdate(scope.row)" />
                <el-button type="danger" size="mini" :loading="app.btnLoading" icon="el-icon-delete" @click="onDelete(scope.row)"></el-button>
              </el-space>
            </template>
          </el-table-column>
        </el-table>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Amenu } from "@/api";
import appStore from "@/store/appStore";
import { ImenuKey } from "@/symbols";
import { menuFormKey } from "@/symbols/menu";
import { deepTree } from "@/util";
import { ElMessageBox } from "element-plus";
import { computed, onMounted, provide, reactive, ref } from "vue";
import Add from "./components/Add.vue";
import Edit from "./components/Edit.vue";

const app = appStore()

const table = reactive({
  editDisabled: true,
  deleteDisabled: true,
  multipleSelection: [],
})
const menu = ref<Imenu[]>([])
const treeList = ref<Imenu[]>([])

provide(ImenuKey, menu)
function reload() {
  app.showLoading()
  Amenu.list().then(res => {
    treeList.value = deepTree(res.data);
    menu.value = res.data
  });
}
reload()
provide("reload", reload)

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

const tableRef = ref()
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
          tableRef.value.toggleRowExpansion(item, false)
        }
      });
    }
    tree(menu.value)
  }
}

function onDelete(val: Imenu) {
  ElMessageBox.confirm("确定删除")
  .then(() => {
    app.showBtnLoading()
    Amenu.del({urlParam: `/${val.id}`}).then(res => {
      reload()
    })
  })
}


const form = ref()
provide(menuFormKey, form)
function onUpdate(val: any) {
  form.value = JSON.parse(JSON.stringify(val))
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

<template>
  <div class="view">
    <el-scrollbar>
      <div class="menu">
        <el-table :data="menu" row-key="id" border 
          v-loading="state.user.loading"
          element-loading-text="拼命加载中"
          element-loading-spinner="el-icon-loading"
        >
          <el-table-column
            prop="meta.title"
            label="名称"
            width="180"
          ></el-table-column>
          <el-table-column
            prop="meta.icon"
            label="图标"
            width="180"
          ></el-table-column>
          <el-table-column prop="type" label="类型"> </el-table-column>
          <el-table-column prop="path" label="节点路由"> </el-table-column>
          <el-table-column prop="createTime" label="创建时间"></el-table-column>
          <el-table-column prop="updateTime" label="修改时间"></el-table-column>
          <el-table-column prop="version" label="版本"></el-table-column>
        </el-table>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Amenu } from "@/api";
import { translateToTree } from "@/hooks/useMenu";
import { useStore } from "@/store";
import { ref } from "vue";

const { state } = useStore()
const menu = ref<Imenu[]>([]);
Amenu().then((res) => {
  menu.value = translateToTree(
    res.data.map((item: any) => {
      item.meta = { title: item.title, icon: item.icon };
      delete item.title;
      delete item.icon;
      return item;
    })
  );
});

</script>

<style lang="scss" scoped>
.view {
  height: 100%;
  background: #fff;
  .menu {
    padding: 10px;
  }
}
</style>

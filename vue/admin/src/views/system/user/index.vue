<template>
  <div class="view">
    <el-scrollbar>
      <div class="user">
        <el-space :size="10">
          <el-button size="mini" icon="el-icon-refresh" @click="reload">刷新</el-button>
        </el-space>
        <el-table :data="table.user" border
          :header-cell-style="{ background: '#f5f7fa', color: '#606266' }"
          v-loading="state.user.loading"
          element-loading-text="拼命加载中"
          element-loading-spinner="el-icon-loading">
          <el-table-column type="selection" width="55"></el-table-column>
          <el-table-column label="用户名" prop="username" width="120"></el-table-column>
          <el-table-column label="头像" prop="headImg"></el-table-column>
          <el-table-column label="昵称" prop="nickname"></el-table-column>
          <el-table-column label="手机号码" prop="phone"></el-table-column>
          <el-table-column label="邮箱" prop="email"></el-table-column>
          <el-table-column label="创建时间" prop="createTime"></el-table-column>
          <el-table-column label="修改时间" prop="updateTime"></el-table-column>
          <el-table-column label="版本" prop="version"></el-table-column>
        </el-table>
        <el-pagination layout="total, sizes, pre, pager, next, jumper"
          small :total="table.total" :page-sizes="[5, 10, 20, 40]"
          :page-size="table.pageSize"
          background
          @current-change="handleCurrentChange"
          @size-change="handleSizeChange"
        ></el-pagination>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Auser } from "@/api";
import { useStore } from "@/store";
import { inject, onMounted, reactive, ref } from "vue"

const reload = inject("reload")
const { state } = useStore()

const table = reactive({
  total: 0,
  pageSize: 5,
  pageNum: 1,
  user: [] as Iuser[],
})
function handleSizeChange(val: number) {
  table.pageSize = val
  page()
}
function handleCurrentChange(val: number) {
  table.pageNum = val
  page()
}

function page() {
  Auser({urlParam: `/${table.pageNum}/${table.pageSize}`}).then(res => {
    table.user = res.data.list
    table.total = res.data.total
  })
}
page()
</script>

<style lang="scss" scoped>
  .view {
    height: 100%;
    background: #fff;
    .user {
      padding: 10px;
      .el-space {
        margin-bottom: 10px;
      }
      .el-pagination {
        margin-top: 10px;
      }
    }
   
  }
</style>
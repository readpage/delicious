<template>
  <div class="view">
    <el-scrollbar>
      <div class="role">
        <el-space :size="10">
          <el-button size="mini" icon="el-icon-refresh" @click="reload">刷新</el-button>
        </el-space>
        <el-table :data="table.role" stripe
          :header-cell-style="{ background: '#f5f7fa', color: '#606266' }"
          max-height="500"
          v-loading="state.user.loading"
          element-loading-text="拼命加载中"
          element-loading-spinner="el-icon-loading">
          <el-table-column label="角色名称" prop="name" show-overflow-tooltip min-width="150"></el-table-column>
          <el-table-column label="昵称" prop="nickname" show-overflow-tooltip min-width="150"></el-table-column>
          <el-table-column label="创建时间" prop="createTime" width="180"></el-table-column>
          <el-table-column label="修改时间" prop="updateTime" width="180"></el-table-column>
          <el-table-column label="版本" prop="version" min-width="50"></el-table-column>
          <el-table-column label="操作" fixed="right" width="130">
            <el-space>
              <el-button type="primary" size="mini" icon="el-icon-edit"></el-button>
              <el-button type="danger" size="mini" icon="el-icon-delete"></el-button>
            </el-space>
          </el-table-column>
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
import { Arole } from "@/api";
import { useStore } from "@/store";
import { onMounted, reactive, ref } from "vue"

const { state } = useStore()

const table = reactive({
  total: 0,
  pageSize: 5,
  pageNum: 1,
  role: [] as Irole[],
})
function handleSizeChange(val: number) {
  table.pageSize = val
  reload()
}
function handleCurrentChange(val: number) {
  table.pageNum = val
  reload()
}

function reload() {
  Arole({urlParam: `/${table.pageNum}/${table.pageSize}`}).then(res => {
    table.role = res.data.list
    table.total = res.data.total
  })
}

reload()
</script>

<style lang="scss" scoped>
  .view {
    height: 100%;
    background: #fff;
    .role {
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
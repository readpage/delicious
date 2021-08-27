<template>
  <div class="view">
    <el-scrollbar>
      <div class="role">
        <el-space :size="10">
          <el-button size="mini" icon="el-icon-refresh" @click="reload">刷新</el-button>
        </el-space>
        <el-table :data="table.logInfo" stripe
          :header-cell-style="{ background: '#f5f7fa', color: '#606266' }"
          max-height="500"
          v-loading="state.user.loading"
          element-loading-text="拼命加载中"
          element-loading-spinner="el-icon-loading">
          <el-table-column type="selection" width="50"></el-table-column>
          <!-- <el-table-column label="角色名称" prop="name" show-overflow-tooltip min-width="150"></el-table-column>
          <el-table-column label="昵称" prop="nickname" show-overflow-tooltip min-width="150"></el-table-column> -->
          <el-table-column label="操作人员" prop="username" show-overflow-tooltip min-width="150"></el-table-column>
          <el-table-column label="请求方式" prop="requestMethod" width="80"></el-table-column>
          <el-table-column label="请求地址" prop="url" width="180"></el-table-column>
          <!-- <el-table-column label="操作方法" prop="method"></el-table-column> -->
          <!-- <el-table-column label="浏览器" prop="browser" width="120"></el-table-column> -->
          <el-table-column label="操作系统" prop="os" width="120"></el-table-column>
          <!-- <el-table-column label="设备类型" prop="deviceType"></el-table-column> -->
          <el-table-column label="ip地址" prop="ipAddr" width="140"></el-table-column>
          <el-table-column label="地理位置" prop="location" width="140"></el-table-column>
          <el-table-column label="操作信息" prop="msg" width="120"></el-table-column>
          <!-- <el-table-column label="错误信息" prop="error"></el-table-column> -->
          <el-table-column label="创建时间" prop="createTime" width="180"></el-table-column>
          <el-table-column label="操作" fixed="right" width="70">
            <el-button type="primary" size="mini" icon="el-icon-edit"></el-button>
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
import { Alog } from "@/api";
import { useStore } from "@/store";
import { onMounted, reactive, ref } from "vue"

const { state, commit } = useStore()

const table = reactive({
  total: 0,
  pageNum: 1,
  pageSize: 5,
  logInfo: [] as logInfo[],
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
  commit("user/showLoading")
  Alog.page({urlParam: `/${table.pageNum}/${table.pageSize}`}).then(res => {
    table.logInfo = res.data.list
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
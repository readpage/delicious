<template>
  <div class="view">
    <el-scrollbar>
      <div class="user">
        <el-space :size="10">
          <el-button size="mini" icon="el-icon-refresh" @click="reload">刷新</el-button>
          <Add />
          <Edit type="success" icon="el-icon-edit" msg="修改" />
        </el-space>
        <el-table :data="table.user" stripe
          :header-cell-style="{ background: '#f5f7fa', color: '#606266' }"
          max-height="500"
          @expand-change="expandChange"
          row-key="id"
          :expand-row-keys="expands"
          v-loading="state.user.loading"
          element-loading-text="拼命加载中"
          element-loading-spinner="el-icon-loading">
          <el-table-column type="selection" width="50"></el-table-column>
          <el-table-column type="expand" label="详情" width="50">
            <template #default="scope">
              <el-descriptions title="用户信息">
                <el-descriptions-item label="用户名:">{{scope.row.username}}</el-descriptions-item>
                <el-descriptions-item label="昵称:">{{scope.row.nickname}}</el-descriptions-item>
                <el-descriptions-item label="角色:">
                  <el-tag v-for="(item, index) in scope.row.roles"
                    :key="item.id"
                    style="margin: 2px"
                    size="small"
                  >
                    {{item.nickname}}
                  </el-tag>
                </el-descriptions-item>
                <el-descriptions-item label="状态:">{{scope.row.status}}</el-descriptions-item>
                <el-descriptions-item label="手机号码:">{{scope.row.phone}}</el-descriptions-item>
                <el-descriptions-item label="邮箱:">{{scope.row.email}}</el-descriptions-item>
                <el-descriptions-item label="创建时间:">{{scope.row.createTime}}</el-descriptions-item>
                <el-descriptions-item label="修改时间:">{{scope.row.updateTime}}</el-descriptions-item>
                <el-descriptions-item label="版本:">{{scope.row.version}}</el-descriptions-item>
              </el-descriptions>
            </template>
          </el-table-column>
          <el-table-column label="用户名" prop="username" show-overflow-tooltip min-width="150"></el-table-column>
          <el-table-column label="头像" prop="headImg" width="80"></el-table-column>
          <el-table-column label="昵称" prop="nickname" show-overflow-tooltip min-width="180"></el-table-column>
          <el-table-column label="角色" width="150">
            <template #default="scope">
              <el-tag v-for="(item, index) in scope.row.roles"
                :key="item.id"
                style="margin: 2px"
                size="small"
              >
                {{item.nickname}}
              </el-tag>
            </template>
          </el-table-column>
          <el-table-column label="状态" prop="status" width="80"></el-table-column>
          <el-table-column label="创建时间" prop="createTime" width="160"></el-table-column>
          <el-table-column label="修改时间" prop="updateTime" width="160"></el-table-column>
          <el-table-column label="操作" fixed="right" width="130">
            <template #default="scope">
              <el-space>
                <Edit type="primary" icon="el-icon-edit" @handleUpdate="handleUpdate(scope.row)" />
                <el-button type="danger" size="mini" icon="el-icon-delete"></el-button>
              </el-space>
            </template>
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
import { Arole, Auser } from "@/api";
import { useStore } from "@/store";
import { inject, onMounted, provide, reactive, ref } from "vue"
import Add from "./components/Add.vue";
import Edit from "./components/Edit.vue";

const { state, commit } = useStore()
const table = reactive({
  total: 0,
  pageSize: 5,
  pageNum: 1,
  user: [] as Iuser[],
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
  Auser.page({urlParam: `/${table.pageNum}/${table.pageSize}`}).then(res => {
    table.user = res.data.list
    table.total = res.data.total
  })
}
reload()

const expands = ref<number[]>([])
function expandChange(row: Iuser, expandedRows : Iuser[]) {
  if (expands.value[0] == row.id) {
    expands.value = []
  } else {
    expands.value = []
    expands.value.push(row.id)
  }
}


const data = ref()
provide("data", data)
function handleUpdate(row: any) {
  const temp = Object.assign({}, row)
  let ids= temp.roles.map((item: any) => {
    return item.id
  })
  temp.roles = ids
  data.value = temp
}

const roles = ref()
provide("roles", roles)
Arole.list().then(res => {
  roles.value = res.data
})

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
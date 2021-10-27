<template>
  <div class="view">
    <el-scrollbar>
      <div class="user">
        <el-form v-show="param.visible" :model="param" ref="paramRef" :inline="true">
          <el-form-item label="用户昵称" prop="nickname">
            <el-input size="mini" v-model="param.nickname" clearable></el-input>
          </el-form-item>
          <el-form-item>
            <el-button size="mini" type="info" icon="el-icon-search" @click="search">搜索</el-button>
            <el-button size="mini" type="warning" icon="el-icon-refresh-left" @click="reset">重置</el-button>
          </el-form-item>
        </el-form>

        <div class="flex justify-between">
          <div class="space-x-2.5 mb-2.5">
            <Add />
          <Edit :disabled="editDisabled" type="success" icon="el-icon-edit" msg="修改" @open="open(multipleSelection[0])" />
          <Delete :disabled="deleteDisabled" :loading="state.user.btnLoading" msg="删除" @onDelete="onDelete(multipleSelection)" />
          </div>
          <div>
            <el-tooltip :content="param.visible ? '隐藏搜索' : '显示搜索'" placement="top">
              <el-button size="mini" icon="el-icon-search" circle @click="param.visible = !param.visible"></el-button>
            </el-tooltip>
            <el-tooltip content="刷新" placement="top">
              <el-button size="mini" icon="el-icon-refresh" circle @click="reload"></el-button>
            </el-tooltip>
          </div>
        </div>
        <el-table :data="table.user" stripe
          ref="tableRef"
          :header-cell-style="{ background: '#f5f7fa', color: '#606266' }"
          max-height="500"
          @selection-change="handleSelectionChange"
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
          <el-table-column label="头像" prop="headImg" width="120">
            <template #default="scope">
              <el-avatar :src="scope.row.img">
                <img src="@/assets/img/avatar.png" alt="">
              </el-avatar>
            </template>
          </el-table-column>
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
          <el-table-column label="状态" prop="status" width="80">
            <template #default="scope">
              <el-switch v-model="scope.row.status" :loading="state.user.btnLoading" />
            </template>
          </el-table-column>
          <el-table-column label="创建时间" prop="createTime" width="160"></el-table-column>
          <el-table-column label="修改时间" prop="updateTime" width="160"></el-table-column>
          <el-table-column label="操作" fixed="right" width="135">
            <template #default="scope">
              <el-space>
                <Edit :disabled="false" type="primary" icon="el-icon-edit" @open="open(scope.row)" />
                <Delete :loading="state.user.btnLoading" @onDelete="onDelete([scope.row])" />
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
import { IroleKey, IuserFormKey } from "@/symbols";
import { inject, onMounted, provide, reactive, ref } from "vue"
import Add from "./components/Add.vue";
import Delete from "./components/Delete.vue";
import Edit from "./components/Edit.vue";

const { state, commit } = useStore()
const table = reactive({
  total: 0,
  pageSize: 5,
  pageNum: 1,
  user: [] as Iuser[],
})

const param = reactive({
  visible: true,
  nickname: ""
})
const multipleSelection = ref([])
const editDisabled = ref(true)
const deleteDisabled = ref(true)
const paramRef = ref()

function search() {
  commit("user/showLoading")
  Auser.page({urlParam: `/${table.pageNum}/${table.pageSize}`, nickname: param.nickname}).then(res => {
    table.user = res.data.list
    table.total = res.data.total
  })
}

function reset() {
  paramRef.value.resetFields()
  reload()
}

function handleSizeChange(val: number) {
  table.pageSize = val
  page()
}
function handleCurrentChange(val: number) {
  table.pageNum = val
  page()
}
const roles = ref<Irole[]>()
provide(IroleKey, roles)
function page() {
  commit("user/showLoading")
  Auser.page({urlParam: `/${table.pageNum}/${table.pageSize}`}).then(res => {
    table.user = res.data.list
    table.total = res.data.total
  })
}

const tableRef = ref()
function reload() {
  page()
  Arole.list().then(res => {
    roles.value = res.data
  })
  if (tableRef.value) {
    tableRef.value.clearSelection()
  }
}
reload()
provide("reload", reload)

const expands = ref<number[]>([])
function expandChange(row: Iuser, expandedRows : Iuser[]) {
  if (expands.value[0] == row.id) {
    expands.value = []
  } else {
    expands.value = []
    expands.value.push(row.id)
  }
}

function handleSelectionChange(val: any) {
  editDisabled.value = val.length != 1
  deleteDisabled.value = val.length == 0
  multipleSelection.value = val
}


const data = ref<IuserForm>()
provide(IuserFormKey, data)
const username = ref("")
provide("username", username)
function open(row: any) {
  const temp = Object.assign({}, row) 
  let ids= row.roles.map((item: any) => {
    return item.id
  })
  username.value = temp.username
  temp.roles = ids
  data.value = temp
}

const uids = ref<number[]>([])
provide("uids", uids)
function onDelete(val: Iuser[]) {
  
  let list = val.map(e => {
    return e.id
  })
  uids.value = list
}

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
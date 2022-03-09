<template>
  <Card>
    <el-form v-show="param.visible" :model="param" ref="paramRef" :inline="true">
      <el-form-item label="用户id" prop="uid">
        <el-input size="mini" v-model="param.uid" placeholder="请输入用户id"></el-input>
      </el-form-item>
      <el-form-item label="订单编号" prop="number">
        <el-input size="mini" v-model="param.number" placeholder="请输入订单编号"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button size="mini" type="info" icon="el-icon-search" @click="tableRef.reload">搜索</el-button>
        <el-button size="mini" icon="el-icon-refresh-left" @click="reset">重置</el-button>
      </el-form-item>
    </el-form>

    <div class="flex justify-between">
      <div class="space-x-2.5 mb-2.5">
        <el-button size="mini" icon="el-icon-refresh" @click="tableRef.reload">刷新</el-button>
        <el-button size="mini" icon="el-icon-delete" type="danger" :loading="app.btnLoading" @click="remove(obj.selections)" :disabled="obj.deleteDisabled">删除</el-button>
      </div>
      <div>
        <el-tooltip placement="top" :content="param.visible ? '隐藏搜索' : '显示搜索' ">
          <el-button size="mini" icon="el-icon-search" @click="param.visible = !param.visible" circle></el-button>
        </el-tooltip>
        <el-tooltip content="刷新" placement="top">
          <el-button size="mini" icon="el-icon-refresh" @click="tableRef.reload" circle></el-button>
        </el-tooltip>
      </div>
    </div>
    <v-table :table="table" :loading="app.loading"
      ref="tableRef"
      @page="page"
      @onSelection="onSelection">
      <el-table-column label="餐品信息">
        <template #default="scope" >
          <template v-for="(item, index) in scope.row.foods">
            <span v-if="item.count>1">{{item.name}}x{{item.count}}</span>
            <span v-else>{{item.name}}</span>
            <span class="text-purple-600" v-if="scope.row.foods.length-1 != index">+</span>
          </template>
        </template>
      </el-table-column>
      <el-table-column label="操作" fixed="right" width="135">
        <template #default="scope">
          <el-space>
            <el-button type="info" size="mini" @click="openDetail(scope.row)">
              <i class="el-icon-view"></i>
            </el-button>
            <el-button size="mini" type="danger" :loading="app.btnLoading" @click="remove([scope.row])" icon="el-icon-delete"></el-button>
          </el-space>
        </template>
      </el-table-column>
      <template #total="scope">
        ￥{{cTotalPrice(scope.row.foods)}}
      </template>
    </v-table>
    <Detail :data="detail" :user="user" ref="detailRef" />
  </Card>
</template>

<script setup lang="ts">
import { Aorders, Auser } from "@/api";
import type { Itable, tableApi } from "@/modules/table/index.vue";
import { reactive, ref, toRefs } from "vue"
import Card from "../components/Card.vue";
import Detail from "./Detail.vue";
import type { detailApi } from "./Detail.vue";
import { ElMessageBox } from "element-plus";
import appStore from "@/store/appStore";


const app = appStore()

const table = reactive<Itable>({
  total: 0,
  columns: [
    {
      type: "selection",
      width: "50"
    },
    {
      prop: "number",
      label: "订单编号"
    },
    {
      prop: "dNumber",
      label: "桌号"
    },
    {
      prop: "createTime",
      label: "下单时间"
    },
    {
      prop: "total",
      label: "总计",
      type: "other"
    }
  ],
  data: [],
})

const obj = reactive({
  deleteDisabled: true,
  selections: [],
})

const param = reactive({
  visible: true,
  uid: "",
  number: ""
})

const detail = ref()
const user = ref()
const tableRef = ref({} as tableApi)
const detailRef = ref({} as detailApi)
const paramRef = ref()

function reset() {
  paramRef.value.resetFields()
  tableRef.value.reload()
}

function page(pageNum: number, pageSize: number) {
  app.showLoading()
  Aorders.page({urlParam: `/${pageNum}/${pageSize}`, uid: param.uid, number: param.number}).then(res => {
    table.total = res.data.total
    table.data = res.data.list
  })
}

function onSelection(val: any) {
  obj.deleteDisabled = val.length == 0
  obj.selections = val
}

function openDetail(val: any) {
  detail.value = val
  Auser.getById({uid: detail.value.uid}).then(res => {
    user.value = res.data
    detailRef.value.visible = true
  })
}

function remove(val: Iorders[]) {
  ElMessageBox.confirm("确认删除?").then(() => {
    let ids = val.map(item => item.id)
    app.showBtnLoading()
    Aorders.remove(ids).then(res => {
      tableRef.value.reload()
    })
  })
}

function cTotalPrice(val: Ifood[]) {
  let totalPrice = 0
  val.forEach(item => {
    if (!item.count) item.count = 1
    totalPrice += item.price*item.count
  })
  return totalPrice
}

</script>

<style lang="scss" scoped>

.el-space {
  margin-bottom: 10px;
}

</style>
<template>
  <Card>
    <el-space :size="20">
      <el-button size="mini" icon="el-icon-refresh" @click="tableRef.reload">刷新</el-button>
      <el-button size="mini" icon="el-icon-delete" type="danger" :loading="state.user.btnLoading" @click="remove(obj.selections)" :disabled="obj.deleteDisabled">删除</el-button>
    </el-space>
    <v-table :data="data" :total="total" :loading="state.user.loading" :columns="columns"
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
      <el-table-column label="总计">
        <template #default="scope" >
          ￥{{cTotalPrice(scope.row.foods)}}
        </template>
      </el-table-column>
      <el-table-column label="操作" fixed="right" width="135">
        <template #default="scope">
          <el-space>
            <el-button type="info" size="mini" @click="openDetail(scope.row)">
              <i class="el-icon-view"></i>
            </el-button>
            <el-button size="mini" type="danger" :loading="state.user.btnLoading" @click="remove([scope.row])" icon="el-icon-delete"></el-button>
          </el-space>
        </template>
      </el-table-column>
    </v-table>
    <Detail :data="detail" :user="user" ref="detailRef" />
  </Card>
</template>

<script setup lang="ts">
import { Aorders, Auser } from "@/api";
import type { Itable, tableApi } from "@/modules/table/index.vue";
import { useStore } from "@/store";
import { reactive, ref, toRefs } from "vue"
import Card from "../components/Card.vue";
import Detail from "./Detail.vue";
import type { detailApi } from "./Detail.vue";
import { ElMessageBox } from "element-plus";


const { state, commit } = useStore()

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
  ],
  data: [],
})

const obj = reactive({
  deleteDisabled: true,
  selections: [],
})

const detail = ref()
const user = ref()
const tableRef = ref({} as tableApi)
const detailRef = ref({} as detailApi)

function page(pageNum: number, pageSize: number) {
  commit("user/showLoading")
  Aorders.page({urlParam: `/${pageNum}/${pageSize}`}).then(res => {
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

const { columns, data, total } = toRefs(table)
</script>

<style lang="scss" scoped>

.el-space {
  margin-bottom: 10px;
}

</style>
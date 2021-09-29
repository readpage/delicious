<template>
  <Card>
    <el-space :size="20">
      <el-button size="mini" icon="el-icon-refresh" @click="tableRef.reload">刷新</el-button>
    </el-space>
    <v-table :data="data" :total="total" :loading="state.user.loading" :columns="columns"
      ref="tableRef"
      @page="page"
      @onSelection="onSelection">
      <el-table-column label="操作" fixed="right" width="135">
        <template #default="scope">
          <el-space>
            <el-button size="mini" type="primary" icon="el-icon-edit" @click="openForm(scope.row)"></el-button>
            <el-button size="mini" type="danger" icon="el-icon-delete"></el-button>
          </el-space>
        </template>
      </el-table-column>
    </v-table>
  </Card>
</template>

<script setup lang="ts">
import { Aorders } from "@/api";
import type { Itable, tableApi } from "@/modules/table/index.vue";
import { useStore } from "@/store";
import { reactive, ref, toRefs } from "vue"
import Card from "../components/Card.vue";

const { state, commit } = useStore()

const obj = reactive<Itable>({
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
      prop: "createTime",
      label: "创建时间"
    },
    {
      prop: "updateTime",
      label: "修改时间"
    },
    {
      prop: "version",
      label: "版本"
    }
  ],
  data: []
})
const tableRef = ref({} as tableApi)

function openForm(val: any) {
  console.log(val);
}

function onSelection(val: any) {
  console.log(val);
}

function page(pageNum: number, pageSize: number) {
  commit("user/showLoading")
  Aorders.page({urlParam: `/${pageNum}/${pageSize}`}).then(res => {
    obj.total = res.data.total
    obj.data = res.data.list
  })
}

const { columns, data, total } = toRefs(obj)
</script>

<style lang="scss" scoped>

.el-space {
  margin-bottom: 10px;
}

</style>
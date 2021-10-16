<template>
  <Card>
    <el-space>
      <el-button size="mini" icon="el-icon-refresh" @click="tableRef.reload">刷新</el-button>
      <el-button size="mini" icon="el-icon-plus" type="primary" @click="openForm()">新增</el-button>
      <el-button size="mini" icon="el-icon-edit" type="success" @click="openForm(obj.selections[0])" :disabled="obj.editDisabled">修改</el-button>
      <el-button size="mini" icon="el-icon-delete" type="danger" :loading="state.user.btnLoading" @click="remove(obj.selections)" :disabled="obj.deleteDisabled">删除</el-button>
    </el-space>
    <v-table ref="tableRef" :loading="state.user.loading"
      :data="data"
      :total="total"
      :columns="columns"
      @page="page"
      @onSelection="onSelection">
      <el-table-column label="操作" fixed="right" width="135">
        <template #default="scope">
          <el-space>
            <el-button size="mini" type="primary" icon="el-icon-edit" @click="openForm(scope.row)"></el-button>
            <el-button size="mini" type="danger" icon="el-icon-delete" :loading="state.user.btnLoading" @click="remove([scope.row])"></el-button>
          </el-space>
        </template>
      </el-table-column>
    </v-table>
    <Form :msg="form.msg" :data="form.data" ref="formRef" @submit="submit" />
  </Card>
</template>

<script setup lang="ts">
import { Adesk } from "@/api";
import type { Itable, tableApi } from "@/modules/table/index.vue";
import { useStore } from "@/store";
import { reactive, ref, toRefs } from "vue"
import Card from "../components/Card.vue";
import Form from "./components/Form.vue";
import type { formApi } from "./components/Form.vue";
import { isEmpty } from "lodash";
import { ElMessageBox } from "element-plus";

const { state, commit } = useStore()

const table = reactive<Itable>({
  columns: [
    {
      type: "selection",
      width: "50"
    },
    {
      label: "桌号",
      prop: "number"
    },
    {
      label: "二维码",
      prop: "img",
      type: "img"
    },
    {
      label: "创建时间",
      prop: "createTime",
    },
    {
      label: "修改时间",
      prop: "updateTime",
    },
    {
      label: "版本",
      prop: "version"
    }
  ],
  data: [],
  total: 0,
})

const form = reactive({
  data: {} as Idesk,
  msg: ""
})
const obj = reactive({
  editDisabled: true,
  deleteDisabled: true,
  selections: []
})

const formRef = ref({} as formApi)
const tableRef = ref({} as tableApi)

function page(pageNum: number, pageSize: number) {
  commit("user/showLoading")
  Adesk.page({urlParam: `/${pageNum}/${pageSize}`}).then(res => {
    table.data = res.data.list
    table.total = res.data.total
  })
}

function onSelection(val: any) {
 obj.editDisabled = val.length != 1
 obj.deleteDisabled = val.length == 0
 obj.selections = val
}

function openForm(val = {} as Idesk) {
  form.msg = isEmpty(val) ? "添加桌号": "修改桌号"
  form.data = JSON.parse(JSON.stringify(val))
  formRef.value.visible = true
}

const { data, total, columns } = toRefs(table)

async function submit(val: Idesk) {
  if (val.id) {
    await Adesk.update(val)
  } else {
    await Adesk.save({urlParam: `/${val.number}`})
  }
  formRef.value.visible = false
  tableRef.value.reload()
}

function remove(val: Idesk[]) {
  ElMessageBox.confirm("确认删除?").then(() => {
    let ids = val.map(item => item.id)
    Adesk.remove(ids).then(res => {
      tableRef.value.reload()
    })
  })
}

</script>

<style lang="scss" scoped>

.el-space {
  margin-bottom: 10px;
}
</style>
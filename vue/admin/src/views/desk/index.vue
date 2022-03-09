<template>
  <Card>
    <el-form v-show="param.visible" :model="param" ref="form2Ref" :inline="true">
      <el-form-item label="桌号" prop="number">
        <el-input size="mini" v-model="param.number" placeholder="请输入桌号" clearable></el-input>
      </el-form-item>
      <el-form-item>
        <v-btn name="search" type="info" @click="tableRef.reload">搜索</v-btn>
        <v-btn name="reset" @click="reset">重置</v-btn>
      </el-form-item>
    </el-form>
    
    <div class="flex justify-between">
      <div class="space-x-2.5 mb-2.5">
        <el-button size="mini" icon="el-icon-plus" type="primary" @click="openForm()">新增</el-button>
        <el-button size="mini" icon="el-icon-edit" type="success" @click="openForm(obj.selections[0])" :disabled="obj.editDisabled">修改</el-button>
        <el-button size="mini" icon="el-icon-delete" type="danger" :loading="app.btnLoading" @click="remove(obj.selections)" :disabled="obj.deleteDisabled">删除</el-button>
      </div>
      <div>
        <el-tooltip :content="param.visible ? '隐藏搜索': '显示搜索'" placement="top"><el-button size="mini" icon="el-icon-search" @click="param.visible = !param.visible" circle></el-button></el-tooltip>
        <el-tooltip content="刷新" placement="top"><el-button size="mini" icon="el-icon-refresh" circle @click="tableRef.reload"></el-button></el-tooltip>
      </div>
    </div>
    <v-table ref="tableRef" :loading="app.loading"
      :table="table"
      @page="page"
      @onSelection="onSelection">
      <el-table-column label="操作" fixed="right" width="135">
        <template #default="scope">
          <el-space>
            <el-button size="mini" type="primary" icon="el-icon-edit" @click="openForm(scope.row)"></el-button>
            <el-button size="mini" type="danger" icon="el-icon-delete" :loading="app.btnLoading" @click="remove([scope.row])"></el-button>
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
import { reactive, ref, toRefs, watch } from "vue"
import Card from "../components/Card.vue";
import Form from "./components/Form.vue";
import type { formApi } from "./components/Form.vue";
import { isEmpty } from "lodash";
import { ElMessageBox } from "element-plus";
import appStore from "@/store/appStore";

const app = appStore()
const param = reactive({
  number: "",
  visible: true
})

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
const form2Ref = ref()

function reset() {
  form2Ref.value.resetFields()
  tableRef.value.reload()
}

function page(pageNum: number, pageSize: number) {
  app.showLoading()
  Adesk.page({urlParam: `/${pageNum}/${pageSize}`, number: param.number}).then(res => {
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
    app.showBtnLoading()
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
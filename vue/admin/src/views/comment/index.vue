<template>
  <Card>
    <el-form v-show="param.visible" :model="param" ref="paramRef" :inline="true">
      <el-form-item label="用户昵称" prop="appname">
        <el-input size="mini" v-model="param.appname" placeholder="请输入用户昵称" clearable></el-input>
      </el-form-item>
      <el-form-item label="类型" prop="state">
        <el-select v-model="param.state" size="mini" placeholder="请选择类型" clearable>
          <el-option v-for="item in param.options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item>
        <v-btn name="search" type="info" @click="reload">搜索</v-btn>
        <v-btn name="reset" @click="reset">重置</v-btn>
      </el-form-item>
    </el-form>
    <div class="flex justify-between">
      <div class="space-x-2.5 mb-2.5">
        <v-btn name="delete" :disabled="obj.deleteDisabled" @click="remove(obj.selections)">删除</v-btn>
      </div>
      <div>
        <el-tooltip :content="param.visible ? '隐藏按钮' : '显示按钮' " placement="top">
          <v-btn name="search" circle @click="param.visible = !param.visible"></v-btn>
        </el-tooltip>
        <el-tooltip content="刷新" placement="top">
          <v-btn name="refresh" circle @click="tableRef.reload"></v-btn>
        </el-tooltip>
      </div>
    </div>
    <v-table ref="tableRef"
      :table="table"
      :loading="app.loading"
      @page="page"
      @onSelection="onSelection">
      <template #state="scope">
        <el-switch v-model="scope.row.state" @click.native="onSwitch(scope.row)" :loading="app.btnLoading" />
      </template>
      <el-table-column label="操作" fixed="right" width="135">
        <template #default="scope">
          <el-space>
            <v-btn name="delete" :loading="app.btnLoading" @click="remove([scope.row])"></v-btn>
          </el-space>
        </template>
      </el-table-column>
    </v-table>
  </Card>
</template>

<script setup lang="ts">
import { Acomment } from "@/api";
import type { Itable, tableApi } from "@/modules/table/index.vue";
import appStore from "@/store/appStore";
import { ElMessageBox } from "element-plus";
import { nextTick, reactive, ref } from "vue"
import Card from "../components/Card.vue";

const app = appStore()

const param = reactive({
  visible: true,
  appname: "",
  state: null,
  options: [
    {
      label: "开启",
      value: 1
    },
    {
      label: "禁用",
      value: 0
    }
  ]
})

const table = reactive<Itable>({
  columns: [
    {
      type: "selection",
      width: "50"
    },
    {
      label: "用户昵称",
      prop: "appname"
    },
    {
      label: "内容",
      prop: "content"
    },
    {
      label: "状态",
      prop: "state",
      type: "other"
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

const obj = reactive({
  deleteDisabled: true,
  selections: []
})

const tableRef = ref({} as tableApi)

function page(pageNum: number, pageSize: number) {
  app.showLoading()
  Acomment.page({urlParam: `/${pageNum}/${pageSize}`, state: param.state, appname: param.appname}).then(res => {
    table.data = res.data.list
    table.total = res.data.total
  })
}

function onSwitch(val: any) {
  let message = "你确定要" + (val.state ? "启用" : "警用") + val.appname + "用户评论吗?"
  ElMessageBox.confirm(message).then(res => {
    app.showBtnLoading()
    Acomment.update({state: val.state, id: val.id}).catch(() => {
      val.state = !val.state
    })
  }).catch(() => {
    val.state = !val.state
  })
}

const paramRef = ref()
function reset() {
  paramRef.value.resetFields()
  tableRef.value.reload()
}

function reload() {
  tableRef.value.reload()
}

function submit() {
  console.log("submit");
}

function onSelection(val: any) {
  obj.deleteDisabled = val.length == 0
  obj.selections = val
}

function remove(val: Icomment[]) {
  ElMessageBox.confirm("确认删除?").then(() => {
    app.showLoading()
    let ids = val.map(item => item.id)
    Acomment.remove(ids).then(res => {
      tableRef.value.reload()
    })
  })
}
</script>

<style lang="scss" scoped>

</style>
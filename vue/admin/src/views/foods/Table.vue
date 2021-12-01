<template>
  <div class="cl-table">
    <el-form v-show="param.visible" :model="param" ref="paramRef" :inline="true">
      <el-form-item label="餐品名称" prop="name">
        <el-input size="mini" v-model="param.name" clearable placeholder="请输入餐品名称"></el-input>
      </el-form-item>
      <el-form-item label="餐品类型" prop="type">
        <el-select v-model="param.type" size="mini" placeholder="请选择餐品类型" clearable>
          <el-option 
            v-for="item in param.options"
            :key="item"
            :value="item">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button size="mini" type="info" icon="el-icon-search" @click="search">搜索</el-button>
        <el-button size="mini" type="warning" icon="el-icon-refresh-left" @click="reset">重置</el-button>
      </el-form-item>
    </el-form>

    <div class="flex justify-between">
      <div class="space-x-2.5 mb-2.5">
        <el-button type="primary" size="mini" icon="el-icon-plus" @click="openForm">新增</el-button>
        <el-button size="mini" type="success" icon="el-icon-edit" 
          @click="openForm(data.multipleSelection[0])" :disabled="data.editDisabled">
          修改
        </el-button>
        <el-button size="mini" type="danger" icon="el-icon-delete" :loading="state.user.btnLoading" 
          @click="remove(data.multipleSelection)" :disabled="data.deleteDisabled">
          删除
        </el-button>
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

    <el-table :data="foods" stripe
      ref="tableRef"
      :header-cell-style="{ background: '#f5f7fa', color: '#606266' }"
      max-height="500"
      @selection-change="handleSelectionChange"
      v-loading="state.user.loading"
      element-loading-text="拼命加载中"
      element-loading-spinner="el-icon-loading">
      <el-table-column type="selection" width="50"></el-table-column>
      <el-table-column label="名称" prop="name" show-overflow-tooltip></el-table-column>
      <el-table-column label="图片" prop="img" width="120">
        <template #default="scope">
          <el-image :src="scope.row.img" style="height: 58px" :preview-src-list="[scope.row.img]" fit="cover"></el-image>
        </template>
      </el-table-column>
      <el-table-column label="价格" prop="price" width="80"></el-table-column>
      <el-table-column label="类型" prop="type"></el-table-column>
      <el-table-column label="原料" prop="material"></el-table-column>
      <el-table-column label="内容" prop="content"></el-table-column>
      <el-table-column label="创建时间" prop="createTime" width="160"></el-table-column>
      <el-table-column label="修改时间" prop="updateTime" width="160"></el-table-column>
      <el-table-column label="操作" fixed="right" width="135">
        <template #default="scope">
          <el-space>
            <el-button size="mini" type="primary" icon="el-icon-edit" @click="openForm(scope.row)"></el-button>
            <el-button size="mini" type="danger" icon="el-icon-delete" :loading="state.user.btnLoading" @click="remove([scope.row])"></el-button>
          </el-space>
        </template>
      </el-table-column>
    </el-table>
    <el-pagination layout="total, sizes, pre, pager, next, jumper"
      small :total="total" :page-sizes="[5, 10, 20, 40]"
      :page-size="data.pageSize"
      background
      @current-change="handleCurrentChange"
      @size-change="handleSizeChange"
    ></el-pagination>
    <Form :msg="data.msg" :food="data.food" ref="formRef" @submit="save" />
  </div>
</template>

<script setup lang="ts">
import { Afood } from "@/api"
import { useStore } from "@/store"
import { ElMessageBox } from "element-plus"
import { reactive, ref } from "vue"
import Form from "./Form.vue"

const { state, commit } = useStore()

interface Props {
  foods: Ifood[],
  total: number,
}
const props = defineProps<Props>()

const data = reactive({
  total: 0,
  pageSize: 5,
  pageNum: 1,
  food: {} as Ifood,
  msg: "添加餐品",
  editDisabled: true,
  deleteDisabled: true,
  multipleSelection: [],
})

const param = reactive({
  visible: true,
  name: "",
  type: "",
  options: ["热菜", "凉菜", "主食", "小吃", "西餐", "烘焙", "饮品"],
})

const formRef = ref()
const tableRef = ref()
const paramRef = ref()


const emit = defineEmits(["page", "save", "remove", "param"])

function search() {
  emit("param", param)
}

function reset() {
  paramRef.value.resetFields()
  reload()
}

function handleSizeChange(val: number) {
  data.pageSize = val
  emit("page", data)
}

function handleCurrentChange(val: number) {
  data.pageNum = val
  emit("page", data)
}

function handleSelectionChange(val: any) {
  data.editDisabled = val.length != 1
  data.deleteDisabled = val.length == 0
  
  data.multipleSelection = val
}

function openForm(val: any) {
  formRef.value.visible = true
  data.food = JSON.parse(JSON.stringify(val))
  let img = data.food.img
  if (img) {
    data.food.imgList = [{url: img}]
  } else {
    data.food.imgList = []
  }
}

function closeForm() {
  formRef.value.visible = false
  reload()
}

function save() {
  commit("user/btnLoading")
  emit("save", data.food)
}
function remove(val: Ifood[]) {
  ElMessageBox.confirm("确认删除?")
  .then(() => {
    let ids = val.map(item => {
      return item.id
    })
    commit("user/btnLoading")
    emit("remove", ids)
  })
}

function reload() {
  emit("page", data)
  if (tableRef.value) {
    tableRef.value.clearSelection()
  }
}
reload()

export interface Api {
  closeForm: Function
}
defineExpose({
  closeForm
})

</script>

<style lang="scss" scoped>

.cl-table {
  padding: 10px;
  .el-space, .el-table {
    margin-bottom: 10px;
  }

}

</style>
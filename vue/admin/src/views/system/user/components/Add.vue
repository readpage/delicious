<template>
  <el-button type="primary" size="mini" icon="el-icon-plus" @click="visible=true">新增</el-button>
  <el-dialog
    title="添加用户"
    v-model="visible"
    @close="handleClosed"
    :before-close="handleClose"
    >
    <Form ref="form" />
    <template #footer>
      <el-button type="primary" size="small" @click="add">确定</el-button>
      <el-button size="small" @click="visible=false">取消</el-button>
    </template> 
  </el-dialog>
  
</template>

<script setup lang="ts">
import { ElMessageBox } from "element-plus"
import { provide, reactive, ref } from "vue"
import Form from "./Form.vue"

const visible = ref(false)

function handleClose(done: any) {
  ElMessageBox.confirm("确认关闭?")
    .then(() => {
      done()
    })
}

const form = ref()
function handleClosed() {
  form.value.handleClosed()
}

function add() {
  form.value.add()
}

const data = ref({
  username: "",
  nickname: "",
  password: "",
  roles: [],
  phone: "",
  email: "",
  status: true,
})
provide("data", data)
</script>

<style lang="scss" scoped>

</style>
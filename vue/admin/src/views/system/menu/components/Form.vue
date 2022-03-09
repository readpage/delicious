<template>
  <el-dialog
    :title="msg"
    v-model="visible"
    @close="handleClose"
    :before-close="beforeClose">
    <el-form :model="form" ref="formRef" :rules="rules" label-width="80px" size="small">
      <el-form-item label="节点类型">
        <el-radio-group v-model="form.type">
          <el-radio :label="0">目录</el-radio>
          <el-radio :label="1">菜单</el-radio>
          <el-radio :label="2">权限</el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="节点名称" prop="title">
        <el-input v-model="form.title" placeholder="输入节点名称" clearable></el-input>
      </el-form-item>
      <el-form-item label="上级节点" prop="parentId">
        <Tree :id="form.parentId" @updParent="updParent" />
      </el-form-item>
      <el-form-item v-show="form.type == 1" label="文件路径" prop="component">
        <File :component="form.component" @updComponent="updComponent" />
      </el-form-item>
      <el-form-item label="路由地址" prop="path">
        <el-input v-model="form.path" placeholder="/system/xxx" clearable></el-input>
      </el-form-item>
      <el-form-item v-show="form.type != 2" label="节点图标" prop="icon">
        <Icons :icon="form.icon" @updIcon="updIcon" />
      </el-form-item>
      <el-form-item label="排序号" prop="number">
        <el-input-number style="width: 100%" v-model="form.orderNum" controls-position="right" :min="0"></el-input-number>
      </el-form-item>
    </el-form>
    <template #footer>
      <el-button type="primary" size="mini" :loading="app.btnLoading" @click="submit">确定</el-button>
      <el-button size="mini" @click="visible=false">取消</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import appStore from "@/store/appStore"
import { menuForm, menuFormKey } from "@/symbols/menu"
import { ElMessageBox } from "element-plus"
import { inject, reactive, ref, toRefs } from "vue"
import File from "./File.vue"
import Icons from "./Icons.vue"
import Tree from "./Tree.vue"

const props = defineProps({
  msg: String,
})

const form = inject(menuFormKey, menuForm)

const app = appStore()

const visible = ref(false)

const rules = reactive({
  title: { required: true, message: "请输入节点名称" },
  path: { required: true, tmessage: "请输入路由地址" },
})


function updParent(val: any) {
  form.value.parentId = val.id
}

function updComponent(val: any) {
  form.value.component = val
}

function updIcon(val: any) {
  form.value.icon = val
}

const formRef = ref()
function handleClose() {
  formRef.value.resetFields()
}

function beforeClose(done: any) {
  ElMessageBox.confirm("确认关闭?")
    .then(() => {
      done()
    })
}

const emit = defineEmits(["submit"])
function submit() {
  formRef.value.validate((valid: any) => {
    if (valid) {
      app.showBtnLoading()
      emit("submit", form.value)
    }
  })
}

defineExpose({
  visible,
})
</script>

<style lang="scss" scoped>

</style>
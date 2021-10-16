<template>
  <el-dialog
    :title="msg"
    v-model="visible"
    @close="handleClose"
    :before-close="beforeClose">
    <el-form :model="food" ref="formRef" :rules="rules" label-width="80px" size="small">
      <el-form-item label="图片" prop="img">
        <v-upload ref="uploadRef" action="/api/file/upload" :file-list="food.imgList" @success="success" @updImg="updImg"></v-upload>
      </el-form-item>
      <el-form-item label="名称" prop="name">
        <el-input v-model="food.name" placeholder="请输入名称" clearable></el-input>
      </el-form-item>
      <el-form-item label="价格" prop="price">
        <el-input v-model="food.price" placeholder="请输入价格" clearable></el-input>
      </el-form-item>
    </el-form>
    <template #footer>
      <el-button type="primary" size="small" :loading="state.user.btnLoading" @click="submit">确定</el-button>
      <el-button size="small" @click="visible=false">取消</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import { useStore } from "@/store"
import { ElMessageBox } from "element-plus"
import { computed, mergeProps, onMounted, reactive, ref, watchEffect } from "vue"


interface Props {
  msg: string
  food: Ifood
}

const props = withDefaults(defineProps<Props>(), {})

const { state } = useStore()

const formRef = ref()
const uploadRef = ref()
const visible = ref(false)

const rules = reactive({
  name: { required: true, message: "请输入名称"},
  price: { required: true, message: "请输入价格"}
})

const emit = defineEmits(["submit"])

function updImg(val: any) {
  props.food.imgList = val
}

function handleClose() {
  uploadRef.value.clearFiles()
  formRef.value.resetFields()
}

function success(val: any) {
  props.food.img = val.data
}

function beforeClose(done: any) {
  ElMessageBox.confirm("确认关闭?")
    .then(() => {
      done()
    })
}

function submit() {
  formRef.value.validate((valid: any) => {
    if (valid) {
      emit("submit")
    }
  })
}

defineExpose({
  visible
})

</script>

<style lang="scss">


</style>
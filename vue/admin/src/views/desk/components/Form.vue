<template>
  <el-dialog
    :title="msg"
    v-model="visible"
    :before-close="beforeClose">
    <el-form :model="data" ref="formRef" :rules="rules" label-width="80px" size="small">
      <el-form-item label="桌号" prop="number">
        <el-input v-model="data.number" placeholder="请输入桌号" clearable></el-input>
      </el-form-item>
    </el-form>
    <template #footer>
      <el-button type="primary" size="small" :loading="app.btnLoading" @click="submit">确定</el-button>
      <el-button size="small" @click="visible=false">取消</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import appStore from "@/store/appStore"
import { ElMessageBox } from "element-plus"
import { computed, mergeProps, onMounted, reactive, ref, watchEffect } from "vue"


interface Props {
  msg: string
  data: Idesk
}
const props = withDefaults(defineProps<Props>(), {})

const app = appStore()

const formRef = ref()
const visible = ref(false)

const rules = reactive({
  number: { required: true, message: "请输入桌号"},
})

const emit = defineEmits(["submit"])


function beforeClose(done: any) {
  ElMessageBox.confirm("确认关闭?")
    .then(() => {
      done()
    })
}

function submit() {
  formRef.value.validate((valid: any) => {
    if (valid) {
      app.showBtnLoading()
      emit("submit", props.data)
    }
  })
}

export interface formApi {
  visible: boolean
}
defineExpose({
  visible
})

</script>

<style lang="scss">


</style>
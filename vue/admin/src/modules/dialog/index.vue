<template>
  <el-dialog :title="title" v-model="visible"
    :before-close="beforeClose">
    <slot></slot>
    <template v-if="footer" #footer>
      <el-button type="primary" size="small" :loading="app.btnLoading" @click="emit('submit')">确定</el-button>
      <el-button size="small" @click="visible=false">取消</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import appStore from "@/store/appStore"
import { ElMessageBox } from "element-plus"
import { ref } from "vue"

interface propsApi {
  title?: string
  footer?: boolean
}
const props = defineProps<propsApi>()

const app = appStore()

const visible = ref(false)

const emit = defineEmits(["submit"])

function beforeClose(done: any) {
  if (props.footer) {
    ElMessageBox.confirm("确认关闭?")
    .then(() => {
      done()
    })
  } else {
    done()
  }
}

export interface dialogApi {
  visible: boolean
}
defineExpose({
  visible
})

</script>

<style lang="scss" scoped>

</style>
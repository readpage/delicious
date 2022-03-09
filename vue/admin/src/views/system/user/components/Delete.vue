<template>
  <el-button type="danger" size="mini" icon="el-icon-delete" :disabled="disable" @click="onDelete">{{props.msg}}</el-button>
</template>

<script setup lang="ts">
import { Auser } from "@/api"
import { ElMessageBox } from "element-plus"
import { inject, ref } from "vue"
import type { Ref } from "vue"
import appStore from "@/store/appStore"

const props = defineProps({
  disable: Boolean,
  msg: String,
})

const uids = inject<Ref<number[]>>("uids", ref<number[]>([]))
const reload = inject<Function>("reload", Function)
const app = appStore()

const emit = defineEmits(["onDelete"])
function onDelete() {
  ElMessageBox.confirm("确认删除?")
  .then(() => {
    emit("onDelete")
    app.showBtnLoading()
    Auser.del({urlParam: `/${uids.value}`}).then(res => {
      reload()
    })
  })
}
</script>

<style lang="scss" scoped>

</style>
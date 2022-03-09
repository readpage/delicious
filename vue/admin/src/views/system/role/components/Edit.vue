<template>
  <el-button size="mini" :disabled="disabled" :type="props.type" icon="el-icon-edit" @click="onUpdate">{{props.msg}}</el-button>
  <Form msg="修改用户" ref="form" @submit="submit" />
</template>

<script setup lang="ts">
import { Arole } from "@/api"
import appStore from "@/store/appStore"
import { role } from "@/symbols"
import { isEmpty } from "lodash"
import { inject, ref } from "vue"
import Form from "./Form.vue"

const props = defineProps({
  type: String,
  msg: String,
  disabled: Boolean,
})

const app = appStore()
const reload = inject<Function>("reload", Function)

const form = ref()
const emit = defineEmits(["onUpdate"])
function onUpdate() {
  emit("onUpdate")
  form.value.visible = true
}

function submit(val: IroleForm) {
  app.showBtnLoading()
  Arole.update({urlParam: `/${val.menuIdList}`, data: val.role}).then(res => {
    form.value.visible = false
    reload()
  })
}

</script>

<style lang="scss" scoped>

</style>
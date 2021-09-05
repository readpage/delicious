<template>
  <el-button size="mini" :disabled="disabled" :type="props.type" icon="el-icon-edit" @click="onUpdate">{{props.msg}}</el-button>
  <Form msg="修改用户" ref="form" @submit="submit" />
</template>

<script setup lang="ts">
import { Arole } from "@/api"
import { useStore } from "@/store"
import { role } from "@/symbols"
import { isEmpty } from "lodash"
import { defineEmit, inject, ref } from "vue"
import Form from "./Form.vue"

const props = defineProps({
  type: String,
  msg: String,
  disabled: Boolean,
})
const { commit } = useStore()
const reload = inject<Function>("reload", Function)

const form = ref()
const emit = defineEmit(["onUpdate"])
function onUpdate() {
  emit("onUpdate")
  form.value.visible = true
}

function submit(val: IroleForm) {
  commit("user/btnLoading")
  Arole.update({urlParam: `/${val.menuIdList}`, ...val.role}).then(res => {
    form.value.visible = false
    reload()
  })
}

</script>

<style lang="scss" scoped>

</style>
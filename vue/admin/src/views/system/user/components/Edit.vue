<template>
  <el-button :disabled="props.disabled" :type="props.type" size="mini" :icon="props.icon" @click="open">{{props.msg}}</el-button>
  <Form msg="修改用户" ref="form" @submit="submit" />
</template>

<script setup lang="ts">
import { Auser } from "@/api/modules/user"
import { useStore } from "@/store"
import { defineEmit, inject, ref } from "vue"
import Form from "./Form.vue"

const props = defineProps({
  type: String,
  icon: String,
  msg: String,
  disabled: Boolean,
})
const reload = inject<Function>("reload", Function)

const { commit } = useStore()

const form = ref()
const emit = defineEmit(["open"])
function open() {
  emit("open")
  delete form.value.rules.password
  form.value.visible = true
}

function submit(val: IuserForm) {
  let data = JSON.parse(JSON.stringify(val))
  const roles = val.roles.map(item => {
    return {"id": item}
  })
  data.roles = roles
  commit("user/btnLoading")
  Auser.update(data).then(res => {
    form.value.visible = false
    reload()
  })
}

</script>

<style lang="scss" scoped>

</style>
<template>
  <el-button type="primary" size="mini" icon="el-icon-plus" @click="open">新增</el-button>
  <Form msg="添加用户" ref="form" @submit="submit" />
</template>

<script setup lang="ts">
import { Auser } from "@/api"
import { useStore } from "@/store"
import { IuserFormKey, userForm } from "@/symbols"
import { inject, provide, ref } from "vue"
import Form from "./Form.vue"

const reload = inject<Function>("reload", Function)
const form = ref()
function open() {
  form.value.visible = true
}

const { commit } = useStore()
function submit(val: IuserForm) {
  let data = Object.assign({}, val) as any
  const roles = val.roles.map((item) => {
    return {"id": item}
  })
  data.roles = roles
  
  commit("user/btnLoading")
  Auser.add(data).then(res => {
    form.value.visible = false
    reload()
  })
}

provide(IuserFormKey, userForm)
</script>

<style lang="scss" scoped>

</style>
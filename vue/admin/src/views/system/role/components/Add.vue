<template>
  <el-button type="primary" size="mini" icon="el-icon-plus" @click="open">新增</el-button>
  <Form msg="添加角色" ref="form" @submit="submit" />
</template>

<script setup lang="ts">
import { Arole } from "@/api";
import appStore from "@/store/appStore";
import { IroleFormKey, roleForm } from "@/symbols";
import { inject, provide, ref } from "vue"
import Form from "./Form.vue";

const app = appStore()
const reload = inject<Function>("reload", Function)

const form = ref()
function open() {
  form.value.visible = true
}

function submit(val: IroleForm) {
  app.showBtnLoading()
  Arole.add(val).then(res => {
    form.value.visible = false
    reload()
  })
}

provide(IroleFormKey, roleForm)
provide("menuIds", ref())
</script>

<style lang="scss" scoped>

</style>
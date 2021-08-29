<template>
  <el-button type="primary" size="mini" icon="el-icon-plus" @click="open">新增</el-button>
  <Form msg="添加角色" ref="form" @submit="submit" />
</template>

<script setup lang="ts">
import { Arole } from "@/api";
import { useStore } from "@/store";
import { IroleFormKey, roleForm } from "@/symbols";
import { provide, ref } from "vue"
import Form from "./Form.vue";

const { commit } = useStore()

const form = ref()
function open() {
  form.value.visible = true
}

function submit(val: IroleForm) {
  commit("user/btnLoading")
  Arole.add(val).then(res => {
    form.value.visible = false
  })
}

provide(IroleFormKey, roleForm)
</script>

<style lang="scss" scoped>

</style>
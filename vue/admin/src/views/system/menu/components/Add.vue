<template>
  <el-button type="primary" size="mini" @click="open">新增</el-button>
  <Form msg="添加菜单" ref="form" />
</template>

<script setup lang="ts">
import { ref } from "vue"
import Form from "./Form.vue";

const form = ref()
function open() {
  form.value.visible = true
}
</script>

<style lang="scss" scoped>

</style>
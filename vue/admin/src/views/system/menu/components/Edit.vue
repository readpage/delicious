<template>
  <el-button size="mini" type="primary" icon="el-icon-edit" @click="onUpdate"></el-button>
  <Form msg="修改用户" ref="form" @submit="submit" />
</template>

<script setup lang="ts">
import { Amenu } from "@/api"
import { inject, ref } from "vue"
import Form from "./Form.vue"

const reload = inject<Function>("reload", Function)

const form = ref()
const emit = defineEmits(["onUpdate"])
function onUpdate() {
  emit("onUpdate")
  form.value.visible = true
}

function submit(val: any) {
  
  Amenu.update(val).then(res => {
    form.value.visible = false
    reload()
  })
}
</script>

<style lang="scss" scoped>

</style>
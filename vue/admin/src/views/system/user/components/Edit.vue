<template>
  <el-button :type="props.type" size="mini" :icon="props.icon" @click="open">{{props.msg}}</el-button>
  <Form msg="修改用户" ref="form" @submit="submit" />
</template>

<script setup lang="ts">
import { Auser } from "@/api/modules/user"
import { defineEmit, ref } from "vue"
import Form from "./Form.vue"

const props = defineProps({
  type: String,
  icon: String,
  msg: String,
})


const form = ref()
const emit = defineEmit(["open"])
function open() {
  emit("open")
  delete form.value.rules.password
  form.value.visible = true
}

function submit(val: IuserForm) {
  console.log(val);
  form.value.visible = false
}

</script>

<style lang="scss" scoped>

</style>
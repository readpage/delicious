<template>
  <el-button :type="props.type" size="mini" :icon="props.icon" @click="handleUpdate">{{props.msg}}</el-button>
  <el-dialog
    title="修改用户"
    v-model="visible">
    <Form ref="form" />
    <template #footer>
      <el-button type="primary" size="small" @click="update">确定</el-button>
      <el-button size="small" @click="visible=false">取消</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import { defineEmit, ref } from "vue"
import Form from "./Form.vue"

const props = defineProps({
  type: String,
  icon: String,
  msg: String,
})

const visible = ref(false)

const emit = defineEmit(["handleUpdate"])
function handleUpdate() {
  emit("handleUpdate", handleUpdate)
  visible.value = true
}

const form = ref()
function update() {
  form.value.update()
}
</script>

<style lang="scss" scoped>

</style>
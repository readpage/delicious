<template>
  <el-button :type="props.type" size="mini" :icon="props.icon" @click="visible=true">{{props.msg}}</el-button>
  <el-dialog
    title="修改用户"
    v-model="visible"
    width="30%">
  </el-dialog>
  
</template>

<script setup lang="ts">
import { ref } from "vue"

const props = defineProps({
  type: String,
  icon: String,
  msg: String
})

const visible = ref(false)

</script>

<style lang="scss" scoped>

</style>
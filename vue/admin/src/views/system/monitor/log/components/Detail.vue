<template>
  <el-button type="text" @click="open">
    <i class="el-icon-view"></i>
    <span style="font-size: 12px;">详细</span>
  </el-button>
  <el-dialog
    title="操作日志详细"
    v-model="visible">
    <el-descriptions direction="vertical" :column="3" border>
      <el-descriptions-item label="操作人员">{{data.username}}</el-descriptions-item>
      <el-descriptions-item label="请求方式">{{data.requestMethod}}</el-descriptions-item>
      <el-descriptions-item label="请求地址">{{data.url}}</el-descriptions-item>
      <el-descriptions-item label="请求地址">{{data.url}}</el-descriptions-item>
      <el-descriptions-item label="浏览器">{{data.browser}}</el-descriptions-item>
      <el-descriptions-item label="操作系统">{{data.os}}</el-descriptions-item>
      <el-descriptions-item label="设备类型">{{data.deviceType}}</el-descriptions-item>
      <el-descriptions-item label="IP地址">{{data.ipAddr}}</el-descriptions-item>
      <el-descriptions-item label="地理位置">{{data.location}}</el-descriptions-item>
      <el-descriptions-item label="操作信息">{{data.msg}}</el-descriptions-item>
      <el-descriptions-item label="异常信息">{{data.error}}</el-descriptions-item>
      <el-descriptions-item label="操作方法">{{data.method}}</el-descriptions-item>
    </el-descriptions>
    <template #footer>
      <el-button size="mini" @click="visible=false">关闭</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import { defineEmit, ref, toRefs } from "vue"

const props = defineProps({
  data: {
    type: Object as () => IlogInfo,
    default: {username: ""}
  }
})
const { data } = toRefs(props)

const visible = ref(false)

const emit = defineEmit(["open"])
function open() {
  emit("open")
  visible.value = true
}

</script>

<style lang="scss" scoped>

</style>
<template>
  <el-button size="mini" icon="el-icon-delete" :disabled="disable" @click="onDelete"></el-button>
</template>

<script setup lang="ts">
import { ElMessageBox } from "element-plus";

const props = defineProps({
  disable: Boolean,
  msg: String,
})

const emit = defineEmits(["onDelete"])
function onDelete() {
  ElMessageBox.confirm("确认删除?")
  .then(() => {
    emit("onDelete")
    // commit("user/btnLoading")
    
  })
}

</script>

<style lang="scss" scoped>

</style>
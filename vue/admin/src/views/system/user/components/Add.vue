<template>
  <el-button type="primary" size="mini" icon="el-icon-plus" @click="visible=true">新增</el-button>
  <el-dialog
    title="添加用户"
    v-model="visible"
    width="30%">
    <span></span>
    <template #footer>
      <el-button type="primary" size="small" @click="save">确定</el-button>
      <el-button size="small"  @click="visible=false">取消</el-button>
    </template> 
  </el-dialog>
  
</template>

<script setup lang="ts">
import { ref } from "vue"

const visible = ref(false)

function save() {

}
</script>

<style lang="scss" scoped>

</style>
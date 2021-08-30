<template>
  <el-dialog
    :title="msg"
    v-model="visible"
    @close="">
    <el-form :model="form" ref="formRef" :rules="rules" label-width="80px" size="small">
      <el-form-item label="节点类型">
        <el-radio-group v-model="form.type">
          <el-radio :label="0">目录</el-radio>
          <el-radio :label="1">菜单</el-radio>
          <el-radio :label="2">权限</el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="节点名称">
        <el-input placeholder="输入节点名称"></el-input>
      </el-form-item>
      <el-form-item label="上级节点">
        <el-input></el-input>
      </el-form-item>
      <el-form-item v-show="form.type == 1" label="文件路径">

      </el-form-item>
      <el-form-item v-show="form.type != 2" label="节点图标">
        <Icons />
      </el-form-item>
      <el-form-item label="排序号"></el-form-item>
      <el-form-item v-show="form.type == 2" label="权限"></el-form-item>
    </el-form>
    <template #footer>
      <el-button type="primary" size="mini" @click="submit">确定</el-button>
      <el-button size="mini" @click="visible=false">取消</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import { reactive, ref } from "vue"
import Icons from "./Icons.vue"


const props = defineProps({
  msg: String,
})

const visible = ref(false)
const form = ref({
  type: 0,
  parent: "",
  icon: "",
})

const rules = reactive({})

const emit = defineEmits(["submit"])
function submit() {

}
defineExpose({
  visible,
})
</script>

<style lang="scss" scoped>

</style>
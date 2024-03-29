<template>
  <el-dialog
    :title="msg"
    v-model="visible"
    @close="handleClose"
    :before-close="beforeClose">
    <el-form :model="role" ref="formRef" :rules="rules" label-width="80px" size="small">
      <el-form-item label="角色名:" prop="name">
        <el-input v-model="role.name" placeholder="admin"></el-input>
      </el-form-item>
      <el-form-item label="昵称:" prop="nickname">
        <el-input v-model="role.nickname" placeholder="管理员"></el-input>
      </el-form-item>
      <el-form-item label="功能权限:">
        <el-input v-model="keyword" placeholder="输入关键字进行过滤" size="small" clearable></el-input>
        <div class="scrollbar">
          <el-tree :data="menu"
            v-loading="app.btnLoading"
            element-loading-text="拼命加载中"
            element-loading-spinner="el-icon-loading"
            ref="treeRef"
            :props="{label: 'title'}"
            highlight-current 
            accordion
            node-key="id"
            :default-checked-keys="checked"
            @check-change="handleCheckChange"
            :filter-node-method="filterNode"
            show-checkbox>
          </el-tree>
        </div>
      </el-form-item>
    </el-form>
    <template #footer>
      <el-button type="primary" size="small" :loading="app.btnLoading" @click="submit">确定</el-button>
      <el-button size="small" @click="visible=false">取消</el-button>
    </template>
  </el-dialog>
  
</template>

<script setup lang="ts">
import { ImenuKey, IroleFormKey, roleForm } from "@/symbols"
import { ElMessageBox } from "element-plus"
import { inject, reactive, ref, toRefs, watch } from "vue"
import type { Ref } from "vue"
import appStore from "@/store/appStore"

// props
const props = defineProps({
  msg: String,
})



// store
const app = appStore()
// inject
const menu = inject(ImenuKey)
const data = inject(IroleFormKey, roleForm)
const { role, menuIdList } = toRefs(data.value)
const checked = inject<Ref<number[]>>("menuIds", ref<number[]>([]))

// data
const visible = ref(false)
const formRef = ref()
const rules = reactive({
  name: { required: true, message: "请输入角色名"},
  nickname: { required: true, message: "请输入昵称" },
})

// emit
const emit = defineEmits(["submit"])
function submit() {
  formRef.value.validate((valid: any) => {
    if (valid) {
      emit("submit", data.value)
    }
  })
}

// function 
const treeRef = ref()
function handleClose() {
  formRef.value.resetFields()
  treeRef.value.setCheckedKeys([])
  checked.value = []
}

function beforeClose(done: any) {
  ElMessageBox.confirm("确认关闭?")
    .then(() => {
      done()
    })
}



// tree
function filterNode(val: string, data: any) {
  if (!val) return true
  // Array.prototype.includes方法返回一个布尔值，表示某个数组是否包含给定的值
  // [1, 2, 3].includes(2); // true
  return data.title.includes(val)
}
const keyword = ref("")
watch(keyword, val => {
  treeRef.value.filter(val)
})

function handleCheckChange() {
  // 选中的节点
  const checked = treeRef.value.getCheckedKeys()
  // 半选中的节点
  const halfChecked = treeRef.value.getHalfCheckedKeys()
  
  menuIdList.value = JSON.parse(JSON.stringify([...checked, ...halfChecked]))
  
}

// expose
defineExpose({
  visible,
})
</script>

<style lang="scss" scoped>
.scrollbar {
  border: 1px solid #dcdfe6;
  margin-top: 5px;
  border-radius: 3px;
  max-height: 200px;
  box-sizing: border-box;
  padding: 5px 0;
  overflow-x: hidden;
}
</style>
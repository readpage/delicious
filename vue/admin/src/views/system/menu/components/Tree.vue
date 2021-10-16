<template>
  <el-popover placement="bottom-start"
    v-model:visible="visible"
    width="500px"
    popper-class="popper-menu-tree">
    <el-input v-model="keyword" size="small" prefix-icon="el-icon-search"></el-input>
    
    <el-scrollbar height="150px">
      <el-tree :data="treeList"
        ref="treeRef"
        :props="{label: 'title'}"
        node-key="id"
        highlight-current
        accordion
        :expand-on-click-node="false"
        @current-change="onCurrentChange"
        :filter-node-method="filterNode"
        ></el-tree>
    </el-scrollbar>
    <template #reference>
      <el-input v-model="title" placeholder="请选择" clearable></el-input>
    </template>
  </el-popover>
</template>

<script setup lang="ts">
import { ImenuKey, menu } from "@/symbols";
import { deepTree } from "@/util";
import { computed, inject, ref, watch, watchEffect } from "vue"

const props = defineProps({
  id: Number,
})
const list = inject(ImenuKey, menu)
const visible = ref(false)
const treeList = computed(() => deepTree(list.value))


// 关键字
const keyword = ref("")
const checked = ref()
const title = ref()
watchEffect(() => {
  if (!props.id) {
    title.value = ""
  }
  let e = list.value.find(item => item.id == props.id)
  if (e) {
    title.value =  e.title
  }
})

// tree
function filterNode(val: string, data: any) {
  if (!val) return true
  // Array.prototype.includes方法返回一个布尔值，表示某个数组是否包含给定的值
  // [1, 2, 3].includes(2); // true
  return data.title.includes(val)
}

const treeRef = ref()
watch(keyword, val => {
  treeRef.value.filter(val)
})

const emit = defineEmits(["updParent"])
function onCurrentChange(data: any) {
  visible.value = false
  emit("updParent", data)
}
</script>

<style lang="scss">

.popper-menu-tree {
  box-sizing: border-box;

  .el-input {
    margin-bottom: 10px;
  }
}
</style>
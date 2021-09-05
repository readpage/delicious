<template>
  <el-select v-model="component" clearable placeholder="请选择">
    <el-option v-for="(item, index) in list" :key="index"
      :value="item">
    </el-option>
  </el-select>
</template>

<script setup lang="ts">
import { defineEmit, ref, watch } from "vue"

const props = defineProps({
  component: String,
})
const component = ref(props.component)
watch(() => props.component, val => {
  component.value = val
})
const emit = defineEmit(["updComponent"])
watch(component, val => {
  emit("updComponent", val)
})

// 数据列表
const list = ref(findFiles())

function findFiles() {
  const files = import.meta.globEager("/src/views/**/index.vue")
  let list:string[] = []

  for (const i in files) {
    list.push(i)
  }

  return list
}

</script>

<style lang="scss" scoped>

.el-select {
  width: 100%;
}
</style>
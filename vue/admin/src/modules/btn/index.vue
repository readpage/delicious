<template>
  <template v-if="$slots.default">
    <el-button :size="size" :type="obj.type" :icon="obj.icon"><slot></slot></el-button>
  </template>
  <template v-else>
    <el-button :size="size" :type="obj.type" :icon="obj.icon"></el-button>
  </template>
</template>

<script setup lang="ts">
import { onMounted, reactive, watch } from "vue"

interface propsApi {
  name: string
  size?: string
  type?: string
  icon?: string
}

const props = withDefaults(defineProps<propsApi>(), {
  size: "mini",
})

const obj = reactive({
  size: "",
  type: "",
  icon: ""
})

onMounted(() => {
  let name = props.name
  let size = props.size
  let type = props.type
  let icon = props.icon
  if (name == "search") {
    obj.icon = "el-icon-search"
  } else if (name == "add") {
    obj.type = "primary"
    obj.icon = "el-icon-plus"
  } else if (name == "edit") {
    obj.type = "success"
    obj.icon = "el-icon-edit"
  } else if (name == "delete") {
    obj.type = "danger"
    obj.icon = "el-icon-delete"
  } else if (name == "refresh") {
    obj.icon = "el-icon-refresh"
  } else if (name == "reset") {
    obj.type = "warning"
    obj.icon = "el-icon-refresh-left"
  } else if (name == "view") {
    obj.type = "info"
    obj.icon = "el-icon-view"
  }
  if (type) obj.type = type
  if (icon) obj.icon = icon
})


</script>

<style lang="scss" scoped>

</style>
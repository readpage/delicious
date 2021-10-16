<template>
  <el-popover
    placement="bottom-start"
    width="480px"
    v-model:visible="visible"
    popper-class="popper-menu-icon">
    <el-scrollbar height="150px">
      <div class="icon__box">
        <el-row :gutter="10">
          <el-col v-for="(item, index) in list" :key="index" :span="3" :xs="4">
            <el-button size="mini" 
              :class="{ 'is-active': item == name}"
              @click="onChange(item)">
              <i :class="item"></i>
            </el-button>
          </el-col>
        </el-row>
      </div>
    </el-scrollbar>

    <template #reference>
      <el-input placeholder="请选择" v-model="name"
        clearable></el-input>
    </template>
  </el-popover>
</template>

<script setup lang="ts">
import { iconList } from "@/hooks/theme";
import { ref, watch } from "vue"

const props = defineProps({
  icon: String,
})
// 图标列表
const list = ref(iconList)

// 已选图标
const name = ref(props.icon)
const emit = defineEmits(["updIcon"])
watch(() => props.icon, val => {
  name.value = val
})
const visible = ref(false)

function onChange(val: string) {
  visible.value = false
  emit("updIcon", val)
}
</script>

<style lang="scss" scoped>
.el-button {
  margin-bottom: 10px !important;
}
.poper-menu-icon {
  max-width: 90%;
  box-sizing: border-box;
}

.icon__box {
  overflow: hidden;
}
</style>
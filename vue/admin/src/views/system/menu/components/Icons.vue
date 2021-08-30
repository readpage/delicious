<template>
  <div>
    <el-popover
      placement="bottom-start"
      width="480px"
      trigger="click"
      popper-class="popper-menu-icon">
       <el-row :gutter="10">
        <el-col v-for="(item, index) in list" :key="index" :span="3" :xs="4">
          <el-button size="mini">
            <i :class="item"></i>
          </el-button>
        </el-col>
      </el-row>

      <template #reference>
        <el-input placeholder="请选择"></el-input>
      </template>
    </el-popover>
  </div>
</template>

<script setup lang="ts">
import { iconList } from "@/hooks/theme";
import { ref } from "vue"

const list = ref(iconList)

</script>

<style lang="scss" scoped>
.poper-menu-icon {
  max-width: 90%;
  box-sizing: border-box;
}

</style>
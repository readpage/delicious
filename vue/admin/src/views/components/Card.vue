<template>
  <div class="view">
    <el-scrollbar>
      <div class="inner">
        <slot></slot>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import {} from "vue";
</script>

<style lang="scss" scoped>
.view {
  height: 100%;
  background: #fff;
  .inner {
    padding: 10px;
  }
}
</style>

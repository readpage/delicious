<template>
  <div class="confirm-orders">
    <div class="header">
      <el-page-header @back="router.back()" content="确认订单"></el-page-header>
    </div>
  </div>
</template>

<script setup lang="ts">
import { } from "vue"
import { useRouter } from "vue-router";

const router = useRouter()
</script>

<style lang="scss" scoped>

</style>
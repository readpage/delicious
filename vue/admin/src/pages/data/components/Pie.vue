<template>
  <div class="pie">
    <v-chart :option="option"></v-chart>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue"

const option = ref({
  tooltip: {},
  legend: {
    orient: "vertical",
    left: "left",
  },
  title: {
    text: "销售额类别占比",
    left: "center"
  },
  series: {
    name: "访问来源",
    type: "pie",
    radius: "55%",
    data: [],
  }
})

</script>

<style lang="scss" scoped>

</style>
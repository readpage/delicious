<template>
  <div class="bar">
    <v-chart :loading="loading" :option="option"></v-chart>
  </div>
</template>

<script setup lang="ts">
import * as echarts from "echarts";
import { ref } from "vue";

const option = {
  title: {
    text: "柱状图",
  },
  tooltip: {},
  legend: {
    data: ["销量"],
  },
  xAxis: {
    data: ["衬衫", "羊毛衫", "雪纺衫", "裤子", "高跟鞋", "袜子"],
  },
  yAxis: {},
  series: [
    {
      name: "销量",
      type: "bar",
      data: [5, 20, 36, 10, 10, 20],
    },
  ],
};

const loading = ref(true) 

setTimeout(() => {
  loading.value = false
}, 2000);


</script>

<style lang="scss">
.v-chart {
  height: 400px;
}
</style>

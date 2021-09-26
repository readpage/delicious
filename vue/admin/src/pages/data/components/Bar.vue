<template>
  <div class="bar">
    <v-chart :loading="loading" :option="option"></v-chart>
  </div>
</template>

<script setup lang="ts">
import * as echarts from "echarts";
import { reactive, ref, watch } from "vue";

interface Props {
  data: {
    uv: number[]
    date: string[]
  }
  loading: boolean
}
const props = defineProps<Props>()

const option =reactive({
  title: {
    text: "柱状图",
  },
  color: ["#e01f54"],
  tooltip: {},
  legend: {
    data: ["销量"],
  },
  xAxis: {
    data: ["0"],
  },
  yAxis: {},
  series: {
    name: "销量",
    type: "bar",
    data: [0],
  },
})

watch(() => props.data, val => {
  option.series.data = val.uv
  option.xAxis.data = val.date
}, {deep: true})

</script>

<style lang="scss">
.v-chart {
  height: 400px;
}
</style>

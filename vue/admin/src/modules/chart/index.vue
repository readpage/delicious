<template>
  <div class="v-chart" ref="chartRef" :style="{height: height, width: width}"></div>
</template>

<script setup lang="ts">
import * as echarts from "echarts";
import { isEmpty } from "lodash";
import { onMounted, ref, watch, watchEffect } from "vue"

interface Props {
  option: {}
  loading?: boolean
  height?: string
  width?: string
}
const props = withDefaults(defineProps<Props>(), {
  loading: false,
})


const chartRef = ref()
const chart = ref<echarts.ECharts>()

watchEffect(() => {
  let newChart = chart.value
  if (newChart) {
    if (props.loading) {
      newChart.showLoading()
    } else {
      newChart.hideLoading()
    }
  }
})

watch(() => props.option, val => {
  const myChart = echarts.init(chartRef.value);
  myChart.setOption(val)
}, {deep: true})

onMounted(() => {
  const myChart = echarts.init(chartRef.value)
  chart.value = myChart
  if(!props.loading) {
    myChart.setOption(props.option)
  }
  window.addEventListener("resize", () => {
    myChart.resize()
  })
})


</script>

<style lang="scss" scoped>
  .v-chart {
    width: 100%;
    height: 300px;
  }
</style>
<template>
  <div class="v-chart" :style="{height: height}">
    <div ref="chartRef" style="height: 100%;"></div>
  </div>
</template>

<script setup lang="ts">
import * as echarts from "echarts";
import { onMounted, ref, watchEffect } from "vue"

interface Props {
  option: {},
  loading?: boolean,
  height?: string
}
const props = defineProps<Props>()


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


onMounted(() => {
  const myChart = echarts.init(chartRef.value);
  chart.value = myChart
  myChart.setOption(props.option)

  window.addEventListener("resize", () => {
    myChart.resize()
  })
})

</script>

<style lang="scss" scoped>

.v-chart {
  height: 300px
}

</style>
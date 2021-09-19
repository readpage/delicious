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
const props = withDefaults(defineProps<Props>(), {
  loading: false,
  height: "300px",
})


const chartRef = ref()
const chart = ref<echarts.ECharts>()


watchEffect(() => {
  let newChart = chart.value
  if (newChart) {
    if (props.loading) {
      newChart.showLoading()
    } else {
      newChart.setOption(props.option)
      newChart.hideLoading()
    }
  }
})

onMounted(() => {
  const myChart = echarts.init(chartRef.value);
  chart.value = myChart

  window.addEventListener("resize", () => {
    myChart.resize()
  })
})

</script>

<style lang="scss" scoped>

</style>
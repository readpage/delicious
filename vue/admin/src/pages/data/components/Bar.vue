<template>
  <div class="bar h-72">
    <v-chart ref="chart" :loading="loading" :option="bar" autoresize></v-chart>
  </div>
</template>

<script setup lang="ts">
import { IrecentKey, recentForm } from "@/symbols/rencent";
import * as echarts from "echarts";
import { inject, reactive, ref, watch } from "vue";

interface Props {
  loading: boolean
}
const props = defineProps<Props>()
const recent = inject(IrecentKey, recentForm)
const chart = ref()

const bar = {
  title: {
    text: "最近成交量",
  },
  tooltip: {
    trigger: 'axis',
    axisPointer: {
      type: 'cross',
      crossStyle: {
        color: '#999'
      }
    }
  },
  toolbox: {
    feature: {
      dataView: { show: true, readOnly: false },
      magicType: { show: true, type: ['line', 'bar'] },
      saveAsImage: { show: true }
    }
  },
  color: ["#e01f54"],
  legend: {
    data: ["销量"],
  },
  xAxis: {
    data: [],
  },
  yAxis: {},
  series: {
    name: "销量",
    type: "line",
    data: [],
  },
}

watch(() => recent.value, val => {
  chart.value.setOption({
    xAxis: {
      data: val.date
    },
    series: {
      data: val.salesCount
    }
  })
}, {deep: true})

</script>

<style lang="scss">
.v-chart {
  height: 400px;
}
</style>

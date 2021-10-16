<template>
  <div class="bar h-72">
    <v-chart :loading="loading" :option="option" autoresize></v-chart>
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

const option = ref()
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
      restore: { show: true },
      saveAsImage: { show: true }
    }
  },
  color: ["#e01f54"],
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
}

watch(() => recent.value, val => {
  bar.series.data = val.salesCount
  bar.xAxis.data = val.date
  option.value = bar
}, {deep: true})

</script>

<style lang="scss">
.v-chart {
  height: 400px;
}
</style>

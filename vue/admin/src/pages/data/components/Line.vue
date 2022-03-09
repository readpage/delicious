<template>
  <div class="line h-72">
    <v-chart ref="chart" :option="line" :loading="loading" autoresize></v-chart>
  </div>
</template>

<script setup lang="ts">
import { reactive, ref, watch } from "vue"
import line from "./data/line";

interface Props {
  data: {
    uv: number[]
    date: string[]
  }
  loading: boolean
}

const props = defineProps<Props>()

const chart = ref()

watch(() => props.data, val => {
  chart.value.setOption({
    xAxis: {
      data: val.date
    },
    series: {
      data:  val.uv
    }
  })
}, {deep: true})

</script>

<style lang="scss" scoped>

</style>
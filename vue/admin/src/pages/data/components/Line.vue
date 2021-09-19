<template>
  <div class="line">
    <v-chart :option="option" :loading="loading"></v-chart>
  </div>
</template>

<script setup lang="ts">
import { reactive, watch } from "vue"

interface Props {
  data: {
    uv: number[]
    date: string[]
  }
  loading: boolean
}

const props = defineProps<Props>()

const option = reactive({
  color: ["#2e4783"],
  xAxis: {
    type: 'category',
    data: ['0']
  },
  yAxis: {
    type: 'value'
  },
  series: {
      data: [0],
      type: 'line'
  }
})

watch(() => props.data.date, val => {
  option.xAxis.data = val
})
watch(() => props.data.uv, val => {
  option.series.data = val
})

setTimeout(() => {
  console.log(props.data.date );
  console.log(option.xAxis.data);
  console.log(option.series.data);
}, 6000);
</script>

<style lang="scss" scoped>

</style>
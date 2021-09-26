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

watch(() => props.data, val => {
  option.series.data = val.uv
  
  option.xAxis.data = val.date
}, {deep: true})

</script>

<style lang="scss" scoped>

</style>
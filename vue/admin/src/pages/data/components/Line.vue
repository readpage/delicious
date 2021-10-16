<template>
  <div class="line h-72">
    <v-chart :option="option" :loading="loading" autoresize></v-chart>
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

const option = ref()

watch(() => props.data, val => {
  line.series.data = val.uv
  line.xAxis.data = val.date
  option.value = line
}, {deep: true})

</script>

<style lang="scss" scoped>

</style>
<template>
  <div class="line">
    <v-chart :option="option"></v-chart>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue"

const option = ref({
  xAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    },
    yAxis: {
        type: 'value'
    },
    series: [{
        data: [150, 230, 224, 218, 135, 147, 260],
        type: 'line'
    }]
})
</script>

<style lang="scss" scoped>

</style>
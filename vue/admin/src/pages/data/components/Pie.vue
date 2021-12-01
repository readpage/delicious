<template>
  <div class="pie h-72">
    <v-chart :option="option" autoresize></v-chart>
  </div>
</template>

<script setup lang="ts">
import { Astatis } from "@/api";
import { ref } from "vue"

const option = ref({
    title: {
        text: '餐品分类占比',
        left: 'center'
    },
    tooltip: {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        left: 'left',
    },
    series: {
        type: 'pie',
        radius: '50%',
        data: [],
        emphasis: {
            itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        }
    }
})


Astatis.foodType().then(res => {
    const list = res.data.map((item: any) => {
        return {name: item.type, value: item.number}
    })
    option.value.series.data = list
})

</script>

<style lang="scss" scoped>
</style>
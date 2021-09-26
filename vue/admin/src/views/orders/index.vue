<template>
  <Card>
    <v-table :columns="columns"></v-table>
  </Card>
</template>

<script setup lang="ts">
import type { Itable } from "@/modules/table/index.vue";
import { reactive, toRefs } from "vue"
import Card from "../components/Card.vue";

const data = reactive<Itable>({
  columns: [
    {
      prop: "img",
      label: "图片"
    },
    {
      prop: "name",
      label: "姓名"
    }
  ]
})

const { columns } = toRefs(data)

</script>

<style lang="scss" scoped>

</style>
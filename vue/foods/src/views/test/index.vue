<template>
  <p>{{data}}</p>
</template>

<script setup lang="ts">
import { Atest } from "@/api";
import { reactive, ref } from "vue"
import { useRoute } from "vue-router";

const route = useRoute()
const id = ref()
const data = ref()

id.value = route.params.id as string

const test = ref()
Atest({urlParam: `/${id.value}.json`}).then(res => {
  data.value = res
})
</script>

<style lang="scss" scoped>

</style>
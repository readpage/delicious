<template>
  <vCount :startAmount="start" :endAmount="end" :prefix="prefix" :suffix="suffix"
  :duration="duration" :decimals="decimals"  :separator="separator" :decimalSeparator="decimalSeparator"></vCount>
</template>

<script setup lang="ts">
import { } from "vue"
import vCount from 'vue3-autocounter';

interface Props {
  start?: number
  end: number
  prefix?: string
  suffix?: string
  decimals?: number
  duration?: number
  separator?: string
  decimalSeparator?: string
}

const props = withDefaults(defineProps<Props>(), {
  start: 0,
  prefix: "",
  suffix: "",
  decimals: 0,
  duration: 2,
  separator: "",
  decimalSeparator: "."
})
</script>

<style lang="scss" scoped>

</style>
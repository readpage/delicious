<template>
  <svg class="v-icon inline" aria-hidden="true" :style="style">
    <use :xlink:href="name"></use>
  </svg>
</template>

<script setup lang="ts">
import { computed } from "vue";
import "@/assets/js/iconfont";
import { isNumber } from "@/util";

interface iconApi {
  name: string
  size?: string | number
}
const props = withDefaults(defineProps<iconApi>(), {
  size: 16
})
const style = computed(() => {
  return {
    fontSize: isNumber(props.size) ? props.size + "px" : props.size
  }
})

</script>

<style lang="scss" scoped>
.v-icon {
  width: 1em;
  height: 1em;
  vertical-align: -0.15em;
  fill: currentColor;
  overflow: hidden;
}
</style>

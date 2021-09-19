<template>
  <div class="v-lottie">
    <lottie-player class="lottie-player" :src="src"  :background="background"  :speed="speed"  :style="{width: width, height: height}" loop autoplay></lottie-player>
  </div>
</template>

<script setup lang="ts">
import { } from "vue"

interface Props {
  src: string | {}
  speed?: number
  background?: string
  width?: string
  height?: string
}

const props = withDefaults(defineProps<Props>(), {
  speed: 2.2,
  background: "transparent"
})


</script>

<style lang="scss" scoped>

</style>
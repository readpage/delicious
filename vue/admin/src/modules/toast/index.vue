<template>
  <div class="v-toast">
    <transition name="v-toast">
      <div class="v-toast__inner" v-show="visible">
        <div class="v-toast__message">
          {{message}}
        </div>
      </div>
    </transition>
  </div>
</template>

<script setup lang="ts">
import { onMounted, onUnmounted, ref } from "vue"

export interface toastApi {
  message?: string
  delay?: number
}
const props = withDefaults(defineProps<toastApi>(), {
  message: "",
  delay: 2000
})

const visible = ref(false)
onMounted(() => {
  visible.value = true
  setTimeout(() => {
    visible.value = false
  }, props.delay)
})

</script>

<style lang="scss" scoped>
.v-toast {
  position: fixed;
  z-index: 100;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  // 设置为可穿透
  pointer-events: none;
  
  &__inner {
    position: relative;
    bottom: -20%;
    padding: 8px 18px;
    border-radius: 12px;
    font-size: 14px;
    color: #fff;
    background-color: rgba(0, 0, 0, .5);
  }

  // 设置过渡效果
  &-enter-active, &-leave-active {
    transition: all .3s;
  }

  &-enter-from, &-leave-to {
    opacity: 0;
    transform: translateY(100%);
  }
}
</style>
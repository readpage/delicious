<template>
  <router-view v-if="showRouter"></router-view>
</template>

<script setup lang="ts">
import { nextTick, provide, ref, toRefs, watch } from "vue";
import { useMenu } from "./hooks/useMenu";
import { useStore } from "./store";

const showRouter = ref(true)
const { state, dispatch } = useStore()


if (!localStorage.menu) {
  dispatch("user/updMenu")
}

function reload() {
  showRouter.value = false
  nextTick(() => {
    showRouter.value = true
  })
}
provide("reload", reload)
</script>


<style lang="scss">
  * {
    padding: 0;
    margin: 0;
  }
</style>
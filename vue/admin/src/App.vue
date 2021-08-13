<template>
  <el-config-provider :locale="locale">
    <router-view v-if="showRouter"></router-view>
  </el-config-provider>
</template>

<script setup lang="ts">
import { nextTick, provide, ref, toRefs, watch } from "vue";
import { useStore } from "./store";
import { ElConfigProvider } from 'element-plus'
import zhCn from 'element-plus/lib/locale/lang/zh-cn'

const locale = zhCn
const showRouter = ref(true)
const { state, dispatch } = useStore()

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
  body {
    overflow: hidden;
  }
</style>
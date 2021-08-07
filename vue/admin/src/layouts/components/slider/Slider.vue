<template>
  <div class="app-slider">
    <div class="app-slider__logo"></div>
    <div class="app-slider__menu">
      <el-menu
        class="aside-menu"
        :default-active="$route.path"
        background-color="#304156"
        text-color="#bfcbd9"
        active-text-color="#409eff"
        router
        style="height: 100%"
        :collapse="collapse"
      >
        <MenuTree :menu="menu" />
      </el-menu>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useMenu } from "@/hooks/useMenu";
import { useStore } from "@/store";
import { computed, onMounted, reactive, ref, toRefs } from "vue"
import MenuTree from "./components/MenuTree.vue";

const { state, commit } = useStore()
const { collapse } = toRefs(state.user)
function init() {
  window.onresize= () => {
    let screenWidth = document.body.clientWidth
    if (screenWidth <= 768) {
      commit("user/updateCollapse", true)
    } 
  }
}
const menu = computed(() => {
  return state.user.menu
})
onMounted(() => {
  init()
})

</script>

<style lang="scss" scoped>
.app-slider {
  height: 100%;
  background-color: #304156;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
  &__logo {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 80px;
    cursor: pointer;
  }
  &__menu {
    .el-menu {
      border: 0;
    }
  }
}
</style>

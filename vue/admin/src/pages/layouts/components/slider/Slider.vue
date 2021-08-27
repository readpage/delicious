<template>
  <div class="app-slider">
    <div class="app-slider__logo"></div>
    <div class="app-slider__menu">
      <el-scrollbar>
        <el-menu
          :default-active="$route.path"
          background-color="#304156"
          text-color="#bfcbd9"
          active-text-color="#409eff"
          router
          :collapse="collapse"
          unique-opened
        >
        <MenuTree :menu="menu" />
      </el-menu>
      </el-scrollbar>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useStore } from "@/store";
import { getBrowser } from "@/utils";
import type { browserType } from "@/utils";
import { computed, onMounted, reactive, ref, toRefs, watchEffect } from "vue"
import MenuTree from "./components/MenuTree.vue";

const { state, commit, getters } = useStore()

const lock = {
	collapse: null as undefined,
};
const menu = computed(() => state.menu.menu)
const browser = computed<browserType>(() => getters["user/browser"])
const collapse = computed(() => getters["user/collapse"])


function resize() {
  window.onresize = () => {
    commit("user/setBrowser")
    if (browser.value.isMini) {
      if (lock.collapse == null) {
        lock.collapse = collapse.value
        commit("user/updCollapse", true)
      }
    } else {
      if (lock.collapse != null) {
        commit("user/updCollapse", lock.collapse)
        lock.collapse = null
      }
    }
  }
}
onMounted(() => {
  resize()
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
    height: calc(100% - 80px);
    .el-menu {
      border: 0;
    }
  }
}
</style>

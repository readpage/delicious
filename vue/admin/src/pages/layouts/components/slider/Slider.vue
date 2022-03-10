<template>
  <div class="app-slider">
    <div class="app-slider__logo" @click="before">
      <v-lottie src="/static/lottie/food.json" background="#304156"></v-lottie>
    </div>
    <div class="app-slider__menu">
      <el-scrollbar>
        <el-menu
          :default-active="$route.path"
          background-color="#304156"
          text-color="#bfcbd9"
          active-text-color="#409eff"
          router
          :collapse="collapse"
          :collapse-transition="false"
          unique-opened
        >
          <MenuTree :menu="menu" />
        </el-menu>
      </el-scrollbar>
    </div>
  </div>
</template>

<script setup lang="ts">
import { getBrowser } from "@/util";
import type { browserType } from "@/util";
import { computed, onMounted, reactive, ref, toRefs, watchEffect } from "vue"
import MenuTree from "./components/MenuTree.vue";
import userStore from "@/store/userStore";
import { storeToRefs } from "pinia";
import menuStore from "@/store/menuStore";

const user = userStore()
const menuState = menuStore()
const { browser, collapse } = storeToRefs(user)

const lock = {
	collapse: null,
};

const menu = computed(() => menuState.menu)

function before () {
  window.open('http://food.undraw.cn')
}
function resize() {
  window.addEventListener("resize", () => {
    user.setBrowser()
    if (browser.value.isMini) {
      
      
      if (lock.collapse == null && collapse.value != null) {
        lock.collapse = collapse.value as any
        user.updCollapse(true)
      }
    } else {
      if (lock.collapse != null) {
        user.updCollapse(lock.collapse as any)
        lock.collapse = null
      }
    }
  })
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

<template>
  <div class="page-layout" :class="{ collapse: collapse }">
    <!-- 遮盖层 -->
    <div id="overlay" class="page-layout__mask" @click="commit('user/updateCollapse', true)"></div>
    <!-- 侧边栏 -->
    <div class="page-layout__left">
      <Slider />
    </div>
    <div class="page-layout__right">
      <div class="page-layout__topbar">
        <Topbar />
      </div>
      <!-- 页面视图 -->
      <div class="page-layout__container">
        <el-scrollbar>
          <router-view></router-view>
        </el-scrollbar>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useStore } from "@/store";
import { toRefs } from "vue";
import Slider from "./components/slider/Slider.vue";
import Topbar from "./components/Topbar.vue";
const { state, commit } = useStore();

const { collapse } = toRefs(state.user);
</script>

<style lang="scss" scoped>
.page-layout {
  display: flex;
  height: 100vh;
  background-color: #f7f7f7;
  overflow: hidden;

  &__mask {
		position: fixed;
		left: 0;
		top: 0;
		background-color: rgba(0, 0, 0, 0.5);
		height: 100%;
		width: 100%;
		z-index: 999;
	}

  &__left {
    overflow: hidden;
    width: 250px;
    transition: left 0.2s;
  }

  &__topbar {
    margin-bottom: 10px;
  }

  &__right {
    width: calc(100% - 255px);
  }

  @media (max-width: 768px) {
    .page-layout__left {
      position: absolute;
      height: 100%;
      left: 0;
      z-index: 9999;
      transition: transform 0.3s cubic-bezier(0.7, 0.3, 0.1, 1),
				box-shadow 0.3s cubic-bezier(0.7, 0.3, 0.1, 1);
    }
    .page-layout__right {
      width: 100%;
    }
    &.collapse {
      .page-layout__left {
				transform: translateX(-100%);
			}

			.page-layout__mask {
        display: none;
      }
    }
  }

  @media (min-width: 768px) {
    .page-layout__left,
    .page-layout__right {
      transition: width 0.2s;
    }

    .page-layout__mask {
      display: none;
    }

    &.collapse {
      .page-layout__left {
        width: 64px;
      }

      .page-layout__right {
        width: calc(100% - 64px);
      }
    }
  }
}
</style>

<template>
  <div class="page-layout" :class="{ collapse: collapse }">
    <!-- 遮盖层 -->
    <div id="overlay" class="page-layout__mask" @click="user.updCollapse(true)"></div>
    <!-- 侧边栏 -->
    <div class="page-layout__left">
      <Slider />
    </div>
    <div class="page-layout__right">
      <div class="page-layout__topbar">
        <Topbar />
      </div>

      <div class="page-layout__process">
        <Tags />
      </div>
      <!-- 页面视图 -->
      <div class="page-layout__container">
        <router-view v-slot="{ Component }">
          <transition :name="transitionName" mode="out-in">
            <keep-alive max="10">
              <component :is="Component" />
            </keep-alive>
          </transition>
        </router-view>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import userStore from "@/store/userStore";
import { computed, ref, toRefs } from "vue";
import { onBeforeRouteUpdate, useRoute } from "vue-router";
import Slider from "./components/slider/Slider.vue";
import Tags from "./components/Tags.vue";
import Topbar from "./components/topbar/Topbar.vue";

const user = userStore()
const route = useRoute()

const collapse = computed(() => user.collapse)
const transitionName = ref("slide-fade")

</script>

<style lang="scss" scoped>
.page-layout {
  display: flex;
  height: 100%;
  background-color: #f7f7f7;

  &__mask {
		position: fixed;
		left: 0;
		top: 0;
		background-color: rgba(0, 0, 0, 0.5);
    width: 100%;
		height: 100%;
		z-index: 999;
	}

  &__left {
    overflow: hidden;
    width: 250px;
  }

  &__right {
    height: 100%;
    display: flex;
    flex-direction: column;
    width: calc(100% - 250px);
  }
  
  &__topbar {
    height: 50px;
    margin-bottom: 10px;
  }

  &__process {
    height: 40px;
		padding: 0 10px;
	}

  &__container {
    margin: 10px;
    flex: 1;
    overflow: hidden;
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
      transition: transform 0.3s cubic-bezier(0.7, 0.3, 0.1, 1),
			box-shadow 0.3s cubic-bezier(0.7, 0.3, 0.1, 1);
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
      transition: width 0.2s ease-in-out,
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


.slide-fade-enter-active {
  transition: all .2s ease-out;
}

.slide-fade-leave-active {
  transition: all .3s cubic-bezier(1.0, 0.5, 0.8, 1.0);
}

.slide-fade-enter-from,
.slide-fade-leave-to {
  transform: translateX(30px);
  opacity: 0;
}
</style>

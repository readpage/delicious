<template>
  <div class="box-container">
    <div class="header" v-if ="!state.user.isMini">
      <Header />
    </div>
    <template v-else>
        <template v-if="route.path == '/'">
          <div class="header">
            <div class="logo">
              <router-link :to="{path: '/'}">
                <lottie-player class="lottie-player" src="/static/lottie/fast-food.json" background="#fff" speed="2.2" loop autoplay></lottie-player>
              </router-link>
              <span>食为天</span>
            </div>
          </div>
        </template>
      </template>
    <el-scrollbar>
      <div class="layer" :class="{ layer2: route.path=='/cart'&&state.user.isMini }">
        <router-view v-slot="{ Component }">
          <keep-alive max="10">
            <component :is="Component" />
          </keep-alive>
        </router-view>
      </div>
      <template v-if="route.path == '/'">
        <div class="footer bg-gray-700 grid place-content-center">
          <a href="https://beian.miit.gov.cn/" class="text-white text-sm">黔ICP备2021007337号-1</a>
        </div>
      </template>
    </el-scrollbar>
    <template v-if="state.user.isMini">
      <Tabbar />
    </template>
  </div>
</template>

<script setup lang="ts">
import { useStore } from "@/store";
import { computed, ref } from "vue"
import { onBeforeRouteUpdate, useRoute } from "vue-router";
import Footer from "./components/Footer.vue";
import Header from "./components/Header.vue";
import Tabbar from "./components/Tabbar.vue";

const { state } = useStore()
const route = useRoute()

</script>

<style lang="scss" scoped>
.box-container {
  display: flex;
  height: 100%;
  flex-direction: column;
  background-color: #f7f7f7;

  .header {
    height: 60px;
    background-color: #fff;
  }

  .layer {
    box-sizing: border-box;
    margin: 0 auto;
    margin-top: 20px;
    padding: 0 10px;
    flex: 1;
  }

  .layer2 {
    margin: 0;
    padding: 0;
  }

  .footer {
    margin-top: 20px;
    height: 60px;
  }

}



</style>
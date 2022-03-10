<template>
  <div class="box-container">
    <div class="header" v-if ="!user.isMini">
      <Header />
    </div>
    <template v-else>
        <template v-if="route.path == '/'">
          <div class="header flex justify-between">
            <div class="logo">
              <router-link :to="{path: '/'}">
                <lottie-player class="lottie-player" src="/static/lottie/fast-food.json" background="#fff" speed="2.2" loop autoplay></lottie-player>
              </router-link>
              <span>食为天</span>
            </div>
            <div class="flex items-center mr-2.5">
              <i class="el-icon-search px-1.5 py-2.5 mr-2.5 text-xl" @click="$router.push('/search')"></i>
              <el-dropdown trigger="click" @command="onCommand">
                <span class="el-dropdown-link">
                  <i class="el-icon-plus px-1.5 py-2.5 text-xl  "></i>
                </span>
                <template #dropdown>
                  <el-dropdown-menu slot="dropdown" class="popper-dropdown-menu-user">
                    <el-dropdown-item command="ranking"><i class="el-icon-trophy"></i>排行</el-dropdown-item>
                    <el-dropdown-item command="admin"><i class="el-icon-setting"></i>后台管理</el-dropdown-item>
                  </el-dropdown-menu>
                </template>
              </el-dropdown>
            </div>
          </div>
        </template>
      </template>
    <el-scrollbar>
      <div class="layer" :class="{ layer2: route.path=='/cart'&&user.isMini }">
        <router-view v-slot="{ Component }">
          <keep-alive max="10">
            <component :is="Component" />
          </keep-alive>
        </router-view>
      </div>
      <template v-if="route.path == '/'">
        <div class="footer text-center text-sm">
          <a href="https://beian.miit.gov.cn/" class="text-gray-600 hover:underline">黔ICP备2021007337号-2</a>
          <p class="text-purple-800 font-medium">Copyright &copy; 2021 <a class="hover:underline" href="https://gitee.com/f1dao" target="_blank">gitee@f1dao</a></p>
        </div>
      </template>
    </el-scrollbar>
    <template v-if="user.isMini">
      <Tabbar />
    </template>
  </div>
</template>

<script setup lang="ts">
import userStore from "@/store/userStore";
import { computed, ref } from "vue"
import { onBeforeRouteUpdate, useRoute, useRouter } from "vue-router";
import Footer from "./components/Footer.vue";
import Header from "./components/Header.vue";
import Tabbar from "./components/Tabbar.vue";

const user = userStore()
const route = useRoute()
const router = useRouter()
const drawer = ref(false)


async function onCommand(name: string) {
  switch (name) {
    case "admin":
      window.open("https://f-admin.undraw.cn")
      break
    case "ranking":
      router.push("/ranking")
      break
  }
}
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
<template>
  <div class="header">
    <div class="logo">
      <router-link :to="{path: '/'}">
        <lottie-player class="lottie-player" src="/static/lottie/fast-food.json" background="#fff" speed="2.2" loop autoplay></lottie-player>
      </router-link>
      <span>食为天</span>
    </div>
    <div class="menu">
      <el-menu mode="horizontal"
        router
        :default-active="$route.path"
        active-text-color="#f9ca24">
        <template v-for= "(item, index) in menu" :key="index">
          <el-menu-item :index="item.path">
            <i :class="item.icon" style="margin-right: 0;"></i>
            <template #title>
              <span>{{item.title}}</span>
            </template>
          </el-menu-item>
        </template>
      </el-menu>
    </div>
    <ul class="header__tools">
      <li @click="router.push('cart')">
        <el-badge :value="totalCount" type="danger">
          <i style="color: red; font-size: 20px" class="el-icon-shopping-cart-full"></i>
        </el-badge>
      </li>
    </ul>
    <div class="info">
      <el-dropdown trigger="click" @command="onCommand">
        <span class="el-dropdown-link">
          <span class="name">{{ userInfo.nickname || "未登录" }}</span>
          <!-- <img class="avatar" :src="userInfo.headImg | default_avatar" alt /> -->
          <el-avatar src="https://cdn.luogu.com.cn/upload/usericon/1.png"></el-avatar>
        </span>

        <template #dropdown>
          <el-dropdown-menu slot="dropdown" class="popper-dropdown-menu-user">
            <el-dropdown-item command="my">个人中心</el-dropdown-item>
            <el-dropdown-item command="sign">登录/注册</el-dropdown-item>
            <el-dropdown-item command="exit">退出</el-dropdown-item>
          </el-dropdown-menu>
        </template>
      </el-dropdown>
    </div>
  </div>
  
</template>

<script setup lang="ts">
import { useStore } from "@/store";
import { computed, ref, toRefs } from "vue"
import { useRoute, useRouter } from "vue-router";

const { state, dispatch, getters } = useStore()
const { userInfo } = toRefs(state.user)
const router = useRouter()

const totalCount = computed(() => getters["cart/cTotalCount"])

async function onCommand(name: string) {
  switch (name) {
    case "my":
      router.push("/info")
      break
    case "sign":
      router.push("/sign")
      break
    case "exit":
      await dispatch("user/userLogout", state.user.token)
      router.push("/sign")
      break
  }
}


const menu = ref([
  {
    path: "/",
    icon: "el-icon-s-home",
    title: "首页"
  },
  {
    path: "/category",
    icon: "el-icon-menu",
    title: "分类"
  },
  {
    path: "/ranking",
    icon: "el-icon-trophy",
    title: "排行"
  }
])


</script>

<style lang="scss" scoped>
.header {
  display: flex;

  .menu {
    flex: 1;
  }

  &__tools {
    display: flex;
    margin-right: 40px;
    li {
      display: grid;
      place-content: center;
      list-style: none;
      cursor: pointer;
    }
  }

  .info {
    margin-right: 10px;
    cursor: pointer;
    display: flex;
    align-items: center;

    .name {
      margin-right: 15px;
    }

    .el-dropdown-link {
      display: flex;
      align-items: center;
    }
  }
}
.el-menu-item {
  height: 60px;
  line-height: 60px;
}

.el-menu--horizontal {
  border: none;
}
</style>
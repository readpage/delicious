<template>
  <div class="topbar">
    <div class="topbar_collapse" @click="commit('user/updCollapse', !collapse)">
      <i :class="[collapse ? 'el-icon-s-unfold' : 'el-icon-s-fold']"></i>
    </div>
    <Breadcrumb />
    <div class="flex1"></div>
    <ul class="topbar__tools">
      <li>
        <el-badge value="20">
          <i class="el-icon-message-solid"></i>
        </el-badge>
      </li>
      <li>
        <i class="el-icon-s-open"></i>
      </li>
    </ul>
    <div class="topbar_user">
      <el-dropdown trigger="click" @command="onCommand">
        <span class="el-dropdown-link">
          <span class="name">{{ info.nickname || "未登录" }}</span>
          <!-- <img class="avatar" :src="userInfo.headImg | default_avatar" alt /> -->
          <el-avatar src="/api/avatar/avatar.gif"></el-avatar>
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
import { toRefs } from "vue";
import { useRouter } from "vue-router";
import Breadcrumb from "./components/Breadcrumb.vue";

const { state, commit, dispatch } = useStore();
const { collapse, info } = toRefs(state.user);
const router = useRouter()

async function onCommand(name: string) {
  switch (name) {
    case "sign":
      router.push("/sign")
      break
    case "exit":
      await dispatch("user/userLogout")
      router.push("/sign")
      break
      
  }
}


</script>

<style lang="scss" scoped>
.topbar {
  display: flex;
  align-items: center;
  height: 50px;
  padding: 0 10px;
  background-color: #fff;

  &_collapse {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 40px;
    width: 40px;
    cursor: pointer;
    margin-right: 10px;

    i {
      font-size: 22px;
      color: #666;
    }
  }

  .flex1 {
    flex: 1;
  }

  &__tools {
    display: flex;
    & > li {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 40px;
      list-style: none;
      padding: 0 10px;
      margin-right: 10px;
      cursor: pointer;
      i {
				font-size: 18px;

				&:hover {
					opacity: 0.8;
				}
			}
    }
  }

  &_user {
    margin-right: 10px;
    cursor: pointer;

    .name {
      margin-right: 15px;
    }

    .el-dropdown-link {
      display: flex;
      align-items: center;
    }
  }
}
</style>

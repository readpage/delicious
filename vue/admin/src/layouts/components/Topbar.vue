<template>
  <div class="topbar">
    <div
    class="topbar_collapse"
    @click="commit('user/updateCollapse', !collapse)"
  >
    <i :class="[collapse ? 'el-icon-s-unfold' : 'el-icon-s-fold']"></i>
  </div>
  <div class="flex1"></div>
  <div class="topbar_user">
    <el-dropdown trigger="click" @command="onCommand">
      <span class="el-dropdown-link">
        <span class="name">user</span>
        <!-- <img class="avatar" :src="userInfo.headImg | default_avatar" alt /> -->
      </span>
      
      <template #dropdown>
        <el-dropdown-menu slot="dropdown" class="popper-dropdown-menu-user">
          <el-dropdown-item command="my">个人中心</el-dropdown-item>
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

const { state, commit } = useStore();
const { collapse } = toRefs(state.user);

function onCommand(name: string) {

}
</script>

<style lang="scss" scoped>

.topbar {
  display: flex;
	align-items: center;
	height: 50px;
	padding: 0 10px;
	background-color: #fff;

  .flex1 {
    flex: 1;
  }
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

  &_user {
    margin-right: 10px;
    cursor: pointer;
  }
}
</style>

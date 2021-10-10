<template>
  <div class="app-tags">
    <el-scrollbar>
      <ul class="flex items-center">
      <li v-for="(item, index) in tagsList" :key="index">
        <el-dropdown trigger="contextmenu">
          <el-tag
            size="medium"
            :type="isActive(item.path) ? 'danger' : ''"
            effect="dark"
            closable
            :disable-transitions="false"
            @close="handleClose(index)"
            class="tags-li"
          >
            <router-link :to="item.path">{{ item.title }}</router-link>
          </el-tag>
          <template #dropdown>
            <el-dropdown-menu>
              <el-dropdown-item icon="el-icon-plus">关闭其他</el-dropdown-item>
              <el-dropdown-item icon="el-icon-circle-plus">关闭到右侧</el-dropdown-item>
              <el-dropdown-item icon="el-icon-circle-plus-outline">关闭到左侧</el-dropdown-item>
              <el-dropdown-item icon="el-icon-check">关闭全部</el-dropdown-item>
            </el-dropdown-menu>
          </template>
        </el-dropdown>
      </li>
    </ul>
    </el-scrollbar>
    <el-dropdown @command="handleTags" class="flex items-center">
      <el-button type="primary" size="mini">
        标签选项
        <i class="el-icon-arrow-down el-icon--right"></i>
      </el-button>
      <template #dropdown>
        <el-dropdown-menu>
          <el-dropdown-item command="other">关闭其他</el-dropdown-item>
          <el-dropdown-item command="all">关闭所有</el-dropdown-item>
        </el-dropdown-menu>
      </template>
    </el-dropdown>
  </div>
</template>

<script setup lang="ts">
import {} from "vue";
import { onBeforeRouteUpdate, useRoute, useRouter } from "vue-router";
import type { RouteLocationNormalizedLoaded } from "vue-router";
import { useStore } from "@/store";

const route = useRoute();
const router = useRouter();

const { state, commit } = useStore();
const tagsList = state.menu.tagsList;

function isActive(path: string) {
  return path == route.fullPath;
}
function setTags(route: RouteLocationNormalizedLoaded) {
  const isExist = tagsList.some((item) => {
    return item.path == route.fullPath;
  });
  if (!isExist) {
    commit("menu/setTagsItem", {
      name: route.name,
      title: route.meta.title,
      path: route.fullPath,
    });
  }
}
setTags(route);
onBeforeRouteUpdate((to) => {
  setTags(to);
});
function handleClose(index: number) {
  const item = tagsList[index + 1] || tagsList[index - 1];

  commit("menu/delTagsItem", index);
  if (item) {
    router.push(item.path);
  } else {
    router.push("/");
  }
}
function handleTags(command: string) {
  switch(command) {
    case "other":
      closeOther()
      break
    case "all":
      closeAll()
      break
  }
}
function closeAll() {
  commit("menu/clearTags")
  router.push("/")
}

function closeOther() {
  const curItem = tagsList.find(item => item.path == route.fullPath)
  if (curItem) {
    commit("menu/clearTagsOther", curItem)
  }
}
</script>
<style lang="scss" scoped>
.app-tags {
  display: flex;
  height: 40px;
  padding-left: 10px;

  .el-scrollbar {
    flex: 1;
  }
  .el-dropdown {
    padding: 10px;
  }
  
  ul {
    height: 40px;
    
    li {
      list-style: none;
      margin-right: 20px;
    }
  }
  a {
    text-decoration: none;
    display: inline-block;
    height: 100%;
    color: white;
  }
}
</style>
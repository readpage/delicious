<template>
  <p v-if="browser.isMini" class="title">{{ lastName }}</p>
  <template v-else>
    <el-breadcrumb separator="/">
      <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item v-for="(item, index) in list" :key="index">
        <span v-if="item.type != 1">
          {{ item.meta.title }}
        </span>
        <router-link style="font-weight: 500" v-else :to="item.path">{{
          item.meta.title
        }}</router-link>
      </el-breadcrumb-item>
    </el-breadcrumb>
  </template>
</template>

<script setup lang="ts">
import { computed, ref, watch } from "vue";
import { onBeforeRouteUpdate, useRoute } from "vue-router";
import type { RouteRecordNormalized } from "vue-router";
import { useStore } from "@/store";
import _, { isEmpty } from "lodash";

const route = useRoute();
const { state } = useStore();
const list = ref<Imenu[]>([]);

watch(
  route,
  (val: any) => {
    const deep = (item: any) => {
      if (item.path == route.path) {
        return item;
      } else {
        if (item.children) {
          const ret = item.children.map(deep).find(Boolean);
          if (ret) {
            return [item, ret];
          } else {
            return false;
          }
        } else {
          return false;
        }
      }
    };

    list.value = _(state.menu.menu)
      .map(deep)
      .filter(Boolean)
      .flattenDeep()
      .value();

    if (isEmpty(list.value)) {
      list.value.push(val);
    }
  },
  { immediate: true }
);

const browser = computed(() => state.user.browser);
const lastName = computed(() => {
  const data = _.last(list.value);
  if (data) {
    return data.meta.title;
  }
});
</script>

<style lang="scss" scoped>
.title {
  font-size: 15px;
  font-weight: 500;
  margin-left: 5px;
}
</style>

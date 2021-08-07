<template>
  <template v-for="item in menu">
    <el-submenu v-if="item.children" :index="item.path" :key="item.id">
      <template #title>
        <i :class="item.meta.icon"></i>
        <span>{{ item.meta.title }}</span>
      </template>
      <MenuTree :menu="item.children" />
    </el-submenu>
    <el-menu-item v-else :index="item.path" :key="item.id">
      <i :class="item.meta.icon"></i>
      <template #title>
        <span>
          {{ item.meta.title }}
        </span>
      </template>
    </el-menu-item>
  </template>
</template>

<script setup lang="ts">
import { ref, toRefs } from "vue";

const props = defineProps<{
  menu: IMenu[];
}>();
const { menu } = toRefs(props);
</script>

<style lang="scss" scoped></style>

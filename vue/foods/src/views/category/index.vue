<template>
  <div class="category">
    <div class="top">
      <div class="detail">
        <div>搜索</div>
        <div>属于你的餐品</div>
      </div>
    </div>
    <div class="center">
      <div class="h-full flex">
        <el-scrollbar  class="menu">
          <el-menu v-for="(item, index) in menu"  :default-active="$route.path" router>
            <el-menu-item :index="item.path" :key="index">{{item.title}}</el-menu-item>
          </el-menu>
        </el-scrollbar>
        <div class="flex-1">
          <router-view></router-view>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useStore } from "@/store";
import { computed, ref } from "vue"
import { useRoute } from "vue-router";

const { state } = useStore()
const route = useRoute()


const innerHeight = computed(() => state.user.browser.innerHeight)
const menu = ref([
  {
    path: "/category/1",
    title: "热菜",
  },
  {
    path: "/category/2",
    title: "凉菜"
  },
  {
    path: "/category/3",
    title: "主食"
  },
  {
    path: "/category/4",
    title: "小吃"
  },
  {
    path: "/category/5",
    title: "西餐"
  },
  {
    path: "/category/6",
    title: "烘焙"
  },
  {
    path: "/category/7",
    title: "饮品"
  }
])

</script>

<style lang="scss">
.category {
  height: calc(v-bind(innerHeight) - 80px);
  background: no-repeat top/100% 38% url("@/assets/img/type-food.png");
  .top {
    height: 28%;
    object-fit: fill;
    display: flex;
    align-items: center;
    .detail {
      margin-left: 100px;
      font-size: 25px;
      color: #fff;
    }
  }
  .center {
    height: 72%;
    background-color: #fff;
    border-radius: 22px 22px 0 0;
    overflow: hidden;

    .menu {
      height: 100%;
      width: 80px;
      text-align: center;
    }
  }
}

@media (min-width: 768px) {
  .category {
    background: no-repeat 0 -60%/100% 80% url("@/assets/img/type-food.png");
    .top {
      display: none;
    }
    .center {
      height: 100%;
      border-radius: 0;
    }
  }
}
</style>
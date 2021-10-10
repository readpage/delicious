<template>
  <el-scrollbar ref="scrollbar">
    <div class="top m-4 rounded-md">
      <el-image :src="data.img" fit="cover"></el-image>
      <span class="text-white" style="position: absolute; left: 50%; margin-left: -16px;">{{data.title}}</span>
    </div> 
    <div class="bottom grid grid-cols-2 gap-1 lg:gap-2.5 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 m-1 lg:m-2.5" 
        v-infinite-scroll="loadMore" infinite-scroll-disabled="disabled">
      <FoodCard :data="item" height="200px" v-for="item in foods" />
    </div>
    <div class="flex justify-center">
      <img v-if="loading" src="/static/svg/load.svg" style="height: 45px;"  alt="">
      <span v-if="onMore()">没有更多了</span>
    </div>
  </el-scrollbar>
</template>

<script setup lang="ts">
import { computed, onActivated, reactive, ref, toRefs, watch } from "vue"
import { useRoute } from "vue-router"
import FoodCard from "@/components/FoodCard.vue"
import { Afood } from "@/api"
import { useStore } from "@/store"

const route = useRoute()
const { commit } = useStore()
const title = reactive([
  {
    id: 1,
    img: "/static/img/recai.jpg",
    title: "热菜"
  },
  {
    id: 2,
    img: "/static/img/liangcai.jpg",
    title: "凉菜"
  },
  {
    id: 3,
    img: "/static/img/zhushi.jpg",
    title: "主食"
  },
  {
    id: 4,
    img: "/static/img/xiaochi.jpg",
    title: "小吃"
  },
  {
    id: 5,
    img: "/static/img/xican.jpg",
    title: "西餐"
  },
  {
    id: 6,
    img: "/static/img/hongbei.jpg",
    title: "烘焙"
  },
  {
    id: 7,
    img: "/static/img/yinpin.jpg",
    title: "饮品"
  },
])
const obj = reactive({
  count: 10,
  loading: false,
  total: 30,
  foods: []
})

const data = computed(() => {
  let val = title.find(item => route.params.type == item.id as any)
  return val ? val :title[0]
})
const disabled = computed(() => {
  return onMore() || obj.loading
})

const scrollbar = ref()

function onMore() {
  return obj.count >= obj.total 
}

function loadMore() {
  obj.loading = true
  setTimeout(() => {
    obj.count += 10
    page()
  }, 500)
}

function page() {
  commit("app/showLoading");
  Afood.page({urlParam: `/1/${obj.count}`, type: data.value.title}).then(res => {
    obj.foods = res.data.list
    obj.total = res.data.total
    obj.loading = false
  })
}
watch(() => route.params.type, val => {
  if (scrollbar.value) scrollbar.value.setScrollTop(0);
  obj.count = 10
  loadMore()
}, {immediate: true}) 


const { loading, foods } = toRefs(obj)
</script>

<style lang="scss" scoped>
.top {
  display: relative;
  height: 80px;
  overflow: hidden;
}
</style>
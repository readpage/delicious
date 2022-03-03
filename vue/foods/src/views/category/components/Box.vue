<template>
  <el-scrollbar ref="scrollbar">
    <div class="top m-4 rounded-md">
      <el-image :src="data.img" fit="cover"></el-image>
      <span class="text-white" style="position: absolute; left: 50%; margin-left: -16px;">{{data.title}}</span>
    </div> 
    <div ref="scroll" class="bottom grid grid-cols-1 gap-2.5 m-1 md:grid-cols-3 lg:m-2.5 lg:grid-cols-4 lg:gap-2.5 xl:grid-cols-5">
      <FoodCard :data="item" v-for="item in foods" />
    </div>
    <div class="flex justify-center">
      <img v-if="loading" src="@/assets/svg/load.svg" style="height: 45px;"  alt="">
      <span v-if="onMore()">没有更多了</span>
    </div>
  </el-scrollbar>
</template>

<script setup lang="ts" scoped>
import { computed, onActivated, onMounted, reactive, ref, toRefs, watch } from "vue"
import { useRoute } from "vue-router"
import FoodCard from "@/components/FoodCard.vue"
import { Afood } from "@/api"
import appStore from "@/store/appStore"
import userStore from "@/store/userStore"

const route = useRoute()
const app = appStore()
const user = userStore()
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
  count: 20,
  loading: false,
  total: 30,
  foods: []
})

const data = computed(() => {
  let val = title.find(item => route.params.type == item.id as any)
  return val ? val :title[0]
})

const scrollbar = ref()
const scroll = ref()

onMounted(() => {
  scrollbar.value.wrap.addEventListener("scroll", onScroll)
})
function onScroll() {
  if (scrollbar.value.wrap.scrollTop+ scrollbar.value.wrap.offsetHeight >= scroll.value.offsetHeight && !obj.loading)
  loadMore()
}

function onMore() {
  return obj.count >= obj.total 
}

function loadMore() {
  if (!onMore()) {
    obj.loading = true
    setTimeout(() => {
      obj.count += 10
      page().then(res => {
        obj.loading = false
      })
    }, 500)
  }
}

function page() {
  app.showLoading()
  return Afood.page({urlParam: `/1/${obj.count}`, type: data.value.title}).then(res => {
    obj.foods = res.data.list
    obj.total = res.data.total
  })
}
watch(() => route.params.type, val => {
  if (val) {
    if (user.isMini) {
      obj.count = 3
    } else {
      obj.count = 20
    }
    page()
    if (scrollbar.value) scrollbar.value.setScrollTop(0);
  }
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
<template>
  <div class="search">
    <el-scrollbar ref="scrollbar">
      <div ref="scroll">
        <FoodCard2 class="my-2.5" :data="item" v-for="item in obj.foods" />
      </div>
      <div class="flex justify-center">
        <img v-if="obj.loading" src="@/assets/svg/load.svg" style="height: 45px;"  alt="">
        <span v-if="onMore()">没有更多了</span>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Afood } from "@/api";
import FoodCard2 from "@/components/FoodCard2.vue";
import { useStore } from "@/store";
import { computed, onMounted, reactive, ref } from "vue"

const { state } = useStore()
const obj = reactive({
  count: 10,
  total: 20,
  foods: [],
  loading: false,
})
const scrollbar = ref()
const scroll = ref()

const innerHeight = computed(() => state.user.browser.innerHeight)

onMounted(() => {
  scrollbar.value.wrap.addEventListener("scroll", onScroll)
})
function onScroll() {
  if (scrollbar.value.wrap.scrollTop+ scrollbar.value.wrap.offsetHeight >= scroll.value.offsetHeight && !obj.loading)
  loadMore()
  console.log(scrollbar.value.wrap.scrollTop+scrollbar.value.wrap.offsetHeight, scroll.value.offsetHeight);
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
  return Afood.order({urlParam: `/1/${obj.count}`}).then(res => {
    res.data.list.forEach((item: any, index: number) => {
      item.order = index + 1
    });
    obj.foods = res.data.list
    obj.total = res.data.total
  })
}
page()
</script>

<style lang="scss" scoped>
.search {
  height: calc(v-bind(innerHeight) - 95px);
}
</style>
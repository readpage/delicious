<template>
  <div class="search">
    <el-scrollbar ref="scrollbar">
      <div ref="scroll" class="p-2.5">
        <div class="flex h-10 items-center">
          <el-input v-model="obj.search" size="small" ref="inputRef" prefix-icon="el-icon-search" clearable placeholder="搜索"></el-input>
          <el-button class="ml-2.5" type="text" @click="$router.push('/')">取消</el-button>
        </div>
        <FoodCard2 class="my-2.5" :data="item" height="210px" v-for="item in obj.foods" />
      </div>
      <div class="flex justify-center items-center" style="height: 45px" >
        <img v-if="obj.loading" src="@/assets/svg/load.svg" style="height: 45px;" alt="">
        <span v-if="onMore()">没有更多了</span>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Afood } from "@/api"
import FoodCard2 from "@/components/FoodCard2.vue"
import { nextTick, onMounted, reactive, ref, watch } from "vue"

const obj = reactive({
  search: "",
  foods: [],
  count: 10,
  total: 20,
  loading: false,
})
const inputRef = ref()

nextTick(() => {
  inputRef.value.focus()
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
  return Afood.page({urlParam: `/1/${obj.count}`, name: obj.search}).then(res => {
    obj.total = res.data.total
    obj.foods = res.data.list
  })
}
watch(() => obj.search, val => {
  page()
})
</script>

<style lang="scss" scoped>
.search {
  height: 100%;
}
</style>
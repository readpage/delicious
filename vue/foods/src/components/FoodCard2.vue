<template>
  <el-card :style="{width: width, height: height}" :body-style="{ padding: '10px'}">
    <router-link :to="{path: `/foods/detail/${data.id}`}">
      <div class="card-container flex">
        <div class="card-img">
          <el-image fit="cover" style="width: 160px; height: 130px" :src="data.img" lazy></el-image>
          <span class="overlay"></span>
        </div>
        <div class="detail p-1.5 leading-4 flex-1 overflow-hidden">
          <div class="flex justify-between">
            <div class="title truncate">{{data.name}}</div>
            <template v-if="data.order == 1">
              <div class="italic text-red-500 text-lg">{{data.order}}</div>
            </template>
            <template v-else-if="data.order == 2">
              <div class="italic text-pink-500 text-lg">{{data.order}}</div>
            </template>
            <template v-else-if="data.order == 3">
              <div class="italic text-yellow-500 text-lg">{{data.order}}</div>
            </template>
            <div v-else class="italic text-gray-500 text-lg">{{data.order}}</div>
          </div>
          <div class="desc mt-2.5">
            <span class="is-price">{{data.price}}</span>
            <span class="ml-2 text-gray-400 text-xs">销售{{data.sales}}单</span>
          </div>
        </div>
      </div>
      <div class="px-1.5 mt-1.5 text-sm text-gray-400">
        <span class="mr-2">
          <v-icon name="#iconyanjing" class="mr-1"></v-icon>
          <span>2988</span>
        </span>
        <span class="mr-2">
          <v-icon name="#iconpinglun" class="mr-1"></v-icon>
          <span>18</span>
        </span>
        <span class="mr-2">
          <v-icon name="#icondianzan" class="mr-1"></v-icon>
          <span>18</span>
        </span>
      </div>
    </router-link>
    <el-divider class="mt-3 mb-0" content-position="left"><i class="el-icon-star-on"></i></el-divider>
    <div class="flex justify-end">
      <span class="p-1.5 text-gray-600 text-sm">{{updateTime}}</span>
    </div>
  </el-card>
</template>

<script setup lang="ts">
import dayjs from "@/plugins/day";
import { ref } from "vue"

interface propsApi {
  data: Ifood
  width?: string
  height?: string
}
const props = withDefaults(defineProps<propsApi>(), {
  height: "250px"
})

const updateTime = ref(dayjs(props.data.updateTime).fromNow())

</script>

<style lang="scss">

.card-container {
  .card-img {
    overflow: hidden;
    position: relative;

    .el-image {
      display: flex;
      transition: all .5s ease-out;
    }

    .overlay {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: #000;
      opacity: 0;
      transition: all .5s ease-out;
    }
  }
}

.card-container:hover {
  .el-image {
    transform: scale(1.1);
  }

  .label {
    color: red;
  }

  .overlay {
    opacity: .2;
  }
}
</style>
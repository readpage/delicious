<template>
  <el-card :body-style="{ padding: '0px'}">
    <router-link :to="{path: `/foods/detail/${data.id}`}">
      <div class="card-container">
        <div class="card-img">
          <el-image fit="cover" style="height: 150px" :src="data.img" lazy></el-image>
          <span class="overlay"></span>
        </div>
        <div class="detail p-1.5 leading-4">
          <div class="title truncate">{{data.name}}</div>
          <div class="desc mt-1.5">
            <span class="is-price">{{data.price}}</span>
            <span class="ml-2 text-gray-400 text-xs">销售{{data.sales}}单</span>
          </div>
        </div>
      </div>
      <div class="px-1.5 text-sm text-gray-400">
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
    <el-divider content-position="left"><i class="el-icon-star-on"></i></el-divider>
    <div class="flex justify-end">
      <span class="mr-2.5 mb-2.5 text-gray-600 text-sm">{{updateTime}}</span>
    </div>
  </el-card>
</template>

<script setup lang="ts">
import dayjs from "@/plugins/day";
import { ref } from "vue"

interface propsApi {
  data: Ifood
}
const props = withDefaults(defineProps<propsApi>(), {})

const updateTime = ref(dayjs(props.data.updateTime).fromNow())

</script>

<style lang="scss">

.card-container {
  .card-img {
    overflow: hidden;
    position: relative;
    height: calc(100% - 52.4px);

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
<template>
  <el-card shadow="hover" :style="{width: width, height: height}" :body-style="{ padding: '0px'}">
    <router-link :to="{path: `/foods/detail/${data.id}`}">
      <div class="card-container" :style="{width: width, height: height}">
        <div class="card-img">
          <el-image fit="fill" :src="data.img" lazy></el-image>
          <span class="overlay"></span>
        </div>
        <div class="detail p-1.5 leading-4">
          <div class="title truncate">{{data.name}}</div>
          <div class="desc mt-1.5">
            <span class="is-price">{{data.price}}</span>
            <span class="ml-1 text-gray-400 text-xs">0件已售</span>
          </div>
        </div>
      </div>
    </router-link>
  </el-card>
</template>

<script setup lang="ts">
import { } from "vue"

interface propsApi {
  data: Ifood
  width?: string
  height?: string
}
const props = withDefaults(defineProps<propsApi>(), {
  height: "250px"
})

</script>

<style lang="scss" scoped>

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
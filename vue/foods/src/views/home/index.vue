<template>
  <el-skeleton :loading="state.app.loading" animated :count="10" class="card-box">
    <template #template>
      <div>
        <el-skeleton-item variant="image" class="card-img" />
        <el-skeleton-item variant="text" style="margin: 5px 0; width: 50%;"></el-skeleton-item>
        <div style="display: flex; justify-items: space-between;">
          <el-skeleton-item variant="text" style="margin-right: 16px; width: 30%" />
          <el-skeleton-item variant="text" style="width: 40%"/>
        </div>
      </div>
    </template>
    <template #default>
      <div class="card-box">
        <el-card :body-style="{ padding: '0px' }" shadow="hover" v-for="item in foods">
          <div class="card-container">
            <router-link target="_blank" :to="{path: `/foods/detail/${item.id}`}">
              <div class="card-img">
                <el-image :src="item.img" fit="fill"></el-image>
                <span class="overlay"></span>
              </div>
            </router-link>
            <div class="label ellipsis">{{ item.name }}</div>
            <div class="desc">
              <span>￥{{item.price}}</span>
              <span>{{item.count}}件已售</span>
            </div>
          </div>
        </el-card>
      </div>
    </template>
  </el-skeleton>
</template>

<script setup lang="ts">
import { Afood } from "@/api"
import { useStore } from "@/store"
import { onMounted, reactive, ref } from "vue"

const { state, commit } = useStore()
const data = reactive({
  pageNum: 1,
  pageSize: 10,
})
const foods = ref<Ifood[]>([])

commit("app/showLoading")
Afood.page({urlParam: `/${data.pageNum}/${data.pageSize}`}).then(res => {
  foods.value = res.data.list
})


</script>

<style lang="scss">

.card-box {
  display: grid;
  gap: 20px;

  .card-container {
    box-sizing: border-box;
    .card-img {
      overflow: hidden;
      position: relative;

      .el-image {
        width: 100%;
        height: 100%;
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

    .label {
      height: 16px;
      font-size: 14px;
      padding: 5px;
      font-weight: 500;
      -webkit-line-clamp: 1;
    }

    .desc {
      padding: 5px;
      span:nth-child(2) {
        font-size: 12px;
        margin-left: 10px;
        color: rgb(153, 153, 153);
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
  
}

</style>
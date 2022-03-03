<template>
  <div class="orders">
    <el-page-header class="bg-gray-700 p-2.5 text-white" @back="$router.push('/info')" content="我的订单"></el-page-header>
    <el-scrollbar>
      <div class="view p-2.5">
        <template v-if="orders.length != 0" v-for="item in orders">
          <el-card class="my-2.5" :body-style="{padding: '10px'}" v-for="food in item.foods">
            <router-link :to="`/foods/detail/${food.id}`">
              <div class="text-gray-400 text-sm">订单号: {{item.number}}</div>
              <div class="flex mt-1.5 text-sm">
                <el-image style="width: 80px; height: 80px;" fit="cover" :src="food.img" lazy ></el-image>
                <div class="ml-2.5 ellipsis-1 flex flex-col justify-between" style="width: calc(100% - 90px)">
                  <div>
                    <p class="truncate">{{food.name}}</p>
                    <div class="flex justify-between mt-1">
                      <span class="is-price">{{food.price}}</span>
                      <span>x{{food.count}}</span>
                    </div>
                    <div class="mt-2.5">{{ item.dNumber ? `桌号:${item.dNumber}` : ""}}</div>
                  </div>
                  <p>下单时间:{{item.createTime}}</p>
                </div>
              </div>
            </router-link>
          </el-card>
        </template>
        <el-empty v-else style="height: 500px" description="暂无订单" :image-size="200"></el-empty>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Aorders } from "@/api";
import { onActivated, ref } from "vue"

const orders = ref([] as Iorders[])

onActivated(() => {
  Aorders.list().then(res => {
    orders.value = res.data
  })
})


</script>

<style lang="scss">
.orders {
  height: 100%;
  display: flex;
  flex-direction: column;
  .el-scollbar {
    flex: 1;
  }
}
.el-page-header__content {
  color: rgb(255, 255, 255) !important;
}
</style>
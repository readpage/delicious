<template>
  <div class="info">
    <div class="info__avatar">
      <el-avatar src="https://empty">
        <img src="https://cdn.luogu.com.cn/upload/usericon/1.png" alt="">
      </el-avatar>
    </div>
    <div class="info__order">
      <el-card>
        <template #header>
          <div class="card-header">
            <span>我的订单</span>
            <span>查看全部订单<i class="el-icon-arrow-right"></i></span>
          </div>
        </template>
        <div class="content">
          <el-space direction="vertical" v-for="item in data.order">
            <i style="font-size: 25px" :class="item.icon"></i>
            <span>{{item.title}}</span>
          </el-space>
        </div>
      </el-card>
    </div>
    <div class="info__other">
      <el-card>
        <div>*****</div>
        <div>****</div>
        <div>****</div>
      </el-card>
    </div>
    <div class="info__exit">
      <el-card>
        退出当前账号
      </el-card>
    </div>
  </div>
</template>

<script setup lang="ts">
import { reactive } from "vue"

const data = reactive({
  order: [
    { icon: "el-icon-wallet", title: "待付款"},
    { icon: "el-icon-s-claim", title: "评价"},
    { icon: "el-icon-s-comment", title: "退款"},
  ]
})

</script>

<style lang="scss" scoped>

.info {
  font-size: 12px;

  & > div {
    margin-bottom: 20px;
  }

  &__avatar {
    margin: 20px 0 0 20px;
  }

  &__order {
    .card-header {
      display: flex;
      justify-content: space-between;
    }

    .content {
      display: flex;
      justify-content: space-evenly;
    }
  }

  &__exit {
    text-align: center;
    .el-card {
      color: red;
    }
  }
}
</style>
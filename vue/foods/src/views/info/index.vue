<template>
  <div class="info">
    <div class="info__avatar">
      <el-card :body-style="{padding: '10px'}">
        <div class="card-header">
          <div class="item">
            <el-space :size="15">
              <el-avatar src="https://empty" :size="60">
                <img src="https://cdn.luogu.com.cn/upload/usericon/1.png" alt="">
              </el-avatar>
              <span style="font-size: 23px">user</span>
            </el-space>
          </div>
          <div class="setting">
            <i class="el-icon-setting"></i>
          </div>
        </div>
        <div class="card-center">
          <el-space direction="vertical">
            <span class="number">0</span>
            <span>优惠券</span>
          </el-space>
          <el-space direction="vertical">
            <span class="number">0</span>
            <span>评价</span>
          </el-space>
          <el-space direction="vertical">
            <span class="number">1</span>
            <span>足迹</span>
          </el-space>
        </div>
        <div class="card-bottom">
          <div class="item">
            <el-image src="static/svg/info1.svg" fit="fill"></el-image>
            <div class="item-text">
              <div class="text1">分享赚钱</div>
              <div class="text2">零成本当合伙人</div>
            </div>
          </div>
          <div class="item">
            <el-image src="static/svg/info2.svg" fit="fill"></el-image>
            <div class="item-text">
              <div class="text1">佣金/团队</div>
              <div class="text2">查看我的收益</div>
            </div>
          </div>
        </div>
      </el-card>
    </div>
    <div class="info__order">
      <el-card :body-style="{padding: '10px'}">
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
      <el-card :body-style="{padding: 0}">
        <div class="bar" v-for="item in other">
          <el-space :size="10">
            <i :class="item.icon"></i>
            <span>{{item.label}}</span>
          </el-space>
          <div>
            <i class="el-icon-arrow-right"></i>
          </div>
        </div>
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
import { reactive, ref } from "vue"

const data = reactive({
  order: [
    { icon: "el-icon-wallet", title: "待付款"},
    { icon: "el-icon-s-claim", title: "评价"},
    { icon: "el-icon-s-claim", title: "订单"},
    { icon: "el-icon-s-comment", title: "退款"},
  ]
})

const other = ref([
  {
    label: "在线客户",
    icon: "el-icon-service"
  },
  {
    label: "我要反馈",
    icon: "el-icon-edit"
  },
  {
    label: "关于",
    icon: "el-icon-warning"
  }
])

</script>

<style lang="scss" scoped>

.info {
  font-size: 12px;

  & > div {
    margin-bottom: 20px;
  }

  &__avatar {
    margin-bottom: 20px;
    .el-card {
      background: linear-gradient(90deg,#f8a5c2, #D980FA, #63cdda);
    }
    .card-header {
      display: flex;
      align-items: center;
      margin-bottom: 15px;

      .item {
        flex: 1;
      }
      .setting {
        font-size: 20px;
      }
    }
    .card-center {
      display: flex;
      justify-content: space-around;
      font-size: 15px;
      .number {
        font-size: 20px;
      }
    }
    .card-bottom {
      margin-top: 10px;
      padding: 10px;
      display: flex;
      .el-image {
        width: 60px;
        height: 70px;
      }
      .item {
        padding-left: 5px;
        display: flex;
        align-items: center;
        flex: 1;
        background-color: #f6f6f6;
        border: 0.5px solid #fff;
        .item-text {
          padding-left: 5px;
          .text2 {
            padding-top: 5px;
            font-size: 12px;
            color: #949494;
          }
        }
      }
    }
  }

  &__order {
    .card-header {
      display: flex;
      justify-content: space-between;
    }

    .content {
      display: flex;
      justify-content: space-around;
    }
  }

  &__other {
    .bar {
      padding: 20px;
      display: flex;
      justify-content: space-between;
      
    }
    .bar:not(:last-child) {
      border-bottom: 0.5px solid #dcdfe6;
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
<template>
  <div class="confirm-orders">
    <div class="header">
      <el-page-header @back="$router.back()" content="确认订单"></el-page-header>
    </div>
    <el-scrollbar>
      <div class="container">
        <el-card :body-style="{ padding: '10px'}" v-for="item in state.cart.foods" :key="item.id">
          <div class="foods">
            <el-image :src="item.img" fit="fill"></el-image>
            <div class="detail">
              <div class="item">
                <div>{{item.name}}</div>
                <div><span>一筒财富百国硬币+2021福字币（8克单银币）</span></div>
              </div>
              <div>
                <span class="is-price" style="color: #000;">{{item.price}}</span>
                <span>x{{item.buyCount}}</span>
              </div>
            </div>
          </div>
          <div class="container__footer">
            <span>实付</span>
            <span class="is-price">{{(item.price*item.buyCount).toFixed(2)}}</span>
          </div>
        </el-card>
      </div>
    </el-scrollbar>
    <div class="footer">
      <div style="line-height: 28px">
        <span>合计</span>
        <span class="is-price ml">{{totalPrice}}</span>
      </div>
      <div>
        <el-button type="info" size="mini">提交订单</el-button>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useStore } from "@/store";
import { computed } from "vue"

const { state, getters } = useStore()

const totalPrice = computed(() => getters["cart/fTotalPrice"])

</script>

<style lang="scss">
  .confirm-orders {
    background-color: #f7f7f7;
    display: flex;
    height: 100%;
    flex-direction: column;
    .header {
      background-color: rgb(43, 46, 61);
      color: rgb(255, 255, 255);
      height: 44px;
      box-sizing: border-box;
      font-size: 12px;
      display: flex;
      align-items: center;
      padding: 10px;
      .el-page-header__content {
        color: rgb(255, 255, 255);
      }
    }
    .container {
      padding: 10px;
      .el-card {
        margin-bottom: 10px;
      }
      .foods {
        display: flex;
        .el-image {
          width: 90px;
          height: 90px;
        }
        .detail {
          margin-left: 10px;
          flex: 1;
          display: flex;
          flex-direction: column;
          justify-content: space-between;
          .item>div:nth-child(1) {
            font-size: 13px;
          }
          .item>div:nth-child(2)>span {
            font-size: 13px;
            padding: 3px 5px;
            background-color: #f7f7f7;
            margin: 5px 0;
          }
          div:nth-child(2) {
            display: flex;
            justify-content: space-between;
          }
        }
      }
      &__footer {
        margin-top: 20px;
        display: flex;
        justify-content: flex-end;
      }
    }
    .footer {
      background-color: #fff;
      padding: 10px;
      display: flex;
      justify-content: space-between;
    }
  }
</style>
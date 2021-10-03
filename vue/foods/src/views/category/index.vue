<template>
  <div class="category">
    <div class="top">
      <div class="detail">
        <div>搜索</div>
        <div>属于你的餐品</div>
      </div>
    </div>
    <div class="center">

    </div>
  </div>
</template>

<script setup lang="ts">
import { useStore } from "@/store";
import { computed } from "vue"

const { state } = useStore()

const innerHeight = computed(() => state.user.browser.innerHeight)

</script>

<style lang="scss">
.category {
  height: calc(v-bind(innerHeight) - 80px);
  background: no-repeat top/100% 38% url("@/assets/img/type-food.png");
  .top {
    height: 35%;
    object-fit: fill;
    display: flex;
    align-items: center;
    .detail {
      margin-left: 100px;
      font-size: 25px;
      color: #fff;
    }
  }
  .center {
    height: 65%;
    background-color: #fff;
    border-radius: 22px 22px 0 0;
  }
}
</style>
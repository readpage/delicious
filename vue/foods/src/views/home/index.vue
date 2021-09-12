<template>
  <el-skeleton :loading="loading" animated :count="10" class="card-box">
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
        <el-card :body-style="{ padding: '0px' }" shadow="hover" v-for="item in data">
          <div class="card-container">
            <router-link :to="{path: `/foods/detail/${item.id}`}">
              <div class="card-img">
                <el-image :src="item.img" fit="fill"></el-image>
                <span class="overlay"></span>
              </div>
            </router-link>
            <div class="label ellipsis">{{ item.label }}</div>
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
import { onMounted, ref } from "vue"

const data = ref([
{
    id: 1,
    img: "https://i8.meishichina.com/attachment/recipe/2021/09/09/20210909163116442224666411321699.JPG?x-oss-process=style/p800",
    label: "香酥鱼条",
    price: "10.2",
    count: "20"
  },
  {
    id: 2,
    img: "https://i3.meishichina.com/attachment/recipe/2021/09/09/2021090916311585919298197577.jpg?x-oss-process=style/c320",
    label: "时蔬烧五花肉",
    price: "13.2",
    count: "10"
  },
  {
    id: 3,
    img: "https://i3.meishichina.com/attachment/recipe/2021/09/11/2021091116313690648841958079.jpg?x-oss-process=style/c320",
    label: "糯米粉红薯丸子",
    price: "10.3",
    count: "23"
  },
  {
    id: 4,
    img: "https://i3.meishichina.com/attachment/recipe/2021/09/11/2021091116313517169521958079.jpg?x-oss-process=style/c320",
    label: "青瓜胡萝卜炒牛肉",
    price: "25.3",
    count: "23"
  },
  {
    id: 5,
    img: "https://i3.meishichina.com/attachment/recipe/2021/09/11/2021091116313687379571958079.jpg?x-oss-process=style/c320",
    label: "蒜香豆腐",
    price: "10.3",
    count: "11"
  },
  {
    id: 6,
    img: "https://i3.meishichina.com/attachment/recipe/2021/09/11/2021091116313683606001958079.jpg?x-oss-process=style/c320",
    label: "韭菜炒豆腐",
    price: "12.3",
    count: "21"
  }
])

const loading = ref(true)  

onMounted(() => {
  setTimeout(() => {
    loading.value = false
  }, 500);
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
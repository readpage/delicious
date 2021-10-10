<template>
  <div style="min-height: 550px">
    <div class="card-box">
      <el-card :body-style="{ padding: '0px' }" shadow="hover" v-for="item in foods" :key="item.id">
        <div class="card-container">
          <router-link :to="{path: `/foods/detail/${item.id}`}">
            <div class="card-img">
              <el-image :src="item.img" :key="item.img" fit="fill" lazy></el-image>
              <span class="overlay"></span>
            </div>
          </router-link>
          <div class="label ellipsis">{{ item.name }}</div>
          <div class="desc">
            <span class="is-price">{{item.price}}</span>
            <span>{{item.count || 0}}件已售</span>
          </div>
        </div>
      </el-card>
    </div>
    <el-skeleton :loading="state.app.loading" animated :count="10" class="card-box" style="margin-top: 10px">
      <template #template>
        <div>
          <el-skeleton-item variant="image" class="el-image" />
          <el-skeleton-item variant="text" style="margin: 5px 0; width: 50%;"></el-skeleton-item>
          <div style="display: flex; justify-items: space-between;">
            <el-skeleton-item variant="text" style="margin-right: 16px; width: 30%" />
            <el-skeleton-item variant="text" style="width: 40%"/>
          </div>
        </div>
      </template>
    </el-skeleton>
  </div>
  <div class="change flex justify-center">
    <el-button @click="onLoad" type="text" :loading="state.app.btnLoading">{{loadText}}</el-button>
  </div>
</template>

<script setup lang="ts">
import { Afood } from "@/api"
import { useStore } from "@/store"
import { preLoad } from "@/util"
import { onActivated, onMounted, reactive, ref, toRefs } from "vue"

const { state, commit } = useStore()
const data = reactive({
  num: 10,
  loadText: "加载更多",
  active: false,
})
const foods = ref<Ifood[]>([])
  const urls = ref([
      'https://fuss10.elemecdn.com/a/3f/3302e58f9a181d2509f3dc0fa68b0jpeg.jpeg',
      'https://fuss10.elemecdn.com/1/34/19aa98b1fcb2781c4fba33d850549jpeg.jpeg',
      'https://fuss10.elemecdn.com/0/6f/e35ff375812e6b0020b6b4e8f9583jpeg.jpeg',
      'https://fuss10.elemecdn.com/9/bb/e27858e973f5d7d3904835f46abbdjpeg.jpeg',
      'https://fuss10.elemecdn.com/d/e6/c4d93a3805b3ce3f323f7974e6f78jpeg.jpeg',
      'https://fuss10.elemecdn.com/3/28/bbf893f792f03a54408b3b7a7ebf0jpeg.jpeg',
      'https://fuss10.elemecdn.com/2/11/6535bcfb26e4c79b48ddde44f4b6fjpeg.jpeg',
    ])
// function page() {
//   commit("app/showLoading")
//   Afood.random({urlParam: `/${data.pageNum}/${data.pageSize}`}).then(res => {
//     res.data.list.forEach((item: any) => {
//       foods.value.push(item)
//     });
//     data.total = res.data.total
//   })
// }
// page()


// function onLoad() {
//   commit("app/btnLoading")
//   data.loadText = "正在加载..."
//   if (data.pageSize*data.pageNum >= data.total) {
//     data.loadText = "没有更多了"
//     commit("app/hideLoading")
//   } else {
//     data.pageNum++
//     page()
//     data.loadText = "加载更多"
//   }
// }

function random() {
  commit("app/showLoading")
  return Afood.random({urlParam: `/${data.num}`}).then(res => {
    res.data.forEach((item: any) => {
      foods.value.push(item)
    });
  })
}
random()

function onLoad() {
  commit("app/btnLoading")
  data.loadText = "正在加载..."
  random().then(res => {
    data.loadText = "加载更多"
  })
}


const { loadText } = toRefs(data)
</script>

<style lang="scss">

.card-box {
  display: grid;
  gap: 10px;

  .card-container {
    box-sizing: border-box;
    .card-img {
      overflow: hidden;
      position: relative;

      .el-image {
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
      box-sizing: content-box;
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

.change {
  margin-top: 15px;
}

</style>
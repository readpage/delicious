<template>
  <div class="view">
    <el-scrollbar>
      <div class="data">
        <div class="statis">
          <el-card class="bg-primary2" v-for="(item, index) in list" :key="index">
            <div class="card-header flex my-5">
              <div class="card-img">
                <el-image :src="item.img" fit="fill"></el-image>
              </div>
              <div class="detail flex flex-col justify-between">
                <div>
                  <span class="label">{{item.label}}</span>
                  <span class="value">
                    <v-count :end="item.value"></v-count>
                  </span>
                </div>
                <div class="space-x-2">
                  <span>{{item.label2}}</span>
                  <v-count :end="item.value2"></v-count>
                  <v-icon :name="item.icon" size="25"></v-icon>
                </div>
              </div>
            </div>
            <div class="card-footer"></div>
            <div :class="`mini-stat ${item.stat}`">
              <span style="color: #fff">+12%</span>
            </div>
          </el-card>
        </div>
        <div class="statis2">
          <el-card><Bar :loading="loading"/></el-card>
          <el-card><Line :data="recent" :loading="loading" /></el-card>
        </div>
        <div class="statis2">
          <el-card><Pie /></el-card>
        </div>
      </div>
      <div class="footer text-center text-sm">
        <a href="https://beian.miit.gov.cn/" class="text-gray-600 hover:underline">黔ICP备2021007337号-1</a>
        <p class="text-purple-800 font-medium">Copyright &copy; 2021 <a class="hover:underline" href="https://gitee.com/f1dao" target="_blank">gitee@f1dao</a></p>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Astatis } from "@/api";
import dayjs from "@/plugins/day";
import { IrecentKey } from "@/symbols/rencent";
import { create } from "lodash";
import { defineComponent, provide, reactive, ref, resolveComponent } from "vue"
import Bar from "./components/Bar.vue";
import Line from "./components/Line.vue";
import Pie from "./components/Pie.vue";
import Test from "./components/Test.vue";

defineComponent({
  name: "data1"
})

const recent = ref({
  uv: [0],
  userCount: [0],
  salesCount: [0],
  foodsCount: [0],
  date: ["0"],
})
const loading = ref(true)
const list = ref([
  {
    label: "总访问量",
    label2: "新增访问量",
    value: 0,
    value2: 0,
    stat: "bg-success",
    img: "/static/svg/1.svg",
    icon: "#iconshangsheng"
  },
  {
    label: "总用户数量",
    label2: "新增用户数量",
    value: 0,
    value2: 0,
    stat: "bg-danger",
    img: "/static/svg/2.svg",
    icon: "#iconxiadie"
  },
  {
    label: "总成交量",
    label2: "新增成交量",
    value: 0,
    value2: 0,
    stat: "bg-primary",
    img: "/static/svg/3.svg",
    icon: "#iconshangsheng"
  },
  {
    label: "总商品数量",
    label2: "新增商品数量",
    value: 0,
    value2: 0,
    stat: "bg-warning",
    img: "/static/svg/4.svg",
    icon: "#iconxiadie"
  },
])

provide(IrecentKey, recent)
Astatis.total().then(res => {
  const statis: Istatis = res.data
  list.value[0].value = statis.uv
  list.value[1].value = statis.userCount
  list.value[2].value = statis.salesCount
  list.value[3].value = statis.foodsCount
})

Astatis.recent().then(res => {
  let statis:Istatis[] = res.data
  let today = statis.find(({createTime}) => dayjs(createTime).isToday())
  statis.forEach(item => {
    item.createTime = dayjs(item.createTime).format("MM-DD")
  })
  recent.value.uv = statis.map(item => item.uv)
  recent.value.userCount = statis.map(item => item.userCount)
  recent.value.salesCount = statis.map(item => item.salesCount)
  recent.value.foodsCount = statis.map(item => item.foodsCount)
  recent.value.date = statis.map(item => item.createTime)
  loading.value = false

  list.value[0].value2 = recent.value.uv[6]
  list.value[1].value2 = recent.value.userCount[6]
  list.value[2].value2 = recent.value.salesCount[6]
  list.value[3].value2 = recent.value.foodsCount[6]
})


</script>

<style lang="scss" scoped>

.view {
  height: 100%;
  .data {
    padding: 0 10px;
    .statis {
      display: grid;
      gap: 20px;
      grid-template-columns: repeat(4, 1fr);
      margin-bottom: 10px;
      .el-card {
        box-sizing: border-box;
        position: relative;
        .card-header {
          .card-img {
            height: 70px;
            width: 70px;
            background: rgba(255,255,255,.15);
            margin-right: 20px;
            display: grid;

            .el-image {
              place-self: center;
              width: 60px;
              height: 60px;
            }
          }
          .label {
            font-size: 12px 1;
          }
          .value {
            font-size: 18px;
            font-weight: 700;
            margin-left: 10px;
          }
        }
        .card-bottom {
          display: flex;
          align-items: center;
          height: 50px;
        }
        .mini-stat {
          position: absolute;
          top: 10px;
          right: 0;
          padding: 2px 10px 2px 32px;
          clip-path: polygon(100% 0,100% 50%,100% 100%,0 100%,24% 50%,6% 0);
        }
      }
      // .el-card:nth-child(1) {
      //   background: linear-gradient(135deg,#f8a5c2, #D980FA, #63cdda);
      // }
      // .el-card:nth-child(2) {
      //   background: linear-gradient(135deg,#f403d1, #64b5f6);
      // }
    }

    .statis2 {
      display: grid;
      gap: 20px;
      grid-template-columns: repeat(2, 1fr);
      margin-bottom: 10px;
    }

    @media (max-width: 1200px) {
      .statis {
        grid-template-columns: repeat(2, 1fr);
       }
      .statis2 {
        grid-template-columns: repeat(1, 1fr);
      }
    }

    @media (max-width: 768px) { 
      .statis {
        grid-template-columns: repeat(1, 1fr);
      }
    }
  }

  .footer {
    height: 60px;
  }
}

</style>
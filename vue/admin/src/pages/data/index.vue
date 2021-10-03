<template>
  <div class="view">
    <el-scrollbar>
      <div class="data">
        <div class="statis">
          <el-card class="bg-primary2" v-for="(item, index) in list" :key="index">
            <div class="card-header">
              <div class="card-img">
                <el-image src="http://v.bootstrapmb.com/2021/8/xusdd10936/assets/images/services-icon/01.png" fit="fill"></el-image>
              </div>
              <div class="detail">
                <span class="label">{{item.label}}</span>
                <span class="value">
                  <v-count :end="item.value" :separator="item.separator"
                    :decimals="item.decimals"></v-count>
                </span>
              </div>
            </div>
            <div class="card-footer"></div>
            <div :class="`mini-stat ${item.stat}`">
              <span style="color: #fff">+12%</span>
            </div>
          </el-card>
        </div>
        <div class="statis2">
          <el-card><Bar :data="line" :loading="loading"/></el-card>
          <el-card><Line :data="line" :loading="loading" /></el-card>
        </div>
        <div class="statis2">
          <el-card><Pie /></el-card>
          <el-card></el-card>
        </div>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Astatis } from "@/api";
import dayjs from "@/plugins/day";
import { create } from "lodash";
import { defineComponent, reactive, ref } from "vue"
import Bar from "./components/Bar.vue";
import Line from "./components/Line.vue";
import Pie from "./components/Pie.vue";

defineComponent({
  name: "data1"
})

const line = ref({
  uv: [0],
  date: ["0"]
})
const loading = ref(true)
const list = ref([
  {
    label: "总访问量",
    value: 0,
    stat: "bg-success"
  },
  {
    label: "用户数量",
    value: 0,
    stat: "bg-danger"
  },
  {
    label: "餐品数量",
    value: 0,
    stat: "bg-primary"
  },
  {
    label: "总销售额",
    value: 20012.23,
    stat: "bg-warning",
    separator: ",",
    decimals: 2,
  },
])


Astatis.recent().then(res => {
  let statis:Istatis[] = res.data
  let today = statis.find(({createTime}) => dayjs(createTime).isToday())
  statis.forEach(item => {
    item.createTime = dayjs(item.createTime).format("MM-DD")
  })
  line.value.uv = statis.map(item => item.uv)
  line.value.date = statis.map(item => item.createTime)
  loading.value = false
  
  if (today) {
    list.value[1].value = today.userCount
    list.value[2].value = today.foodsCount
  }
})


</script>

<style lang="scss" scoped>

.view {
  height: 100%;
  .data {
    padding: 10px;
    .statis {
      display: grid;
      gap: 20px;
      grid-template-columns: repeat(4, 1fr);
      margin-bottom: 10px;
      .el-card {
        box-sizing: border-box;
        height: 150px;
        position: relative;
        .card-header {
          display: flex;
          align-items: center;
          .card-img {
            height: 58px;
            width: 58px;
            background: rgba(255,255,255,.15);
            margin-right: 20px;
            display: grid;

            .el-image {
              place-self: center;
              width: 32px;
              height: 32px;
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
          top: 20px;
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
}

</style>
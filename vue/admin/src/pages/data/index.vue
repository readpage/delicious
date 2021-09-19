<template>
  <div class="view">
    <el-scrollbar>
      <div class="data">
        <div class="statis">
          <el-card :body-style="{ padding: '0 20px' }" v-for="(item, index) in list" :key="index">
            <div class="card-header">
              <span class="label">{{item.labe}}</span>
              <span class="value">
                <v-count :end="item.value" :separator="item.separator"
                  :decimals="item.decimals"></v-count>
              </span>
            </div>
            <div class="card-container"></div>
            <div class="card-footer"></div>
          </el-card>
        </div>
        <div class="statis2">
          <el-card><Bar /></el-card>
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
import { reactive, ref } from "vue"
import Bar from "./components/Bar.vue";
import Line from "./components/Line.vue";
import Pie from "./components/Pie.vue";

const line = ref({
  uv: [0],
  date: ["0"]
})
const loading = ref(true)
const list = ref([
  {
    labe: "总访问量",
    value: 0,
  },
  {
    labe: "用户数量",
    value: 0,
  },
  {
    labe: "餐品数量",
    value: 0,
  },
  {
    labe: "总销售额",
    value: 20012.23,
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
  console.log(line.value.uv);
  
  
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
        .card-header {
          display: flex;
          align-items: center;
          height: 50px;
          .label {
            font-size: 12px 1;
          }
          .value {
            font-size: 18px;
            font-weight: 700;
            margin-left: 10px;
          }
        }
        .card-container {
          height: 50px;
        }
        .card-footer {
          display: flex;
          align-items: center;
          height: 50px;
        }
      }
      .el-card:nth-child(1) {
        background: #ff4757;
      }
      .el-card:nth-child(2) {
        background: #7bed9f;
      }
      .el-card:nth-child(3) {
        background: #70a1ff;
      }
      .el-card:nth-child(4) {
        background: #ffa502;
      }
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
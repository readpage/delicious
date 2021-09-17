<template>
  <div class="view">
    <el-scrollbar>
      <div class="data">
        <div class="statis">
          <el-card v-for="item in options">
            <span>{{item.label}}</span>
          </el-card>
        </div>
        <div class="statis2">
          <el-card><Bar /></el-card>
          <el-card><Line /></el-card>
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
import { reactive, ref } from "vue"
import Bar from "./components/Bar.vue";
import Line from "./components/Line.vue";
import Pie from "./components/Pie.vue";

const options = ref([
  {
    label: "总销售额"
  },
  {
    label: "总访问量"
  },
  {
    label: "支付笔数"
  },
  {
    label: "总销售额"
  }
])


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
<template>
  <el-scrollbar>
    <div class="user">
      <div class="item">
        <el-card>
          <el-table :data="cpu">
            <el-table-column label="属性" prop="name"></el-table-column>
            <el-table-column label="值" prop="value"></el-table-column>
          </el-table>
        </el-card>
        <el-card>
          <el-table :data="mem">
            <el-table-column label="属性" prop="name"></el-table-column>
            <el-table-column label="内存" prop="value"></el-table-column>
            <el-table-column label="JVM" prop="value2"></el-table-column>
          </el-table>
        </el-card>
      </div>
    </div>
  </el-scrollbar>
</template>

<script setup lang="ts">
import { Astatis } from "@/api";
import userStore from "@/store/userStore";
import { isEmpty } from "lodash";
import { computed, reactive, ref, toRefs, watchEffect } from "vue"

const data = reactive({
  cpu: [{}],
  mem: [{}],
})

const user = userStore()

const sysInfo = computed(() => user.sys)  

watchEffect(() => {
  let sys = sysInfo.value
  if (!isEmpty(sys)) {
    let cpuName = ["核心数", "系统使用率", "用户使用率", "当前空闲率", "CPU信号信息"]
    let cpuValue = Object.values(sys.cpuInfo)
    data.cpu = cpuValue.map((v, i) => {
      return {name: cpuName[i], value: v}
    })
    
    let memName = ["总内存", "已用内存", "剩余内存", "使用率"]
    let memValue = Object.values(sys.memInfo)


    function delKey(obj: any, ...args: string[]) {
      args.forEach(v => {
        delete obj[v]
      })
      return obj
    }
    delKey(sys.jvmInfo, 'jvmVersion','jvmHome',"jvmName","jvmStartTime")
    let jvmValue = Object.values(sys.jvmInfo)
    data.mem = memValue.map((v, i) => {
      return {name: memName[i], value: v, value2: jvmValue[i]}
    })
  }
})

const { cpu, mem } = toRefs(data)
</script>

<style lang="scss" scoped>
.user {
  display: grid;
  gap: 10px;
  padding: 10px;

  .item {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 10px;
  }

  @media (max-width: 768px) {
    .item {
      grid-template-columns: repeat(1, 1fr);
    }
  }
}
</style>
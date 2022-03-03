<template>
  <div class="desk">
    <div class="title h-3/6 text-center text-white flex items-center justify-center">
      <div>
        <p class="text-2xl">欢迎来到</p>
        <p class="text-3xl mt-4">食为天餐饮店</p>
      </div>
    </div>
    <div class="desk-card h-3/6 p-5">
      <el-card :body-style="{padding: '20px'}" class="h-4/6">
        <p class="text-lg font-bold">你好,欢迎您点餐</p>
        <p class="text-gray-800 text-sm mt-2.5">桌号: {{$route.params.desk}}</p>
        <el-button @click="submit" type="warning" class="small mx-auto w-full mt-10 text-black">开始点餐</el-button>
      </el-card>
    </div>
  </div>
</template>

<script setup lang="ts">
import { Auser } from "@/api";
import router from "@/router";
import userStore from "@/store/userStore";
import { computed } from "vue"
import { useRoute } from "vue-router";

const route = useRoute()
const user = userStore()

function submit() {
  user.setDNumber(Number(route.params.desk))
  if (user.token) {
    router.push("/")
  } else {
    Auser.auto().then(res => {
      user.setToken(res.data)
      user.setUserInfo()
      router.push("/")
    })
  }
  
}

</script>

<style lang="scss" scoped>
.desk {
  height: 100%;
  background: no-repeat 50%/cover url("@/assets/img/food.jpg");
}

@media (min-width: 768px) {
  .desk {
    background: no-repeat 40%/cover url("@/assets/img/food.jpg");
  }
}

</style>
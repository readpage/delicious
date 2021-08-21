<template>
  <div class="container" :class="{ 'sign-up-mode': signModel }">
    <div class="forms-container">
      <div class="signin-signup">
        <div class="sign-in-form">
          <Login />
        </div>
        <div class="sign-up-form">
          <Register />
        </div>
      </div>
    </div>

    <div class="panels-container">
      <div class="panel left-panel">
        <div class="content">
          <h3>新来的?</h3>
          <p>我的心，我的心将会奉献给你。</p>
          <el-button type="primary" @click="signSwitch" plain round>注&nbsp;册</el-button>
        </div>
        <img src="@/assets/img/login.svg" class="image" alt="" />
      </div>
      <div class="panel right-panel">
        <div class="content">
          <h3>我们中的一个?</h3>
          <p>我为你祈祷，愿你永远幸福。我们的工作和生活。</p>
          <el-button type="primary" @click="signSwitch" round plain>登&nbsp;录</el-button>
        </div>
        <img src="@/assets/img/register.svg" class="image" alt="" />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { onMounted, reactive, ref } from "vue";
import Login from "./components/Login.vue";
import Register from "./components/Register.vue";

const signModel = ref(false)

function signSwitch() {
  signModel.value = !signModel.value
}

</script>

<style lang="scss" scoped>
@import url("@/assets/scss/sign.scss");
</style>

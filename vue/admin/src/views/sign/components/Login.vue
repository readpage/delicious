<template>
  <el-card class="card-form">
    <template #header>
      <div class="header">
        <span class="line"></span>
        <span>登录</span>
        <span class="line"></span>
      </div>
    </template>
    <el-form :model="user" label-width="80px" ref="userRef" :rules="rules">
      <el-form-item label="用户名:" prop="username">
        <el-input size="small" v-model="user.username" prefix-icon="el-icon-user-solid" placeholder="请输入用户名"></el-input>
      </el-form-item>
      <el-form-item label="密码:" prop="password" placeholder="请输入密码">
        <el-input show-password v-model="user.password" size="small" prefix-icon="el-icon-lock"></el-input>
      </el-form-item>
      <el-form-item>
        <el-space :size="20">
          <el-button size="mini" type="primary" @click="login">登录</el-button>
          <el-button size="mini" @click="reset">重置</el-button>
        </el-space>
      </el-form-item>
    </el-form>
  </el-card>
  </template>

<script setup lang="ts">
import { Alogin } from "@/api"
import storage from "@/hooks/storage"
import { useStore } from "@/store"
import { ElMessage } from "element-plus"
import { reactive, ref } from "vue"
import { useRouter } from "vue-router"

const user = reactive({
  username: "",
  password: ""
})
type userType = keyof typeof user

const userRef = ref()
const router = useRouter()
const { dispatch } = useStore()

const rules = reactive({
  username: {
    required: true,
    message: "请输入用户名😂"
  },
  password: {
    required: true,
    message: "请输入密码:😂"
  },
})

function login() {
  userRef.value.validate(async (valid: any) => {
    if (valid) {
      const form = new FormData()
      Object.keys(user).forEach(key => {
        form.append(key, user[key as userType])
      })
      // 登录
      await Alogin(form).then(res => {
        storage.set("token", res.data)
        return res
      })

      // 用户信息

      // 权限菜单
      await dispatch("menu/permMenu")
      router.push("/")
    }
  })
  
}

function reset() {
  userRef.value.resetFields()
}

</script>

<style lang="scss" scoped>

</style>
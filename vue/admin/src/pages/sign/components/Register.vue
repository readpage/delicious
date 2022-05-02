<template>
  <el-card class="card-form">
    <template #header>
      <div class="header">
        <span class="line"></span>
        <span>注册</span>
        <span class="line"></span>
      </div>
    </template>
    <el-form
      :model="ruleForm"
      label-width="90px"
      ref="ruleFormRef"
      :rules="rules"
    >
      <el-form-item label="用户名:" prop="username">
        <el-input
          size="small"
          v-model="ruleForm.username"
          prefix-icon="el-icon-user-solid"
          placeholder="请输入用户名"
        ></el-input>
      </el-form-item>
      <el-form-item label="密码:" prop="password">
        <el-input
          show-password
          v-model="ruleForm.password"
          size="small"
          prefix-icon="el-icon-lock"
          placeholder="请输入密码"
        ></el-input>
      </el-form-item>
      <el-form-item label="确认密码:" prop="checkPass">
        <el-input
          show-password
          prefix-icon="el-icon-lock"
          size="small"
          v-model="ruleForm.checkPass"
          placeholder="请再输入一遍密码"
        ></el-input>
      </el-form-item>
      <el-form-item>
        <el-space :size="20">
          <el-button size="mini" type="primary" @click="register"
            >注册</el-button
          >
          <el-button size="mini" @click="reset">重置</el-button>
        </el-space>
      </el-form-item>
    </el-form>
  </el-card>
</template>

<script setup lang="ts">
import { Auser } from "@/api";
import { reactive, ref } from "vue";
import { useRouter } from "vue-router";


const router = useRouter()

const ruleForm = reactive({
  username: "",
  password: "",
  checkPass: "",
  status: true,
  roles: [{
    id: 4
  }]
})
const ruleFormRef = ref()
const checkUsername: Ivalidate = (rule, value, callback) => {
  const nameReg = /^[0-9a-zA-Z]*$/
  if (!value) {
    return callback("请输入用户名😒")
  }
  if (!nameReg.test(value)) {
    callback("账户只能是数字或字母😒!")
  }
  const params: any = {}
  params.username = value
  Auser.isUser(params).then(res => {
    if (res.data == true) {
      callback("用户名已经存在😂")
    } else {
      callback()
    }
  })
}
const validatePass: Ivalidate= (rule, value, callback) => {
  if (!value) {
    callback("请在次输入密码😂")
  } else if (value != ruleForm.password) {
    callback("两次输入密码不一致😂")
  } else {
    callback()
  }
}


const rules = reactive({
  username: {
    required: true,
    validator: checkUsername,
    trigger: "blur"
  },
  password: {
    required: true,
    message: "请输入密码:😂",
  },
  checkPass: {
    required: true,
    validator: validatePass,
    trigger: "blur"
  },
})

function register() {
  ruleFormRef.value.validate((valid: any) => {
    if (valid) {
      Auser.register(ruleForm).then(res => {
        window.location.href = "/sign"
      })
    }
  })
}

function reset() {
  ruleFormRef.value.resetFields()
}
</script>

<style lang="scss" scoped></style>

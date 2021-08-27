<template>
  <el-form
    :model="data"
    ref="formRef"
    :rules="rules"
    label-width="80px"
    size="small"
  >
    <el-row>
      <el-col :span="24">
        <el-form-item style="width: 100%" label="用户名:" prop="username">
          <el-input v-model="data.username"></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item label="昵称:" prop="nickname">
          <el-input v-model="data.nickname"></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item label="密码:" prop="password">
          <el-input v-model="data.password" show-password></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="24">
        <el-form-item style="width: 100%" label="角色:" prop="roles">
          <el-select
            v-model="data.roles"
            placeholder="请选择"
            clearable
            multiple
            collapse-tags
          >
            <el-option
              v-for="item in roles"
              :key="item.id"
              :label="item.nickname"
              :value="item.id"
            >
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item label="手机号码:" prop="phone">
          <el-input v-model="data.phone"></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="12">
        <el-form-item label="邮箱:" prop="email">
          <el-input v-model="data.email"></el-input>
        </el-form-item>
      </el-col>
      <el-col :span="24">
        <el-form-item label="状态:">
          <el-radio v-model="data.status" :label="true">开启</el-radio>
          <el-radio v-model="data.status" :label="false">关闭</el-radio>
        </el-form-item>
      </el-col>
    </el-row>
  </el-form>
</template>

<script setup lang="ts">
import { Auser } from "@/api";
import { defineEmit, inject, reactive, ref, watchEffect } from "vue";
import type { Ref } from "vue"

const roles = inject<Ref<Irole[]>>("roles")
const data: any = inject("data")

const checkUsername: Ivalidate = (rule, value, callback) => {
  if (!value) {
    return callback("请输入用户名😒")
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
const rules = reactive({
  username: {
    required: true,
    validator: checkUsername,
    trigger: "blur"
  },
  nickname: { required: true, message: "请输入昵称"},
  password: { required: true, message: "请输入密码"},
  roles: { required: true, message: "请选择角色"},
})

const formRef = ref()
function handleClosed() {
  formRef.value.resetFields()
}

function update() {
}

function add() {
  console.log(data);
}

defineExpose({
  handleClosed,
  update,
  add,
})




</script>


<style lang="scss" scoped></style>

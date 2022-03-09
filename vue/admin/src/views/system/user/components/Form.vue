<template>
  <el-dialog
    :title="msg"
    v-model="visible"
    @close="handleClose"
    :before-close="beforeClose">
    <el-form
      :model="data"
      ref="formRef"
      :rules="rules"
      label-width="80px"
      size="small"
    >
      <el-row>
        <el-col :span="24">
          <el-form-item label="头像" prop="img">
            <v-upload ref="uploadRef" action="/api/file/upload" :file-list="imgList" @success="success" @updImg="updImg"></v-upload>
          </el-form-item>
        </el-col>
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
    <template #footer>
      <el-button type="primary" size="small" :loading="app.btnLoading" @click="submit">确定</el-button>
      <el-button size="small" @click="visible=false">取消</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import { inject, reactive, ref } from "vue";
import { IroleKey, IuserFormKey, role, userForm } from "@/symbols";
import { Auser } from "@/api";
import { ElMessageBox } from "element-plus";
import type { Ref } from "vue"
import appStore from "@/store/appStore";

const props = defineProps({
  msg: String,
})


const app = appStore()
const visible = ref(false)
const roles = inject(IroleKey, role)
const data = inject(IuserFormKey, userForm)
let username = inject<Ref<String>>("username", ref(""))

const checkUsername: Ivalidate = (rule, value, callback) => {
  if (!value) {
    return callback("请输入用户名😒")
  } else if (value == username.value) {
    return callback()
  }
  

  app.showBtnLoading()
  Auser.isUser({username: value}).then(res => {
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
function handleClose() {
  formRef.value.resetFields()
}
function beforeClose(done: any) {
  ElMessageBox.confirm("确认关闭?")
    .then(() => {
      done()
    })
}

const emit = defineEmits(["submit"])
function submit() {
  formRef.value.validate((valid: any) => {
    if (valid) {
      emit("submit", data.value)
    }
  }) 
}

const imgList = ref([])
function updImg(val: any) {
  imgList.value = val
}

function success(val: any) {
  data.value.headImg = val.data
}

defineExpose({
  visible,
  rules,
  checkUsername,
})

</script>


<style lang="scss" scoped></style>

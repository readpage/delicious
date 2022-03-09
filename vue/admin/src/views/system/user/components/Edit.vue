<template>
  <el-button :disabled="props.disabled" :type="props.type" size="mini" :icon="props.icon" @click="open">{{props.msg}}</el-button>
  <Form msg="修改用户" ref="form" @submit="submit" />
</template>

<script setup lang="ts">
import { Auser } from "@/api"
import appStore from "@/store/appStore"
import { inject, ref } from "vue"
import Form from "./Form.vue"

const props = defineProps({
  type: String,
  icon: String,
  msg: String,
  disabled: Boolean,
})
const reload = inject<Function>("reload", Function)

const app = appStore()

const form = ref()
const emit = defineEmits(["open"])
function open() {
  emit("open")
  delete form.value.rules.password
  form.value.visible = true
}

function submit(val: IuserForm) {
  let data = JSON.parse(JSON.stringify(val))
  const roles = val.roles.map(item => {
    return {"id": item}
  })
  data.roles = roles
  app.showBtnLoading()
  Auser.update(data).then((res: any) => {
    form.value.visible = false
    reload()
  })
}

</script>

<style lang="scss" scoped>

</style>
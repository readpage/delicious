<template>
  <el-button type="primary" size="mini" @click="open">新增</el-button>
  <Form msg="添加菜单" ref="form" @submit="submit" />
</template>

<script setup lang="ts">
import { Amenu } from "@/api";
import { menuFormKey } from "@/symbols/menu";
import { inject, provide, ref } from "vue"
import Form from "./Form.vue";

const reload = inject<Function>("reload", Function)
const form = ref()

const menuForm = ref<ImenuForm>({
  id: undefined,
  title: "",
  component: "",
  type: 0,
  parentId: undefined,
  icon: "",
  orderNum: 0,
  path: ""
})


function open() {
  form.value.visible = true
}

function submit(val: any) {
  val = JSON.parse(JSON.stringify(val))
  switch(val.type) {
    case 2:
      val.icon = ""
    case 0:
      val.component = ""
      break
  }
  Amenu.save(val).then(res => {
    form.value.visible = false
    reload()
  })
}

provide(menuFormKey, menuForm)
</script>

<style lang="scss" scoped>

</style>
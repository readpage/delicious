<template>
  <el-config-provider :locale="locale">
    <router-view v-slot="{ Component }">
      <keep-alive max="10">
        <component :is="Component" />
      </keep-alive>
    </router-view>
  </el-config-provider>
</template>

<script setup lang="ts">
import { onMounted } from "vue";
import { ElConfigProvider } from "element-plus";
import zhCn from "element-plus/lib/locale/lang/zh-cn";
import { isEmpty } from "./util";
import { closeLoad } from "./hooks/useUser";
import userStore from "./store/userStore";
import appStore from "./store/appStore";

const locale = zhCn;
const user = userStore()
const app = appStore()


function init() {
  let token = user.token
  if (isEmpty(token)) {
    user.userRemove()
  }
}
init()
window.addEventListener("resize", () => {
  user.setBrowser()
})
// app.appLoad()

onMounted(() => {
  closeLoad()
})
</script>

<style lang="scss">
* {
  padding: 0;
  margin: 0;
}
html, body, #app {
  height: 100%;
  font-size: 12px;
}


</style>

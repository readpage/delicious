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
import { useStore } from "./store";

const locale = zhCn;
const { commit, state, dispatch} = useStore()


window.addEventListener("resize", () => {
  commit("user/setBrowser")
})
dispatch("app/appLoad")

</script>

<style lang="scss">
* {
  padding: 0;
  margin: 0;
}
html, body, #app {
  height: 100%;
}

/*定义滚动条高宽及背景 高宽分别对应横竖滚动条的尺寸*/
::-webkit-scrollbar {
  width: 6px; /*滚动条宽度*/
  height: 8px; /*滚动条高度*/
  background-color: white;
}

/*定义滑块 内阴影+圆角*/
::-webkit-scrollbar-thumb {
  box-shadow: inset 0 0 0px white;
  background-color: rgb(193, 193, 193); /*滚动条的背景颜色*/
  border-radius: 30px;
}

.ellipsis {
  overflow: hidden;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 2;
}

#loading {
  position: fixed;
  display: flex;
  justify-content: center;
  align-items: center;
  top: 0;
  left: 0;
  width: 100%;
  height: 100vh;
  z-index: 3000;
  background-color: #ffffff;
}
#loading .lottie-player {
  position: relative;
}
</style>

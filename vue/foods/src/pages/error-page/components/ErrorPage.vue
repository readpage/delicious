<template>
  <div class="error-page">
    <h1 class="code">{{ code }}</h1>
    <p class="desc">{{ desc }}</p>
    <div class="content">
      <ul class="link">
        <li @click="router.push('/')">返回首页</li>
        <li @click="router.go(-1)">返回上一页</li>
        <li @click="router.push('/sign')">重新登录</li>
      </ul>
    </div>
    <el-space alignment="flex-end" class="copyright">Copyright &copy; 2021 
      <el-link type="primary" :underline="false" href="https://gitee.com/f1dao " target="_blank">gitee</el-link>
    </el-space>
  </div>
</template>

<script setup lang="ts">
import { useStore } from "@/store";
import { ref, toRefs, computed } from "vue"
import { useRoute, useRouter } from "vue-router";

const props = defineProps({
  code: String,
  desc: String,
})
const { code, desc } = toRefs(props)
const { state } = useStore()
const token = computed(() => state.user.token)
const route = useRoute()
const router = useRouter()

const url = ref<string>("")

</script>

<style lang="scss" scoped>
.error-page {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;

  .content {
    margin-top: 50px;
    max-width: 450px;
    flex: 1;

    .router {
      display: flex;
      justify-content: center;
      max-width: 450px;

      .el-select {
        font-size: 14px;
        flex: 1;
      }

      .el-button {
        margin-left: 15px;
      }
    }
    .link {
      display: flex;
      margin-top: 40px;
      li {
        font-weight: 500;
        cursor: pointer;
        font-size: 14px;
        margin: 0 20px;
        list-style: none;

        &:hover {
          color: #4165d7;
        }
      }
    }
  }
  .code {
    font-size: 120px;
    font-weight: normal;
    color: #6c757d;
		font-family: "Segoe UI";
  }
  .desc {
    font-size: 16px;
    font-weight: 400;
    color: #343953;
    margin-top: 30px;
  }
  .copyright {
		color: #6c757d;
		font-size: 14px;
		height: 50px;
		line-height: 50px;
		text-align: center;
	}
}
</style>
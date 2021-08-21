import storage from "@/hooks/storage";
import axios from "axios"
import { ElMessage, ElMessageBox } from "element-plus"
import { store } from "@/store";
import router from "@/router";

const service = axios.create({
  baseURL: "/api"
})
let num = 0

service.interceptors.request.use(config => {
  
  if (num++ == 0) {
    store.commit("user/showLoading")
  }
  const token = storage.get("token")
  if (token) {
    config.headers.Authorization = token["token_type"] + " " +token["access_token"]
  }
  return config
}, error => {
  ElMessage.error("服务器出问题了!😰")
  return Promise.reject(error)
})

service.interceptors.response.use(response  => {
  num-- 
  const res = response.data
  if (Math.trunc(res.code/100) == 2) {
    switch (res.code) {
      case 201:
      case 205:
        break
      case 202:
        return response
      default: 
        ElMessage.success(res.msg)
    }
    if (num <= 0) {
      store.commit("user/hideLoading")
    }
    return response
  } else {
    switch (res.code) {
      // token过期 刷新token
      case 504:
      case 508:
        return doRequest(response)
      // 账户未登录
      case 501:
      // 账户已过期
      case 507:
        open(res.msg)
        break
      // 权限不足
      case 403:
        ElMessage.warning(res.msg)
        break
      // 其他错误
      default:
        ElMessage.warning(res.msg)
    }
    store.commit("user/closeElLoading")
    store.commit("user/hideLoading")
    throw response
  }
},error => {
  store.commit("user/closeElLoading")
  store.commit("user/hideLoading")
  router.push("/500")
  return Promise.reject(error)
})

async function doRequest(error: any) {
  const token: Itoken = storage.get("token")
  const refreshToken = token.refresh_token
  storage.remove("token")

  await store.dispatch("user/refreshToken", refreshToken)

  return await service.request(error.config).then(res => {
    return res
  })
}

function open(msg: string) {
  ElMessageBox.confirm(msg, "提示", {
    confirmButtonText: "确定",
    cancelButtonText: "取消",
    type: "warning"
  }).then(() => {
    store.dispatch("user/userRemove")
    router.push("/sign")
  }).catch(() => {
    ElMessage.info("已取消登录!")
  })
}

export default service
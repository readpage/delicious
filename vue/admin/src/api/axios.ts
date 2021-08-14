import { closeLoad } from '@/hooks/useUser';
import storage from "@/hooks/storage";
import axios from "axios"
import { ElMessage } from "element-plus"
import { ArefToken } from '.';
import { store } from "@/store";
import router from "@/router";

const service = axios.create({
  baseURL: "/api"
})
let num = 0

service.interceptors.request.use(config => {
  store.commit("user/showLoading")
  num++
  const token = storage.get("token")
  if (token) {
    config.headers.Authorization = token["token_type"] + " " +token["access_token"]
  }
  return config
}, error => {
  return Promise.reject(error)
})

service.interceptors.response.use(response  => {
  num-- 
  if (num <= 0) {
    store.commit("user/hideLoading")
  }
  const res = response.data
  if (Math.trunc(res.code/100) != 2) {
    switch (res.code) {
      case 501:
        router.push("/sign")
        break
      case 504:
        const token: Itoken = storage.get("token")
        const params = new FormData()
        if (token) {
          params.append("refreshToken", token.refresh_token)
          storage.remove("token")
          ArefToken(params).then(res => {
            storage.set("token", res.data)
            location.reload()
          })
        }
        break
      case 507:
        storage.clearAll()
        router.push("/507")
        break
      case 403:
        ElMessage.warning(res.msg)
        break
      default:
        router.push("/500")
        break
    }
    throw response
  } else if (res.code != 205 && res.code != 202) {
    ElMessage.success(res.msg)
  }
  return response
},error => {
  store.commit("user/hideLoading")
  router.push("/500")
  // switch (error.response.status) {
  //   case 404:
  //     ElMessage.error("网络请求异常, 请稍后重新尝试!😉")
  //     break
  //   case 401:
  //     ElMessage.error(error.response.data)
  //     break
  //   case 500:
  //     ElMessage.error("服务器出问题了!😭")
  //     break
  //   default:
  //     router.push("/500")
  //     break
  // }
  return Promise.reject(error)
})

export default service
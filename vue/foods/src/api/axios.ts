import axios from "axios"
import { ElMessage, ElMessageBox } from "element-plus"
import router from "@/router";
import Nprogress from "nprogress";
import "nprogress/nprogress.css";
import appStore from "../store/appStore";
import userStore from "@/store/userStore";


const service = axios.create({
  baseURL: "/api"
})
let num = 0
// 重试队列，每一项将是一个待执行的函数形式
let retryRequests: any[] = []
// 是否正在刷新的标记
let isRefreshing = false

service.interceptors.request.use(config => {
  if (num++ == 0) {
    Nprogress.start()
  }
  
  const token = userStore().token
  if (token) {
    config.headers.Authorization = token["token_type"] + " " +token["access_token"]
  }
  return config
}, error => {
  ElMessage.error("服务器出问题了!😰")
  return Promise.reject(error)
})

service.interceptors.response.use(response  => {
  const app = appStore()
  num-- 
  const res = response.data
  if (Math.trunc(res.code/100) == 2) {
    switch (res.code) {
      case 201:
      case 205:
      case 204:
        break
      case 202:
        return response
      default: 
        ElMessage.success(res.msg)
    }
    if (num <= 0) {
      app.hideLoading()
    }
    return response
  } else {
    switch (res.code) {
      // token过期 刷新token
      case 504:
      case 508:
        return doRequest(response)
      // 账户已过期
      case 507:
        expire(res.msg)
        break
      // 权限不足
      case 403:
        ElMessage.warning(res.msg)
        break
      // 用户未登录
      case 501:
        break
      // 其他错误
      default:
        ElMessage.warning(res.msg)
    }
    app.hideLoading()
    app.hideOtherLoading()
    throw response
  }
},error => {
  const app = appStore()
  num--
  app.hideLoading()
  app.hideOtherLoading()
  router.push("/500")
  return Promise.reject(error)
})



function doRequest(res: any):Promise<any> {
  const store = userStore()
  const config = res.config
  if (!isRefreshing) {
    isRefreshing = true
    return store.refreshToken(store.token).then(res => {
      retryRequests.forEach(item => item(res.data))
      retryRequests = []
      return service(config)
    }).catch(err => {
      console.log(err)
    }).finally(() => {
      isRefreshing = false
    })
  } else {
    return new Promise(resolve => {
      retryRequests.push(() => {
        resolve(service(config))
      })
    })
  }
}

function expire(msg: string) {
  const store = userStore()
  ElMessageBox.confirm(msg, "提示", {
    confirmButtonText: "确定",
    cancelButtonText: "取消",
    type: "warning"
  }).then(() => {

    store.remUser()
    router.push("/sign")
  }).catch(() => {
    store.remUser()
    ElMessage.info("已取消登录!")
  })
}

export default service
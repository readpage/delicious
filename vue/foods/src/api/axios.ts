import { ElMessage } from 'element-plus';
import axios from "axios"
import Nprogress from "nprogress";
import "nprogress/nprogress.css";

const service = axios.create({
  baseURL: "/data"
})
let num = 0

service.interceptors.request.use(config => {
  if (num++ == 0) {
    Nprogress.start()
  }
  // config.headers.Authorization
  return config
}, error => {
  ElMessage.error("服务器出问题了!😰")
  return Promise.reject(error)
})

service.interceptors.response.use(response => {
  num--
  const res = response.data

  if (num <= 0) {
    Nprogress.done()
  }
  return response
})

export default service
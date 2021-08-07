import { getToken } from './../hooks/useToken';
import axios from "axios"
import { ElMessage } from "element-plus"

const service = axios.create({
  baseURL: "/api"
})

service.interceptors.request.use(config => {
  const token = getToken()
  if (token) {
    config.headers.Authorization = "bearer " + token["access_token"]
  }
  return config
})

service.interceptors.response.use(response  => {
  const res = response.data
  const codes = [500, 403, 2001, 2002, 2003, 2004, 2005, 2006, 3001, 3002, 3003, 3004]
    
  if (codes.find(item => item == res.code)) {
    ElMessage.warning(res.msg)
    throw response
  } 
  return response
},error => {
  switch (error.response.status) {
    case 404:
      ElMessage.error("网络请求异常, 请稍后重新尝试!😉")
    default:
      ElMessage.error(error.response.data.msg)
  }
})

export default service
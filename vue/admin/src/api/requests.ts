import axios from "./axios"

export function apiAxios( url: string, method?: any) {
  return (data?: any) => {
    const param: any = {}
    if (!method || method == "get") {
      param.method = "get"
      param.params = data
    } else {
      param.method = method
      param.data = data
    }
    
    return axios(url, param).then(res => {
      return res.data
    })
  }
}

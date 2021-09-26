import axios from "./axios"

export function apiAxios<T = any>( url: string, method?: any) {
  return (data?: any) => {
    const param: any = {}

    let urlParam = ""
    if (data&&data.urlParam) {
      urlParam = data.urlParam
      delete data.urlParam
    }

    if (!method || method == "get") {
      param.method = "get"
      param.params = data
    } else {
      param.method = method
      param.data = data
    }

    interface resApi {
      code: number
      data: T
      msg: string
    }
    return axios(url+ urlParam, param).then(res => {
      return res.data as resApi
    })
  }
}

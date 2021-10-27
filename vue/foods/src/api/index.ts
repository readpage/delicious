import { apiAxios } from "./requests"

const Alogin = apiAxios("/oauth/login", "post")
const Alogout = apiAxios("/oauth/logout", "delete")
const ArefToken = apiAxios("/oauth/refresh", "put")

const Afood = {
  page: apiAxios("/foods/page"),
  getById: apiAxios("/foods/getById"),
  random: apiAxios("/foods/random"),
  order: apiAxios("/foods/order")
}

const Auser = {
  info: apiAxios("/user/info"),
  add: apiAxios("/user/save", "post"),
  isUser: apiAxios("/user/selectIsUser"),
  auto: apiAxios("/user/auto")
}

const Aorders = {
  save: apiAxios("/orders/save", "post"),
  list: apiAxios("/orders/self"),
}

const Acomment = {
  page: apiAxios("/comment/v/page"),
  add: apiAxios("/comment/add", "post")
}


export {
  Alogin,
  Alogout,
  ArefToken,
  Auser,
  Afood,
  Aorders,
  Acomment,
}

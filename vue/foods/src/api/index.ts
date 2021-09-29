import { apiAxios } from "./requests"

const Alogin = apiAxios("/oauth/login", "post")
const Alogout = apiAxios("/oauth/logout", "delete")
const ArefToken = apiAxios("/oauth/refresh", "put")
const Aregister = apiAxios("/user/save", "post")

const Afood = {
  page: apiAxios("/foods/page"),
  getById: apiAxios("/foods/getById"),
}

const Auser = {
  info: apiAxios("/user/info"),
  add: apiAxios("/user/save", "post"),
  isUser: apiAxios("/user/selectIsUser"),
}

const Aorders = {
  save: apiAxios("/orders/save", "post")
}

export {
  Alogin,
  Alogout,
  ArefToken,
  Aregister,
  Auser,
  Afood,
  Aorders,
}

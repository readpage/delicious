import { apiAxios, } from "./requests"

const ApermMenu = apiAxios("/menu/permMenu")
const Alogin = apiAxios("/oauth/login", "post")
const Aregister = apiAxios("/user/save", "post")
const AisUser = apiAxios("/user/selectIsUser")

const ArefToken = apiAxios("/oauth/refresh", "put")

const Auser = apiAxios("/user/page")
const Arole = apiAxios("/role/page")
const Amenu = apiAxios("/menu/list")



export {
  ApermMenu,
  Alogin,
  Aregister,
  AisUser,
  ArefToken,
  Auser,
  Arole,
  Amenu,
}
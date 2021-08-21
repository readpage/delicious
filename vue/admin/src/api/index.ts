import { apiAxios, } from "./requests"

const Alogin = apiAxios("/oauth/login", "post")
const Alogout = apiAxios("/oauth/logout", "delete")
const ArefToken = apiAxios("/oauth/refresh", "put")
const Aregister = apiAxios("/user/save", "post")

const AisUser = apiAxios("/user/selectIsUser")
const Auser = apiAxios("/user/page")
const Ainfo = apiAxios("/user/info")


const Arole = apiAxios("/role/page")

const ApermMenu = apiAxios("/menu/permMenu")
const Amenu = apiAxios("/menu/list")



export {
  Alogin,
  Alogout,
  ArefToken,
  Aregister,
  AisUser,
  Auser,
  Ainfo,
  Arole,
  ApermMenu,
  Amenu,
}
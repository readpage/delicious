import { apiAxios, } from "./requests"

const AgetMenu = apiAxios("/menu/like/")
const Alogin = apiAxios("/oauth/login", "post")
const Aregister = apiAxios("/user/save", "post")
const AisUser = apiAxios("/user/selectIsUser")

export {
  AgetMenu,
  Alogin,
  Aregister,
  AisUser
}
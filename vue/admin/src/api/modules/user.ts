import { apiAxios } from "../requests"

const page = apiAxios("/user/page")
const info = apiAxios("/user/info")
const add = apiAxios("/user/save", "post")
const isUser = apiAxios("/user/selectIsUser")

export const Auser = {
  page,
  info,
  add,
  isUser,
  
}
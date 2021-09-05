import { apiAxios } from "../requests"

const page = apiAxios("/user/page")
const info = apiAxios("/user/info")
const add = apiAxios("/user/save", "post")
const update = apiAxios("/user/update", "put")
const isUser = apiAxios("/user/selectIsUser")
const del = apiAxios("/user/removeByIds", "delete")

export const Auser = {
  page,
  info,
  add,
  isUser,
  update,
  del,
}
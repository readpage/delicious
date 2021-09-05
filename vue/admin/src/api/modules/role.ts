import { apiAxios } from "../requests"

const page = apiAxios("/role/page")
const list = apiAxios("/role/list")
const add = apiAxios("/role/add", "post")
const perm = apiAxios("/role/selectByRid")
const update = apiAxios("/role/update", "put")
const del = apiAxios("/role/remove", "delete")

export const Arole = {
  page,
  list,
  add,
  perm,
  update,
  del
}
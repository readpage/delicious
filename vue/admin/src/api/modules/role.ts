import { apiAxios } from "../requests"

const page = apiAxios("/role/page")
const list = apiAxios("/role/list")
const add = apiAxios("/role/add", "post")

export const Arole = {
  page,
  list,
  add,
}
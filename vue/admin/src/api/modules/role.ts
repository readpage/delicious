import { apiAxios } from "../requests"

const page = apiAxios("/role/page")
const list = apiAxios("/role/list")

export const Arole = {
  page,
  list
}
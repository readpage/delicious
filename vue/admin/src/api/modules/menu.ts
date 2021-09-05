import { apiAxios } from "../requests";

const list = apiAxios("/menu/list")
const permMenu = apiAxios("/menu/permMenu")
const save = apiAxios("/menu/save", "post")
const update = apiAxios("/menu/update", "put")
const del = apiAxios("/menu/remove", "delete")


export const Amenu = {
  list,
  permMenu,
  save,
  update,
  del,
}
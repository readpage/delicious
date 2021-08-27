import { apiAxios } from "../requests";

const list = apiAxios("/menu/list")
const permMenu = apiAxios("/menu/permMenu")


export const Amenu = {
  list,
  permMenu,
}
import { setRoutes } from "@/router";
import storage from "@/util";
import { menuState } from "./store";

const mutations = {
  // 设置树形菜单列表
  setMenu(state: menuState, list: Imenu[]) {
    state.menu = list
    storage.set("menu", list)
  },

  // 设置视图路由
  setRoutes(state: menuState, list: Imenu[]) {
    setRoutes(list)
    state.routes = list
    storage.set("routes", list)
  },
  
  
  setTagsItem(state: menuState, data: Itags) {
    state.tagsList.push(data)
  },
  delTagsItem(state: menuState, data: number) {
    state.tagsList.splice(data, 1)
  },
  clearTags(state: menuState) {
    state.tagsList.splice(0)
  },
  clearTagsOther(state: menuState, data: Itags) {
    state.tagsList.splice(0)
    state.tagsList.push(data)
  }
}

export default mutations
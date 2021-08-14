import { ApermMenu } from "@/api"
import { translateToTree } from "@/hooks/useMenu"
import { ActionContext } from "vuex"
import { menuState } from "./store"

const actions = {
  // 设置菜单、权限
  permMenu({ commit }: ActionContext<menuState, unknown>) {
    return ApermMenu().then(res => {
      const perMenu: Imenu[] = res.data.map((item: any) => {
        item.meta = { "title": item.title, "icon": item.icon }
        delete item.title
        delete item.icon
        return item
      })

      const menu = translateToTree(perMenu.filter(item => item.type != 2 && !(item.type == 1 && item.parent != "back")))
      
      commit("setMenu", menu)

      const routes = perMenu.filter(item => item.type == 1)
      commit("setRoutes", routes)
      
      return res
    })
  },
}

export default actions
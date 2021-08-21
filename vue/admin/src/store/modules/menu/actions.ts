import { ApermMenu } from "@/api";
import { translateToTree } from "@/hooks/useMenu";
import { store } from "@/store";

const actions = {
  // 设置菜单、权限
  permMenu({ commit }: any) {
    return ApermMenu().then(async (res) => {
      const perMenu: Imenu[] = res.data.map((item: any) => {
        item.meta = { title: item.title, icon: item.icon };
        delete item.title;
        delete item.icon;
        return item;
      });
      const routes = perMenu.filter((item) => item.type == 1);
      commit("setRoutes", routes);

      const menu = translateToTree(perMenu.filter((item) => item.type != 2));
      commit("setMenu", menu);

      store.dispatch("user/userInfo")
      return res;
    });
  },
};

export default actions;

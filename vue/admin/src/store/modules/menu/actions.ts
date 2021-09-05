import { Amenu } from "@/api";
import { store } from "@/store";
import { deepTree } from "@/utils";

const actions = {
  // 设置菜单、权限
  permMenu({ commit }: any) {
    return Amenu.permMenu().then(async (res) => {
      const perMenu: Imenu[] = res.data.map((item: any) => {
        item.meta = { title: item.title, icon: item.icon };
        return item;
      });
      const routes = perMenu.filter((item) => item.type == 1);
      commit("setRoutes", routes);

      const menu = deepTree(perMenu.filter((item) => item.type != 2));
      commit("setMenu", menu);

      store.dispatch("user/userInfo")
      return res;
    });
  },
};

export default actions;

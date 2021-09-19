import { Amenu } from "@/api";
import router from "@/router";
import { deepTree } from "@/util";

const actions = {
  // 设置菜单、权限
  permMenu({ commit }: any) {
    return Amenu.permMenu().then(async res => {
      const perMenu: Imenu[] = res.data.map((item: any) => {
        item.meta = { title: item.title, icon: item.icon };
        return item;
      });
      const routes = perMenu.filter((item) => item.type == 1);
      commit("setRoutes", routes);
      await router.replace(router.currentRoute.value.fullPath)

      const menu = deepTree(perMenu.filter((item) => item.type != 2));
      commit("setMenu", menu);


      return res;
    });
  },
};

export default actions;

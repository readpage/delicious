import { Amenu } from "@/api";
import router, { setRoutes } from "@/router";
import { deepTree, storage } from "@/util";
import { defineStore } from "pinia";

export default defineStore("menu", {
  state: () => ({
    menu: (storage.get("menu") as Imenu[]) || [],
    routes: [] as Imenu[],
    tagsList: [] as Itags[],
  }),

  actions: {
    // 设置树形菜单列表
    setMenu(list: Imenu[]) {
      this.menu = list;
      storage.set("menu", list);
    },

    // 设置视图路由
    setRoutes(list: Imenu[]) {
      this.routes = list;
      setRoutes(list);
    },

    setTagsItem(data: Itags) {
      this.tagsList.push(data);
    },
    delTagsItem(data: number) {
      this.tagsList.splice(data, 1);
    },
    clearTags() {
      this.tagsList.splice(0);
    },
    clearTagsOther(data: Itags) {
      this.tagsList.splice(0);
      this.tagsList.push(data);
    },


    // 设置菜单、权限
  permMenu() {
    return Amenu.permMenu().then(async res => {
      const perMenu: Imenu[] = res.data.map((item: any) => {
        item.meta = { title: item.title, icon: item.icon };
        return item;
      });
      const routes = perMenu.filter((item) => item.type == 1);
      this.setRoutes(routes)
      await router.replace(router.currentRoute.value.fullPath)

      const menu = deepTree(perMenu.filter((item) => item.type != 2));
      this.setMenu(menu)

      return res;
    });
  },
  },
});

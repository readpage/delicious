import { createRouter, createWebHistory } from "vue-router"


const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: "/",
      name: "back",
      component: () => import("@/layouts/index.vue"),
      meta: { title: "后台" },
    },
    {
      path: "/507",
      name: "507",
      component: () => import("@/views/error-page/507.vue"),
      meta: { title: "507" },
    },
    {
      path: "/500",
      name: "500",
      component: () => import("@/views/error-page/500.vue"),
      meta: { title: "500" },
    },
  ],
});

export function setRoutes(val: any) {
  let menu = val.filter((item: any) => {
    return item.type == 1
  })
  const modules = import.meta.glob("../views/**")
  menu.forEach((item: any) => {
    item.component = modules[`../views/${item.component}/index.vue`]
    if (item.parent) {
      router.addRoute(item.parent, item)
    } else {
      router.addRoute(item)
    }
  });
  router.addRoute({
    path: "/:pathMatch(.*)*",
    component: () => import(/* webpackChunkName: "about" */ "@/views/error-page/404.vue"),
    meta: { title: "404" }
  })
  router.replace(router.currentRoute.value.fullPath)
}

router.beforeEach( async (to, form, next) => {
  let overlay = document.getElementById("overlay");
  if (overlay && document.body.clientWidth < 768) {
    overlay.click()
  }
  if (to.path == "/") {
    next("/data")
  }
  next()
})

router.afterEach(to => {
  document.title = to.meta.title as string
})

export default router;
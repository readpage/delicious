import { useRoutes, getRoutes } from '@/hooks/useRoutes';
import { createRouter, createWebHistory } from "vue-router"

const router = createRouter({
  history: createWebHistory(),
  routes: [],
});

let routes = getRoutes()
if (routes) {
  setRoutes(routes)
} else {
  useRoutes().then(res => {
    setRoutes(res)
  })
}
export function setRoutes(val: any) {
  let menu = val.filter((item: any) => {
    return item.type == 1
  })
  const modules = import.meta.glob("../views/**")
  menu.forEach((item: any) => {
    
    if (item.path == "/") {
      item.redirect = "/system/user"
    }
    if (item.component == "layout") {
      item.component = () => import("@/layouts/index.vue")
    } else {
      item.component = modules[`../views/${item.component}/index.vue`]
    }
    if (item.parent) {
      router.addRoute(item.parent, item)
    } else {
      router.addRoute(item)
    }
  });
  router.addRoute({
    path: "/:pathMatch(.*)*",
    component: () => import(/* webpackChunkName: "about" */ "@/views/404.vue"),
    meta: { title: "丢失了" }
  })
  router.replace(router.currentRoute.value.fullPath)
}


router.beforeEach( async (to, form, next) => {
  next()
})

export default router;
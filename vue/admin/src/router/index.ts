import { createRouter, createWebHistory } from "vue-router"


const router = createRouter({
  history: createWebHistory(),
  routes: [],
});

export function setRoutes(val: any) {
  let menu = val.filter((item: any) => {
    return item.type == 1
  })
  const modules = import.meta.glob("../views/**")
  menu.forEach((item: any) => {
    
    if (item.path == "/") {
      item.redirect = "/data"
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
  let overlay = document.getElementById("overlay");
  if (overlay && document.body.clientWidth < 768) {
    overlay.click()
  }
  next()
})

router.afterEach(to => {
  document.title = to.meta.title as string
})

export default router;
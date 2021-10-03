import { cookie } from "@/util";
import { createRouter, createWebHistory } from "vue-router"

const routes = [
  {
    path: "/",
    name: "index",
    component: () => import("@/pages/layouts/index.vue"),
    children: [
      {
        path: "/",
        name: "数据统计",
        component: () => import("@/pages/data/index.vue"),
        meta: {
          title: "数据统计",
          icon: "el-icon-s-home"
        }
      }
    ]
  }, {
    path: "/sign",
    name: "sign",
    component: () => import("@/pages/sign/index.vue"),
    meta: {
      title: "登录/注册"
    }
  }, {
    path: "/500",
    name: "500",
    component: () => import("@/pages/error-page/500.vue"),
    meta: { title: "500" },
  }, {
    path: "/:pathMatch(.*)*",
    name: "404",
    component: () => import(/* webpackChunkName: "about" */ "@/pages/error-page/404.vue"),
    meta: { title: "404" }
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes: []
});



export async function setRoutes(val: Imenu[]) {
  routes.forEach(res => {
    router.addRoute(res)
  })
  const modules = import.meta.glob("/src/views/**/index.vue")
  val.forEach((item: any) => {
    item.component = modules[item.component]
    router.addRoute("index", item)
  });
}

router.beforeEach((to, form, next) => {
  if (!(cookie.get("f1dao-token") || to.path == "/sign") ) {
    next("/sign")
  }
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
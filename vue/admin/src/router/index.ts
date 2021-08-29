import storage from "@/hooks/storage";
import { createRouter, createWebHistory } from "vue-router"



// const modules = import.meta.glob("../views/**")
// for (const path in modules) {
//   modules[path]().then(mod => {
//     if (path.indexOf("components") == -1) {
//       console.log(path, mod)
//     }
//   })
// }

const router = createRouter({
  history: createWebHistory(),
  routes: [],
});

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

export function setRoutes(val: Imenu[]) {
  routes.forEach(res => {
    router.addRoute(res)
  })
  const modules = import.meta.glob("../views/**")
  val.forEach((item: any) => {
    item.component = modules[`../views/${item.component}/index.vue`]
    router.addRoute("index", item)
  });
  router.replace(router.currentRoute.value.fullPath)
}

router.beforeEach( async (to, form, next) => {
  if (!(storage.get("token") || to.path == "/sign") ) {
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
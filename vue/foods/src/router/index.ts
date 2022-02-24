import { cookie } from '@/util';
import { createRouter, createWebHistory } from "vue-router"

const routes =[
  {
    path: "/",
    name: "index",
    component: () => import("@/pages/layouts/index.vue"),
    children: [
      {
        path: "/",
        name: "home",
        component: () => import("@/views/home/index.vue")
      },
      {
        path: "/category",
        name: "category",
        component: () => import("@/views/category/index.vue"),
        children: [{
          path: "/category/:type",
          name: "type",
          component: () => import("@/views/category/components/Box.vue")
        }]
      },
      {
        path: "/cart",
        name: "cart",
        component: () => import("@/views/cart/index.vue")
      },
      {
        path: "/info",
        name: "info",
        component: () => import("@/views/info/index.vue")
      },
      {
        path: "/ranking",
        name: "ranking",
        component: () => import("@/views/ranking/index.vue")
      },
    ]
  },
  {
    path: "/test",
    name: "test",
    component: () => import("@/views/test/index.vue")
  },
  {
    path: "/search",
    name: "search",
    component: () => import("@/views/search/index.vue")
  },
  {
    path: "/orders/",
    name: "orders",
    component: () => import("@/views/orders/index.vue")
  },
  {
    path: "/foods/detail/:id",
    name: "detail",
    component: () => import("@/views/foods-detail/index.vue")
  },
  {
    path: "/desk/:desk",
    name: "desk",
    component: () => import("@/views/desk/index.vue")
  },
  {
    path: "/confirm-orders",
    name: "confirm-orders",
    component: () => import("@/views/confirm-orders/index.vue")
  },
  {
    path: "/sign",
    name: "sign",
    component: () => import("@/pages/sign/index.vue")
  },
  {
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
  routes,
})

router.beforeEach((to, form, next) => {
  document.title = to.name as string
  if (to.path == "/info" && !(cookie.get("f1dao-token"))) next({
    path: "/sign",
    query: { redirect: to.fullPath}
  })
  next()
})


export default router
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
        component: () => import("@/views/category/index.vue")
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
      { 
        path: '/test/:id', 
        component: () => import("@/views/test/index.vue")
      }
    ]
  },
  {
    path: "/foods/detail/:id",
    name: "detail",
    component: () => import("@/views/foods-detail/index.vue")
  },
  {
    path: "/confirm-orders",
    name: "confirm-orders",
    component: () => import("@/views/confirm-orders/index.vue")
  },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
})


router.afterEach(to => {
  document.title = to.meta.title as string
})

export default router
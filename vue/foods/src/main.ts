import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import { createPinia } from "pinia"
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import "./assets/index.css"
import "@lottiefiles/lottie-player"
import packages from "./packages/components"


createApp(App)
  .use(router)
  .use(createPinia())
  .use(ElementPlus)
  .use(packages)
  .mount('#app')

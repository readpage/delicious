import { createApp } from 'vue'
import App from './App.vue'
import modules from './modules'
import router from './router'
import { createPinia } from "pinia"
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import "./assets/index.css"
import "@lottiefiles/lottie-player"


createApp(App)
  .use(modules)
  .use(router)
  .use(createPinia())
  .use(ElementPlus)
  .mount('#app')

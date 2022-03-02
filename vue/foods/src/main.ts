import { createApp } from 'vue'
import App from './App.vue'
import modules from './modules'
import router from './router'
import { store, key } from './store'
import { createPinia } from "pinia"
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import "./assets/index.css"


createApp(App)
  .use(modules)
  .use(router)
  .use(createPinia())
  .use(ElementPlus)
  .use(store, key)
  .mount('#app')

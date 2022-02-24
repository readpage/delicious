import { createApp } from 'vue'
import App from './App.vue'
import modules from './modules'
import router from './router'
import { store, key } from './store'
import "./assets/index.css"
import ElementPlus from 'element-plus'
import plugins from './plugins'



createApp(App)
  .use(ElementPlus)
  .use(store, key)
  .use(router)
  .use(modules)
  .use(plugins)
  .mount('#app')

store.dispatch("app/appLoad")

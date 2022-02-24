import { createApp } from 'vue'
import App from './App.vue'
import modules from './modules'
import router from './router'
import { store, key } from './store'
// import "@lottiefiles/lottie-player"
import "./assets/index.css"
import ElementPlus from 'element-plus'


createApp(App)
  .use(modules)
  .use(router)
  .use(ElementPlus)
  .use(store, key)
  .mount('#app')

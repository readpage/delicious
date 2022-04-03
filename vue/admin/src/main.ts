import { createPinia } from 'pinia';
import { createApp } from 'vue'
import App from './App.vue'
import modules from './modules'
import router from './router'
import ElementPlus from 'element-plus'
import plugins from './plugins'
import "./assets/index.css"
import 'element-plus/dist/index.css'
import "@lottiefiles/lottie-player"

createApp(App)
  .use(ElementPlus)
  .use(router)
  .use(createPinia())
  .use(modules)
  .use(plugins)
  .mount('#app')



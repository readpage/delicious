import { createApp } from 'vue'
import App from './App.vue'
import modules from './modules'
import plugins from './plugins'
import router from './router'
import { store, key } from './store'
import "@lottiefiles/lottie-player"

createApp(App)
  .use(modules)
  .use(router)
  .use(plugins)
  .use(store, key)
  .mount('#app')

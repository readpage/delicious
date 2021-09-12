import { createApp } from 'vue'
import App from './App.vue'
import plugins from './plugins'
import router from './router'
import { store, key } from './store'

createApp(App)
  .use(router)
  .use(plugins)
  .use(store, key)
  .mount('#app')

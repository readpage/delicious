import { createApp } from 'vue'
import App from './App.vue'
import modules from './modules'
import plugins from './plugins'
import router from './router'
import { store, key } from './store'

createApp(App)
  .use(plugins)
  .use(store, key)
  .use(router)
  .use(modules)
  .mount('#app')

store.dispatch("user/appLoad")

import { App } from "vue"

const modules = import.meta.globEager("./**/index.vue")
let func= {} as Record<string, any>
export default {
  install: (app: App<Element>) => {
    Object.keys(modules).forEach(item => {
      const component = modules[item].default
      item.match("/([^/]+?)/index.vue")
      app.component("v-" +RegExp.$1, component)
      // app.config.globalProperties[`${RegExp.$1}`] = component
    })
  }
}

export {
  
}

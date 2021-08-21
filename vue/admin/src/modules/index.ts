import { App } from "vue"


const modules = import.meta.globEager("./components/**/index.vue")
export default {
  install: (app: App<Element>) => {
    Object.keys(modules).forEach(item => {
      const component = modules[item].default
      item.match("/([^/]+?)/index.vue")
      app.component(RegExp.$1, component)
    })
  }
}
import { App } from "vue"
import element from "./element"

export default {
  install: (app: App<Element>) => {
    app.use(element)
  }
}
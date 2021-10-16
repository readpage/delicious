import { App } from "vue"
import element from "./element"
import Echarts from "./echarts"

export default {
  install: (app: App<Element>) => {
    app.use(element)
    app.component("v-chart", Echarts)
  }
}
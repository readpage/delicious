import { App } from "vue"
import Echarts from "./echarts"

export default {
  install: (app: App<Element>) => {
    app.component("v-chart", Echarts)
  }
}
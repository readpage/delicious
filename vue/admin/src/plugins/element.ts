import VLoading from "element-plus/es/components/loading/index";
import "element-plus/es/components/loading/style/index"
import "element-plus/es/components/message/style/index"
import "element-plus/es/components/message-box/style/index"
import { App } from "vue";


// import ElementPlus from "element-plus"
// import 'element-plus/dist/index.css'

export default {
  install: (app: App<Element>) => {
    app.use(VLoading)
    // app.use(ElementPlus)
  }
}

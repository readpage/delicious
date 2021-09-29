import { createVNode, nextTick, render } from "vue"
import toast from "./index.vue"

interface toastApi {
  message: string
  delay?: number
}

// 函数式调用
export function Vtoast({message, delay}: toastApi) {
  // 根据components定义生成虚拟DOM
  const vm = createVNode(toast, {message, delay})
  // 需要创建一个容器div来渲染这个虚拟节点
  const container = document.createElement('div')
  // 这样就成功将虚拟节点渲染到 container
  render(vm, container)
  // 然后将container append 到body上面
  document.body.append(container)
  nextTick(() => {
    // @ts-ignore
    vm.component.ctx.open()
  })
  return vm
}


export default toast


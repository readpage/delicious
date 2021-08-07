import { AgetMenu } from "@/api"

export function useRoutes() {
  return AgetMenu().then(res => {
    
    let menu = res.data.filter((item: any) => {
      return item.type == 1
    })
    
    menu.forEach((item : any) => {
      delete item.version
      delete item.createTime
      delete item.updateTime
      item.meta = {"title": item.title, "icon": item.icon}
      delete item.title
      delete item.icon
    })
    setRoutes(menu)
    return menu
  })
}

export function setRoutes(routes: any) {
  localStorage.setItem("routes", JSON.stringify(routes))
}

export function getRoutes(): Imenu[] {
  return JSON.parse(localStorage.getItem("routes") as string)
}
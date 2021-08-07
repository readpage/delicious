import { AgetMenu } from "@/api"

export function useMenu() {
  return AgetMenu().then(res => {
    
    let menu = res.data.filter((item: any) => {
      return item.type != 2 && !(item.type == 1 && item.parent != "layout")
    })
    
    menu.forEach((item : any) => {
      delete item.version
      delete item.createTime
      delete item.updateTime
      item.meta = {"title": item.title, "icon": item.icon}
      delete item.title
      delete item.icon
    })
    menu = translateToTree(menu)
    setMenu(menu)
    return menu
  })
}

function translateToTree(data: Imenu[]) {
  let parents = data.filter(item => !item.parentId)
  let childrens = data.filter(item => item.parentId )
  
  let translator = (parents: Imenu[], childrens: Imenu[]) => {
    parents.forEach(parent => {
      childrens.forEach((child, index) => {
        if (child.parentId == parent.id) {
          
          let temp = JSON.parse(JSON.stringify(childrens))
          temp.splice(index, 1)
          //让当前子节点作为唯一的父节点，去递归查找其对应的子节点
          translator([child], temp)
          if (parent.children) {
            parent.children.push(child)
          } else {
            parent.children = [child]
          }
        }
      })
    })
  }
  //调用转换方法
  translator(parents, childrens)
  return parents
}


export function setMenu(newMenu: Imenu[]) {
  localStorage.setItem("menu", JSON.stringify(newMenu))
}

export function getMenu(): Imenu[] {
  return JSON.parse(localStorage.getItem("menu") as string)
}
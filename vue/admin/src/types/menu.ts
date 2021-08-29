interface meta {
  title: string
  icon: string
}

interface Imenu {
  id: number
  path: string
  orderNum: number
  name: string
  type: number
  meta: meta
  parentId: number
  createTime: string
  updateTime: string
  version: number
  children?: Imenu[]
  label?: string
}

interface Itags {
  name: string,
  title: string,
  path: string
}
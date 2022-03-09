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
  component: string
  meta: meta
  parentId: number
  createTime: string
  updateTime: string
  version: number
  children?: Imenu[]
  title: string
  icon: string
}

interface ImenuForm {
  id: number | undefined
  title: string
  component: string
  type: number
  parentId: number | undefined,
  icon: string
  orderNum: number
  path: string
}

interface Itags {
  name?: string
  title?: string
  path: string
}
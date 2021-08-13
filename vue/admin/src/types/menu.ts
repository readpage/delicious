interface meta {
  title: string,
  icon: string,
}

interface Imenu {
  id: number,
  path: string,
  name: string,
  parent: string,
  type: number,
  meta: meta,
  parentId: number,
  createTime: string,
  updateTime: string,
  version: number,
  children?: Imenu[]
}

interface Itags {
  name: string,
  title: string,
  path: string
}
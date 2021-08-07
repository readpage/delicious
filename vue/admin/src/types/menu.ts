interface meta {
  title: string,
  icon: string
}
interface Imenu {
  id: number,
  path: string,
  name: string,
  parent: string,
  type: number,
  meta: meta,
  parentId: number,
  children?: Imenu[]
}
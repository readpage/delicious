interface Ifood {
  id: number | undefined
  name: string
  img: string
  imgList: {url: string}[]
  price: number
  type: string
  material: string
  content: string
  createTime: string
  updateTime: string
  version: number | undefined
  count?: number
}

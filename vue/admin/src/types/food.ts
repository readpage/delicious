interface Ifood {
  id: number | undefined
  name: string
  img: string
  imgList: {url: string}[]
  price: number
  type: string
  createTime: string
  updateTime: string
  version: number | undefined
  count?: number
}

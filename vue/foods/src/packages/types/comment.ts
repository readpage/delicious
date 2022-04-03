
interface commentApi {
  id: number
  parentId: number | null
  avatar: string
  username: string
  content: string
  reply?: replyApi | null
  createTime: string
}

interface replyApi {
  total: number
  list: commentApi[]
}

interface commentFun {
  submit: (clear: () => void, content: string, parentId?: number) => void
}
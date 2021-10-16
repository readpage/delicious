interface Irole {
  id: number
  name: string
  nickname: string
  createTime: string
  updateTime: string
  version: number
}

interface Iuser {
  id: number
  username: string
  nickname: string
  password?: string
  headImg: string
  phone: string
  email: string
  status: boolean
  createTime: string
  updateTime: string
  version: number
  roles: Irole[]
  d_number?: number
}

interface Itoken {
  "access_token": string
  "token_type": string
  "refresh_token": string
  "expires_in": string
  scope: string
}

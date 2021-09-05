interface Irole {
  id: number
  name: string
  nickname: string
  createTime: string
  updateTime: string
  version: number
}

interface IroleForm {
  role: {
    id: number
    name: string
    nickname: string
  }
  menuIdList: number[]
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
}

interface IuserForm {
  id?: number
  username: string
  nickname: string
  password?: string
  // headImg: string
  phone: string
  email: string
  status: boolean
  roles: Array<number>
}

interface Itoken {
  "access_token": string
  "token_type": string
  "refresh_token": string
  "expires_in": string
  scope: string
}

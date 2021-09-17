import storage, { browserType, getBrowser } from "@/utils"
import { ILoadingInstance } from "element-plus/lib/el-loading/src/loading.type"

const browser: browserType = getBrowser()

export const createState = () => ({
  browser,
  collapse: browser.isMini,
  loading: false,
  btnLoading: false,
  elLoading: undefined as unknown as ILoadingInstance,
  info: storage.get("userInfo") as Iuser,
  token: storage.get("token") || null,
})


export type userState = ReturnType<typeof createState>
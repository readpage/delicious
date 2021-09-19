import storage, { browserType, getBrowser } from "@/util"

const browser: browserType = getBrowser()

export const createState = () => ({
  browser,
  collapse: browser.isMini,
  loading: false,
  btnLoading: false,
  info: storage.get("userInfo") as Iuser|| {},
  token: storage.get("token") as Itoken || null,
})


export type userState = ReturnType<typeof createState>
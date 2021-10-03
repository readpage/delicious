import {storage, browserType, getBrowser, cookie } from "@/util"

const browser: browserType = getBrowser()

export const createState = () => ({
  browser,
  collapse: browser.isMini,
  loading: false,
  btnLoading: false,
  info: storage.get("userInfo") as Iuser|| {},
  token: cookie.get("f1dao-token") as Itoken || null,
  sys: {} as IsysInfo,
})


export type userState = ReturnType<typeof createState>
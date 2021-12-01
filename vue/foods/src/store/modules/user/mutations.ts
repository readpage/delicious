import {storage, getBrowser, cookie } from "@/util"
import { userState } from "./store"


const mutations = {
  setBrowser(state: userState) {
    state.browser = getBrowser()
    state.isMini = getBrowser().isMini
  },

  setUser(state: userState, val: Iuser) {
    state.userInfo = val
    storage.set("userInfo", val)
  },

  remUser(state: userState) {
    state.userInfo = {} as Iuser
    storage.remove("userInfo")
  },


  setToken(state: userState, val: Itoken) {
    state.token = val
    // cookie.set("f1dao-token", val)
    cookie.set("f1dao-token", val, {domain: ".f1dao.cn"})
  },

  remToken(state: userState) {
    state.token = null as any
    // cookie.remove("f1dao-token")
    cookie.remove("f1dao-token", {domain: ".f1dao.cn", path: "/"})
  },

  setDNumber(state: userState, val: number) {
    state.dNumber = val
    storage.set("d-number", val)
  },

  remDNumber(state: userState) {
    state.dNumber = ""
    storage.remove("d-number",)
  },

  setParentId(state: userState, val: any) {
    state.parentId = val
  },

}

export default mutations
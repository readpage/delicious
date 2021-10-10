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
    cookie.set("f1dao-token", val, {domain: ".f1dao.cn"})
  },

  remToken(state: userState) {
    state.token = null as any
    storage.remove("token")
  }
}

export default mutations
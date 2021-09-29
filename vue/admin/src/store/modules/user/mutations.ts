import storage, { getBrowser } from '@/util';
import { userState } from "./store";
import Nprogress from "nprogress";
import "nprogress/nprogress.css";

const mutations = {
  updCollapse(state: userState, val: boolean) {
    state.collapse = val
  },
  

  setBrowser(state: userState) {
    state.browser = getBrowser()
  },


  showLoading(state: userState) {
    state.loading = true
  },
  
  btnLoading(state: userState) {
    state.btnLoading = true
  },
  
  hideLoading(state: userState) {
    state.loading = false
    state.btnLoading = false
    Nprogress.done()
  },

  setUser(state: userState, val: Iuser) {
    state.info = val
    storage.set("userInfo", val)
  },

  remUser(state: userState) {
    state.info = {} as Iuser
    storage.remove("userInfo")
  },


  setToken(state: userState, val: Itoken) {
    state.token = val
    storage.set("token", val)
  },

  remToken(state: userState) {
    state.token = null as any
    storage.remove("token")
  },

  setSys(state: userState, val: IsysInfo) {
    state.sys = val
  }
}

export default mutations
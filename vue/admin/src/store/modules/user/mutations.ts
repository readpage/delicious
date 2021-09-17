import storage, { getBrowser } from '@/utils';
import { userState } from "./store";
import Nprogress from "nprogress";
import "nprogress/nprogress.css";
import { closeLoad } from "@/hooks/useUser";
import { ElLoading } from "element-plus";

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
  
  hideLoading(state: userState) {
    state.loading = false
    state.btnLoading = false
    Nprogress.done()
    closeLoad()
  },

  btnLoading(state: userState) {
    state.btnLoading = true
  },

  elLoading(state: userState) {
    state.elLoading = ElLoading.service({
      text: "拼命加载中...",
      spinner: "el-icon-loading"
    })
  },
  
  closeElLoading(state: userState) {
    if (state.elLoading) {
      state.elLoading.close()
    }
  },


  setUserInfo(state: userState, val: Iuser) {
    state.info = val
    storage.set("userInfo", val)
  },

  remUser(state: userState) {
    state.info = {} as Iuser
    storage.remove("userInfo")
  },


  setToken(state: userState, val: string) {
    state.token = val
    storage.set("token", val)
  },

  remToken(state: userState) {
    state.token = null
    storage.remove("token")
  }
}

export default mutations
import { getBrowser, browserType, storage, cookie } from '@/util';
import { defineStore } from 'pinia';
import { Alogout, ArefToken, Astatis, Auser } from '@/api';
import menuStore from './menuStore';

const browser: browserType = getBrowser()

export default defineStore("user", {
  state: () => ({
    browser,
    collapse: browser.isMini,
    info: storage.get("userInfo") as Iuser|| {},
    token: cookie.get("f1dao-token") as Itoken || null,
    sys: {} as IsysInfo,
  }),

  actions: {
    updCollapse(val: boolean) {
      this.collapse = val
    },
    
    setBrowser() {
      this.browser = getBrowser()
    },
  
    setUser(val: Iuser) {
      this.info = val
      storage.set("userInfo", val)
    },
  
    remUser() {
      this.info = {} as Iuser
      storage.remove("userInfo")
    },
  
  
    setToken(val: Itoken) {
      this.token = val
      cookie.set("f1dao-token", val)
      // cookie.set("f1dao-token", val, {domain: ".f1dao.cn"})
    },
  
    remToken() {
      this.token = null as any
      cookie.remove("f1dao-token")
      // cookie.remove("f1dao-token", {domain: ".f1dao.cn"})
    },
  
    setSys(val: IsysInfo) {
      this.sys = val
    },


    refreshToken(token: Itoken) {
      const refreshToken = token.refresh_token
      const param = new FormData()
      this.remToken()
      param.append("refreshToken", refreshToken)
      return ArefToken(param).then(res => {
        this.setToken(res.data)
        return res
      })
    },
  
    setUserInfo() {
      return Auser.info().then(res => {
        this.setUser(res.data)
        return res
      })
    },
  
    async userLogout(token: Itoken) {
      const param = new FormData()
      param.append("token", token.access_token)
      await Alogout(param)
      return this.userRemove()
    },
    
    userRemove() {
      this.remUser()
      this.remToken()
      const menu = menuStore()
      menu.setMenu([])
      menu.setRoutes([])
    },
  
    sysInfo() {
      Astatis.server().then(res => {
        this.setSys(res.data)
      })
    }
  }
})
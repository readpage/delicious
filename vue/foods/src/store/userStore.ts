import { defineStore } from 'pinia';
import {cookie, storage, getBrowser } from '@/util';
import { browserType } from '@/util';
import { Alogout, ArefToken, Auser } from '@/api';

const browser: browserType = getBrowser()

export default defineStore("user", {
  state: () => ({
    browser,
    isMini: browser.isMini,
    loading: false,
    dNumber: storage.get("d-number") || "",
    userInfo: storage.get("userInfo") as Iuser || {},
    token: cookie.get("f1dao-token") as Itoken || {},
    parentId: null,
  }),

  actions: {
    setBrowser() {
      this.browser = getBrowser()
      this.isMini = getBrowser().isMini
    },
  
    setUser(val: Iuser) {
      this.userInfo = val as any
      storage.set("userInfo", val)
    },
  
    remUser() {
      this.userInfo = {} as any
      storage.remove("userInfo")
    },
  
  
    setToken(val: Itoken) {
      this.token = val
      cookie.set("f1dao-token", val)
      // cookie.set("f1dao-token", val, {domain: ".undraw.cn"})
    },
  
    remToken() {
      this.token = null as any
      cookie.remove("f1dao-token")
      // cookie.remove("f1dao-token", {domain: ".undraw.cn", path: "/"})
    },
  
    setDNumber(val: number) {
      this.dNumber = val
      storage.set("d-number", val)
    },
  
    remDNumber() {
      this.dNumber = ""
      storage.remove("d-number",)
    },
  
    setParentId(val: any) {
      this.parentId = val
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
      this.remDNumber()
    }
  }
})
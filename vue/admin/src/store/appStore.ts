import { closeLoad } from '@/hooks/load';
import { defineStore } from 'pinia';
import menuStore from './menuStore';
import userStore from './userStore';
import Nprogress from "nprogress";
import "nprogress/nprogress.css";

export default defineStore("app", {
  state: () => ({
    appLoading: false,
    loading: false,
    btnLoading: false,
    otherLoading: false,
  }),
  
  actions: {
    showOtherLoading() {
      this.otherLoading = true
    },
  
    hideOtherLoading() {
      this.otherLoading = false
    },

    showLoading() {
      this.loading = true
    },
    
    showBtnLoading() {
      this.btnLoading = true
    },
    
    hideLoading() {
      this.loading = false
      this.btnLoading = false
      Nprogress.done()
    },

    appLoad(): Promise<any> {
      const user = userStore()
      const menu = menuStore()
      return new Promise(async resolve => {
        user.setUserInfo()
        user.sysInfo()
        await menu.permMenu()
        closeLoad()
      })
    },
  }
})
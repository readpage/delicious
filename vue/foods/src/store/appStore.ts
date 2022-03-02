import nProgress from "nprogress";
import { defineStore } from "pinia";

export default defineStore("app", {
  state: () => ({
    loading: false,
    btnLoading: false,
    otherLoading: false
  }),
  actions: {
    showLoading() {
      this.loading = true
    },

    hideLoading() {
      this.loading = false
      this.btnLoading = false
      nProgress.done()
    },

    showBtnLoading() {
      this.btnLoading = true
    },

    showOtherLoading() {
      this.otherLoading = true
    },

    hideOtherLoading() {
      this.otherLoading = false
    }
  }
})
import { userState } from "./store";
import Nprogress from "nprogress";
import "nprogress/nprogress.css";

const mutations = {
  updateCollapse (state: userState, val: boolean) {
    state.collapse = val
  },
  showLoading(state: userState) {
    state.loading = true
    Nprogress.start()
  },
  hideLoading(state: userState) {
    state.loading = false
    Nprogress.done()
  }
}

export default mutations
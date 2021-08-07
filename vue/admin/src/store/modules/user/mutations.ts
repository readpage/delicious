import { userState } from "./store";

const mutations = {
  updateCollapse (state: userState, val: boolean) {
    state.collapse = val
  },
  updMenu(state: userState, val: Imenu[]) {
    state.menu = val
  },
}

export default mutations
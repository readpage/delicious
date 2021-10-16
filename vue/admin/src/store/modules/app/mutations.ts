import { appState } from './store';

const mutations = {
  otherLoading(state: appState) {
    state.otherLoading = true
  },

  hideOtherLoading(state: appState) {
    state.otherLoading = false
  }
}

export default mutations
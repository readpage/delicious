import { appState } from './store';

const mutations = {
  appLoading(state: appState) {
    state.appLoading = true
  },

  hideAppLoading(state: appState) {
    state.appLoading = false
  },
  otherLoading(state: appState) {
    state.otherLoading = true
  },

  hideOtherLoading(state: appState) {
    state.otherLoading = false
  }
}

export default mutations
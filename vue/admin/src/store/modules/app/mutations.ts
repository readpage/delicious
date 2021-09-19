import { appState } from './store';

const mutations = {
  appLoading(state: appState) {
    state.appLoading = true
  },

  hideAppLoading(state: appState) {
    state.appLoading = false
  }
}

export default mutations
import nProgress from 'nprogress';
import { appState } from './store';

const mutations = {
  showLoading(state: appState) {
    state.loading = true
  },

  btnLoading(state: appState) {
    state.btnLoading = true
  },
  
  hideLoading(state: appState) {
    state.loading = false
    state.btnLoading = false
    nProgress.done()
  },
}

export default mutations
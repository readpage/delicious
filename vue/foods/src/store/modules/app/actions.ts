import { store } from '@/store';

const actions = {
  async appLoad({ dispatch, commit }: any) {
    commit("appLoading")
    store.dispatch("user/userInfo")
    commit("hideAppLoading")
  },
}

export default actions
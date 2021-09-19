import { store } from '@/store';

const actions = {
  async appLoad({ dispatch, commit }: any) {
    commit("appLoading")
    store.dispatch("user/userInfo")
    await store.dispatch("menu/permMenu")
    commit("hideAppLoading")
  },
}

export default actions
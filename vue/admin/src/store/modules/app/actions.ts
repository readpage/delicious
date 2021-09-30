import { store } from '@/store';

const actions = {
  appLoad({ dispatch, commit }: any): Promise<any> {
    return new Promise(async resolve => {
      commit("appLoading")
      store.dispatch("user/userInfo")
      store.dispatch("user/sysInfo")
      await store.dispatch("menu/permMenu")
      commit("hideAppLoading")
      resolve(null)
    })
  },
}

export default actions
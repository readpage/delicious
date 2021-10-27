import { closeLoad } from '@/hooks/load';
import { store } from '@/store';

const actions = {
  appLoad({ dispatch, commit }: any): Promise<any> {
    return new Promise(async resolve => {
      store.dispatch("user/userInfo")
      store.dispatch("user/sysInfo")
      await store.dispatch("menu/permMenu")
      closeLoad()
      resolve(true)
    })
  },
}

export default actions
import { Alogout, ArefToken, Auser } from '@/api';
import storage from '@/hooks/storage';
import { closeLoad } from '@/hooks/useUser';
import { store } from '@/store';

const actions = {
  async appLoad({ dispatch }: any) {
    await store.dispatch("menu/permMenu")
    closeLoad()
  },

  refreshToken({ commit, dispatch }: any, refreshToken: string) {
    const param = new FormData()
    param.append("refreshToken", refreshToken)
    return ArefToken(param).then(res => {
      storage.set("token", res.data)
      return res.data
    })
  },

  userInfo({ commit }: any) {
    return Auser.info().then(res => {
      commit("setUserInfo", res.data)
      return res
    })
  },

  async userLogout({ dispatch }: any) {
    const param = new FormData()
    const token: Itoken = storage.get("token")
    param.append("token", token.access_token)
    await Alogout(param)
    return dispatch("userRemove")
  },
  
  userRemove({ commit }: any) {
    commit("remUser")
    storage.remove("token")
    store.commit("menu/setMenu", [])
    store.commit("menu/setRoutes", [])
  }
}

export default actions
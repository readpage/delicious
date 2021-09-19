import { Alogout, ArefToken, Auser } from "@/api"

const actions = {
  refreshToken({ commit, dispatch }: any, token: Itoken) {
    const refreshToken = token.refresh_token
    const param = new FormData()
    commit("remToken")
    param.append("refreshToken", refreshToken)
    return ArefToken(param).then(res => {
      commit("setToken", res.data)
      return res
    })
  },


  userInfo({ commit }: any) {
    return Auser.info().then(res => {
      commit("setUser", res.data)
      return res
    })
  },

  async userLogout({ dispatch }: any, token: Itoken) {
    const param = new FormData()
    param.append("token", token.access_token)
    await Alogout(param)
    return dispatch("userRemove")
  },
  
  userRemove({ commit }: any) {
    commit("remUser")
    commit("remToken")
  }
}

export default actions
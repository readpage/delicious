import mutations from "./mutations"
import { createState } from "./store"
import actions from "./actions"
import getters from "./getters"

const state = createState()

export default {
  namespaced: true,
  state,
  getters,
  actions,
  mutations,
}
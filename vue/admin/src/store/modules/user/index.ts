import mutations from "./mutations"
import { createState } from "./store"
import actions from "./actions"

const state = createState()

export default {
  namespaced: true,
  state,
  actions,
  mutations,
}
import { getBrowser } from "@/utils"
import { userState } from "./store"


const mutations = {
  setBrowser(state: userState) {
    state.browser = getBrowser()
    state.isMini = getBrowser().isMini
  },
}

export default mutations
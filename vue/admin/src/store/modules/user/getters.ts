import { userState } from './store';

const getters = {
  browser: (state: userState) => state.browser,
  collapse: (state: userState) => state.collapse
}

export default getters
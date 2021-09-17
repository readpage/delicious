import { userState } from './store';

const getters = {
  browser: (state: userState) => state.browser,
  collapse: (state: userState) => state.collapse,
  token: (state: userState) => state.token
}

export default getters
import { menuState } from './store';

const getters = {
  routes:(state: menuState) => {
    return state.routes
  }
}

export default getters
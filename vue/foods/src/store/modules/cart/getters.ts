import { cartState } from './store';

const getters = {
  // routes:(state: menuState) => state.routes,
  // menu: (state: menuState) => state.menu
  carts: (state: cartState) => {
    return state.carts.map(({id}) => {
      return state.foods.find(item => item.id == id)
    })
  }
}

export default getters
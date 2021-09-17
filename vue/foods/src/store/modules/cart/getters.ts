import { cartState } from './store';

const getters = {
  // 获取购物车列表
  carts: (state: cartState) => {
    return state.carts.map(({id}) => {
      return state.foods.find(item => item.id == id)
    })
  },
  // 获取总数量
  totalCount: (state: cartState) => {
    let total = 0
    state.carts.map(item => {
      total += item.count
    })
  },
  // 计算总价格
  totalPrice: (state: cartState, getters: any) => {
    let totalPrice = 0
    const foods: Ifood[] = getters["cart/carts"]
    foods.map(item => {
      let cart = state.carts.find(({id}) => item.id == id)
      if (cart) {
        totalPrice += cart.count*item.price
      }
    })
  }

}

export default getters
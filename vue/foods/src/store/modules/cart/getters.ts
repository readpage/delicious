import { cartState } from './store';

const getters = {
  // 获取总数量
  cTotalCount: (state: cartState) => {
    let total = 0
    state.carts.map(item => {
      total += item.buyCount
    })
    return total
  },
  // 计算总价格
  fTotalPrice: (state: cartState) => {
    let totalPrice = 0
    state.foods.forEach(item => {
      totalPrice += item.buyCount * item.price
    })
    return totalPrice.toFixed(2)
  }
}

export default getters
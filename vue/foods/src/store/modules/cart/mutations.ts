import { cartState } from './store';

const mutations = {
  //加入购物车
  addCart(state: cartState, food: Ifood) {
    let record = state.carts.find(item => item.id == food.id)
    if (record) {
      record.count++
    } else {
      // state.carts.unshift({item, count:1})
    }
  }
}

export default mutations
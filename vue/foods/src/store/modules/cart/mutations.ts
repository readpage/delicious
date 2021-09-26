import storage from '@/util';
import { ElMessage } from 'element-plus';
import { cartState } from './store';

const mutations = {
  // 提交订单
  setFoods(state: cartState, foods: Ifood[]) {
    state.foods = foods
    storage.set("buy-list", state.foods)
  },


  //加入购物车
  addCart(state: cartState, food: Ifood) {
    let record = state.carts.find(item => item.id == food.id)
    
    if (record) {
      record.buyCount += food.buyCount
    } else {
      state.carts.unshift(food)
    }
    storage.set("carts", state.carts)
  },

  // 修改购物车数量
  updCart(state: cartState, {id, buyCount}: Ifood) {
    
    let cart = state.carts.find(item => item.id == id)
    if (cart) {
      cart.buyCount = buyCount
      storage.set("carts", state.carts)
    }
  },

  // 删除
  remCart(state: cartState, ids: number[]) {
    ids.forEach(id => {
      state.carts.forEach((item, index) => {
        if (item.id == id) {
          state.carts.splice(index, 1)
          storage.set("carts", state.carts)
        }
      })
    })
  },
}

export default mutations
import { store } from '@/store';
import storage from '@/util';
import { ElMessage } from 'element-plus';
import { cartState } from './store';

const mutations = {
  // 餐品列表
  addFoods(state: cartState, foods: Ifood[]) {
    state.foods = foods
  },


  //加入购物车
  addCart(state: cartState, { id }: Ifood) {
    let record = state.carts.find(item => item.id == id)
    if (record) {
      record.count++
    } else {
      state.carts.unshift({id, count:1})
    }
    storage.set("carts", state.carts)
  },

  // 删除单个物品
  remCart(state: cartState, food: Ifood) {
    state.carts.forEach((item, index) => {
      if (item.id == food.id) {
        state.carts.splice(index, 1)
        ElMessage.success(`${food.name}删除成功!`)
        storage.set("carts", state.carts)
      }
    })
  },

  // 清空购物车
  clearCart(state: cartState) {
    state.carts = []
    storage.remove("carts")
  },

}

export default mutations
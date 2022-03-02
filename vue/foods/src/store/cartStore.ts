import { storage } from "@/util";
import { defineStore } from "pinia";

export default defineStore("cart", {
  state: () => ({
    carts: (storage.get("carts") as Ifood[]) || [],
    foods: (storage.get("buy-list") as Ifood[]) || [],
  }),
  getters: {
    // 获取总数量
    cTotalCount() {
      let total = 0;
      this.carts.map((item) => {
        total += item.buyCount;
      });
      return total;
    },
    // 计算总价格
    fTotalPrice() {
      let totalPrice = 0;
      this.foods.forEach((item) => {
        totalPrice += item.buyCount * item.price;
      });
      return totalPrice.toFixed(2);
    },
  },
  actions: {
    // 提交订单
    setFoods(foods: Ifood[]) {
      this.foods = foods;
      storage.set("buy-list", this.foods);
    },

    //加入购物车
    addCart(food: Ifood) {
      let record = this.carts.find((item) => item.id == food.id);

      if (record) {
        record.buyCount += food.buyCount;
      } else {
        this.carts.unshift(food);
      }
      storage.set("carts", this.carts);
    },

    // 修改购物车数量
    updCart({ id, buyCount }: Ifood) {
      let cart = this.carts.find((item) => item.id == id);
      if (cart) {
        cart.buyCount = buyCount;
        storage.set("carts", this.carts);
      }
    },

    // 删除
    remCart(ids: number[]) {
      ids.forEach((id) => {
        this.carts.forEach((item, index) => {
          if (item.id == id) {
            this.carts.splice(index, 1);
            storage.set("carts", this.carts);
          }
        });
      });
    },

    clearAllCart() {
      this.carts = [];
      storage.remove("carts");
      this.foods = [];
      storage.remove("buy-list");
    },
  },
});

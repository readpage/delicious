<template>
  <div class="cart">
    <div class="cart__header" style="position: relative">
      <div class="manage" @click="data.finish=!data.finish">
        {{data.finish?"管理":"完成"}}
      </div>
      <div class="title" style="position: absolute; left: 22px;">
        购物车
        <span></span>
      </div>
    </div>
    <el-empty description="暂无餐品" v-if="carts.length==0">
      <router-link :to="{path: '/'}">去逛逛</router-link>
    </el-empty>
    <template v-else>
     <el-scrollbar>
      <div class="cart__content">
        <el-checkbox-group v-model="data.checked"
          @change="handleCheckedCitiesChange">
          <el-card v-for="item in foods.value" :body-style="{padding: '10px'}">
            <div class="item-buy">
              <div class="item-buy__check">
                <el-checkbox :label="item.id"></el-checkbox>
              </div>
              <el-image fit="fill" :src="item.img"></el-image>
              <div class="item-buy__detail">
                <div class="title">
                  {{item.name}}
                </div>
                <div class="buy__func">
                  <span class="is-price">{{item.price}}</span>
                  <div class="count" v-if="!item.btn" @click="item.btn=!item.btn">x{{item.buyCount}}</div>
                  <template v-else>
                    <el-space>
                      <el-input-number size="mini" @change="onCount(item)" v-model="item.buyCount" :min="1"></el-input-number>
                      <el-button type="danger" icon="el-icon-close" size="mini" circle @click="item.btn=!item.btn"></el-button>
                    </el-space>
                  </template>
                </div>
              </div>
            </div>
          </el-card>
        </el-checkbox-group>
      </div>
     </el-scrollbar>
      <el-card>
          <div class="cart__footer">
            <el-checkbox
              :indeterminate="data.isIndeterminate"
              v-model="data.checkAll"
              @change="handleCheckAllChange"
              >全选</el-checkbox
            >
            <div class="func">
              <template v-if="data.finish">
                <span>合计: <span class="is-price">{{totalPrice}}</span></span>
                <el-button size="mini" type="info" @click="buy">去结算</el-button>
              </template>
              <template v-else>
                <el-button size="mini" type="danger" plain @click="remove">删除</el-button>
              </template>
            </div>
          </div>
        </el-card>
    </template>
  </div>
</template>

<script setup lang="ts">
import { useStore } from "@/store"
import cart from "@/store/modules/cart"
import { computed, reactive, ref, watch, toRefs, watchEffect } from "vue"
import { onBeforeRouteLeave, useRouter } from "vue-router"

const router = useRouter()
const { state, commit } = useStore()
const { carts } = toRefs(state.cart)


const data = reactive({
  checkAll: true,
  isIndeterminate: false,
  checked: [] as number[],
  finish: true,
  numVisible: true,
  totalPrice: 0,
})


const foods = computed(() => {
  carts.value.forEach(item => item.btn = false)
  return carts
})
const innerHeight = computed(() => state.user.browser.innerHeight)

watch(() => carts.value.length, val => {
  data.checked = carts.value.map(item => item.id)
}, {immediate: true, deep: true})

watchEffect(() => {
  cTotalPrice(data.checked)
})

function handleCheckAllChange(val: boolean) {
  let ids = carts.value.map(item => item.id)
  data.checked = val ? ids : []
  data.isIndeterminate = false
}
function handleCheckedCitiesChange(val: number[])  {
  data.checked = val
  const checkedCount = val.length;
  data.checkAll = checkedCount === carts.value.length;
  data.isIndeterminate = checkedCount > 0 && checkedCount < carts.value.length;
}
function buy() {
  let foods = data.checked.map(id => {
    return carts.value.find(item => item.id == id)
  })
  
  commit("cart/setFoods", foods)
  router.push("/confirm-orders")
}
function remove() {
  commit("cart/remCart", data.checked)
}
function onCount(val: Ifood) {
  commit("cart/updCart", val)
}
function cTotalPrice(ids: number[]) {
  let total = 0;
  ids.forEach(id => {
    let food = carts.value.find(item => item.id == id)
    if (food) {
      total += food.buyCount * food.price
    }
  })
  data.totalPrice = Number(total.toFixed(2))
}

onBeforeRouteLeave(() => {
  let ids = carts.value.map(item => item.id)
  handleCheckedCitiesChange(ids)
})

const { totalPrice } = toRefs(data)

</script>

<style lang="scss">
.cart {
  display: flex;
  flex-direction: column;
  height: calc(v-bind(innerHeight) - 80px);
  &__header {
    color: rgb(255, 255, 255);
    background-color: rgb(43, 46, 61);
    height: 44px;
    font-size: 12px;
    display: flex;
    text-align: center;
    line-height: 44px;

    .manage {
      position: absolute; 
      z-index: 200;
      cursor: pointer;
      width: 44px;
    }
    .title {
      font-size: 16px;
      width: calc(100% - 44px);
    }
  }

  &__content {
    .el-card {
      margin: 10px;
      height: 120px;
      box-sizing: border-box;

      .item-buy {
        display: flex;
        font-size: 16px;
        

        &__check {
          margin-right: 5px;
          display: flex;
          align-items: center;
          .el-checkbox__label {
            display: none !important;
          }
        }

        .el-image {
          width: 90px;
          height: 90px;
          margin-right: 10px;
        }

        &__detail {
          flex: 1;
          display: flex;
          flex-direction: column;
          justify-content: space-between;
          .buy__func {
            display: flex;
            justify-content: space-between;

            .el-input-number--mini {
              width: 100px;
            }

            .count {
              cursor: pointer;
              border: 0.5px solid #ccc;
              border-radius: 5px;
              font-size: 13px;
              padding: 1px 4px;
            }

            .el-button--mini.is-circle {
              padding: 7px;
            }

          }
        }
      }
    }
    
  }

  &__footer {
    display: flex;
    justify-content: space-between;

    .func {
      font-size: 12px;

      & > span {
        margin-right: 5px;
      }
    }
  }
}

@media (max-width: 768px) {
  .cart {
    height: calc(v-bind(innerHeight) - 50px);
  }
}

</style>
<template>
  <div class="cart">
    <div class="cart__header">
      <div class="manage" @click="data.finish=!data.finish">
        {{data.finish?"管理":"完成"}}
      </div>
      <div class="title">
        购物车
      </div>
    </div>
    <div class="cart__content">
      <el-checkbox-group v-model="data.checked"
        @change="handleCheckedCitiesChange">
        <el-card v-for="item in data.cards" :body-style="{padding: '10px'}">
          <div class="item-buy">
            <div class="item-buy__check">
              <el-checkbox :label="item.id"></el-checkbox>
            </div>
            <el-image fit="fill" src="https://i8.meishichina.com/attachment/recipe/2021/09/09/20210909163116442224666411321699.JPG?x-oss-process=style/p800"></el-image>
            <div class="item-buy__detail">
              <div class="title">
                香酥鱼条
              </div>
              <div class="buy__func">
                <span class="price">￥12</span>
                <div class="count" v-if="data.numVisible" @click="data.numVisible=!data.numVisible">x{{data.num}}</div>
                <template v-else>
                  <el-space>
                    <el-input-number size="mini" v-model="data.num"></el-input-number>
                    <el-button type="danger" icon="el-icon-close" size="mini" circle @click="data.numVisible=!data.numVisible"></el-button>
                  </el-space>
                </template>
              </div>
            </div>
          </div>
        </el-card>
      </el-checkbox-group>
    </div>
    <el-affix position="bottom" :offset="0">
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
              <span>合计: <span style="color: red">￥200</span></span>
              <el-button size="mini" type="info" @click="router.push('/confirm-orders')">去结算</el-button>
            </template>
            <template v-else>
              <el-button size="mini" type="danger" plain>删除</el-button>
            </template>
          </div>
        </div>
      </el-card>
    </el-affix>
  </div>
</template>

<script setup lang="ts">
import { reactive, ref } from "vue"
import { useRouter } from "vue-router"

const router = useRouter()

const data = reactive({
  checkAll: false,
  isIndeterminate: true,
  cards: [
    {id: 1},
    {id: 2},
    {id: 3}
  ],
  checked: [1, 2],
  finish: true,
  num: 0,
  numVisible: true
})

function handleCheckAllChange(val: any) {
  let ids = data.cards.map(item => {
    return item.id
  })
  data.checked = val ? ids : []
  data.isIndeterminate = false
}
function handleCheckedCitiesChange(val: any)  {
  const checkedCount = val.length;
  data.checkAll = checkedCount === data.cards.length;
  data.isIndeterminate = checkedCount > 0 && checkedCount < data.cards.length;
};


</script>

<style lang="scss">
.cart {
  &__header {
    color: rgb(255, 255, 255);
    background-color: rgb(43, 46, 61);
    height: 44px;
    font-size: 12px;
    display: flex;
    text-align: center;
    line-height: 44px;

    .manage {
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


</style>
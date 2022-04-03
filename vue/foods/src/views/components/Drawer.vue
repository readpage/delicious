<template>
  <el-drawer v-model="drawer" :with-header="false" direction="btt" size="370px">
    <div class="buy">
      <div class="buy__header">
        <div class="img">
          <el-image fit="fill" :src="food.img"></el-image>
        </div>
        <div class="detail">
          <span class="is-price">{{food.price}}</span>
          <!-- <span class="ml size-12">库存：{{food.count}}件</span> -->
          <div class="selected">
            <span>已选</span>
            <span class="ml">{{label}}</span>
          </div>
        </div>
      </div>
      <div class="buy__container">
        <el-scrollbar>
          <div class="label mb">规格</div>
          <div class="item">
            <el-space>
              <template v-for="item in obj.options">
                <el-button size="mini" :type="food.taste==item.value?'info':''" @click="onSelect(item)">{{item.label}}</el-button>
              </template>
            </el-space>
          </div>
          <div class="item">
            <div class="label">购买数量</div>
            <el-input-number v-model="food.buyCount" size="mini" :min="1"></el-input-number>
          </div>
        </el-scrollbar>
      </div>
      <div class="buy__footer">
        <el-button v-if="type == 0" size="small" type="info" style="width: 90%" @click="setCart">确定</el-button>
        <el-button v-else size="small" type="info" style="width: 90%" @click="buy">立即购买</el-button>
      </div>
    </div>
  </el-drawer>
</template>

<script setup lang="ts">
import { Utoast } from "@/packages/components/toast";
import cartStore from "@/store/cartStore";
import { ElMessage } from "element-plus";
import { ref, reactive, computed } from "vue"
import { onBeforeRouteLeave, useRouter } from "vue-router";

interface Props {
  food: Ifood
  type: number
}
const props = withDefaults(defineProps<Props>(), {})

const router = useRouter()
const cart = cartStore()

const drawer = ref(false)

const obj = reactive({
  options: [
    { label: "不辣", value: 0 },
    { label: "微辣", value: 1 },
    { label: "中辣", value: 2 },
    { label: "超辣", value: 3 }
  ],
})

const label = computed(() => {
  let t = obj.options.find((item) => item.value== props.food.taste)
  return t ? t.label : "不辣"
})

onBeforeRouteLeave(() => {
  drawer.value = false
})

const emit = defineEmits(["onSelect"])

function setCart() {
  cart.addCart(props.food)
  Utoast({message: "添加购物车成功"})
  drawer.value = false
}

function buy() {
  cart.setFoods([props.food])
  router.push("/confirm-orders")
}

function onSelect(val: any) {
  props.food.taste=val.value
  emit("onSelect", val.label)
}


export interface DrawerApi {
  drawer: boolean
}
defineExpose({
  drawer
})

</script>

<style lang="scss" scoped>
  .buy {
    padding: 10px;
    height: 100vh;
    box-sizing: border-box;
    overflow-x: hidden;
    &__header {
      padding-bottom: 10px;
      border-bottom: 1px solid #eee;
      display: flex;
      .img {
        height: 80px;
        width: 80px;
      }
      .detail {
        flex: 1;
        margin-left: 10px;
        padding-top: 5px;

        .selected {
          margin-top: 5px;
          font-size: 12px;
        }
      }
    }
    &__container {
      height: 200px;
      .item {
        padding: 10px 0;
        display: flex;
        justify-content: space-between;
      }
    }
    &__footer {
      height: 40px;
      margin: auto;
      display: flex;
      justify-content: space-around;
      align-items: center;
    }
  }
</style>
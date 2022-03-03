<template>
  <div class="foods-detail">
    <div class="header">
      <el-page-header @back="$router.back()" content="商品详情"></el-page-header>
    </div>
    <el-scrollbar ref="scrollbar">
      <div class="content">
        <div class="main">
          <el-skeleton :loading="loading" animated>
            <template #template>
              <el-skeleton-item variant="image" class="img" />
            </template>
            <template #default>
              <div class="img">
                <el-image :src="food.img" fit="fill"></el-image>
              </div>
            </template>
          </el-skeleton>
          <div class="info">
            <el-card>
              <el-skeleton :loading="loading" animated>
                <template #template> 
                </template>
                <template #default>
                  <div class="name">
                    {{ food.name }}
                  </div>
                  <div class="attr">
                    <span class="is-price">{{ food.price }}</span>
                    <span>{{ food.count || 0 }}件已售</span>
                  </div>
                  <div class="flex justify-between text-sm text-gray-500 mt-2.5" @click="openDrawer(1)">
                    <span>选择规格</span>
                    <span>{{data.label}}<i class="el-icon-arrow-right"></i></span>
                  </div>
                </template>
              </el-skeleton>
            </el-card>
          </div>
          <div class="detail">
            <el-card>
              <el-skeleton :loading="loading">
                <template #template></template>
                <template #default>
                  <div class="detail__header">商品原料</div>
                  <div class="detail__content" v-if="food.material">
                    {{food.material}}
                  </div>
                  <div class="empty" v-else>暂无内容</div>
                </template>
              </el-skeleton>
            </el-card>
          </div>
          <div class="detail">
            <el-card>
              <el-skeleton :loading="loading">
                <template #template></template>
                <template #default>
                  <div class="detail__header">商品详情</div>
                  <div class="detail__content" v-if="food.content">
                    {{food.content}}
                  </div>
                  <div class="empty" v-else>暂无详情</div>
                </template>
              </el-skeleton>
            </el-card>
          </div>
          <div class="comment">
            <el-card :body-style="{padding: '0px'}">
              <el-skeleton :loading="loading">
                <template #template></template>
                <template #default>
                  <div class="header p-2.5">
                    <span>商品评论(0)</span>
                    <span>好评率100%</span>
                  </div>
                  <div class="comment__content">
                    <v-comment :fId="$route.params.id"></v-comment>
                  </div>
                </template>
              </el-skeleton>
            </el-card>
          </div>
        </div>
        <div class="more">
          <div class="more__content">
            <div class="header">
              <span>热门专题</span>
              <span>更多</span>
            </div>
            <el-divider content-position="left"
              ><i class="el-icon-food"></i
            ></el-divider>
            <div class="tags">
              <div v-for="(item, index) in label" class="tag">
                <el-tag :key="index" effect="plain">{{ item }}</el-tag>
              </div>
            </div>
          </div>
          <div class="more__recommend">
            <div class="header">推荐</div>
            <el-divider content-position="left"
              ><i class="el-icon-chicken"></i
            ></el-divider>
            <div class="cards">
              <FoodCard :data="item" height="255px" v-for="item in foods" />
            </div>
          </div>
        </div>
      </div>
    </el-scrollbar>
    <el-backtop target=".el-scrollbar__wrap"></el-backtop>
    <div class="footer">
      <div class="tools" @click="router.push('/cart')">
        <el-space direction="vertical" :size="0">
          <i class="el-icon-shopping-cart-full"></i>
          <span style="font-size: 12px">购物车</span>
        </el-space>
      </div>
      <div class="btn">
        <el-button size="mini" @click="openDrawer(0)">加入购物车</el-button>
        <el-button size="mini" type="info" @click="openDrawer(1)"
          >立即购买</el-button
        >
      </div>
    </div>
    <Drawer :type="type" :food="food" ref="drawerRef" @onSelect="onSelect" />
  </div>
</template>

<script setup lang="ts">
import { Afood } from "@/api";
import { computed, reactive, ref, toRefs, watch } from "vue";
import { useRoute, useRouter } from "vue-router";
import Drawer from "../components/Drawer.vue";
import type { DrawerApi } from "../components/Drawer.vue";
import FoodCard from "@/components/FoodCard.vue"
import appStore from "@/store/appStore";
import { storeToRefs } from "pinia";

const app = appStore()
const { loading } = storeToRefs(app)
const router = useRouter();
const route = useRoute();

const data = reactive({
  food: {} as Ifood,
  foods: [] as Ifood[],
  type: 0,
  label: ""
});

const drawerRef = ref({} as DrawerApi);
const scrollbar = ref();

watch(
  () => route.params.id,
  (val) => {
    if (val) {
      app.showLoading()
      if (scrollbar.value) {
        scrollbar.value.setScrollTop(0);
      }
      Afood.getById({ urlParam: `/${val}` }).then((res) => {
        data.food = res.data;
        data.food.buyCount = 1
        data.food.taste = 0
      });
    }
  },
  { immediate: true }
);

app.showOtherLoading()
Afood.random({ urlParam: "/10" }).then((res) => {
  data.foods = res.data;
  app.hideOtherLoading()
});

const label = ref([
  "酱牛肉",
  "香椿鱼儿",
  "糯米丸子",
  "香辣猪蹄",
  "梅干菜扣肉",
  "麻酱烧饼",
  "海参蒸蛋",
  "土豆炖牛腩",
  "杏子果酱",
  "牛肉炒饭",
  "南瓜小米糊",
  "海鲜意大利面",
  "绿豆冰棒",
  "双色刀切馒头",
  "蜜豆蛋挞",
  "咕咾肉",
  "葱香千层饼",
  "辣炒香干",
  "京都肉饼",
  "鸡蛋韭菜盒子",
  "豆角炒鸡蛋",
  "排骨南瓜盅",
  "茶香排骨",
  "四川凉面",
  "炒虾",
  "粉丝蒸娃娃菜",
  "酥香小麻花",
  "秋葵炒肉丝",
  "南瓜蒸百合",
  "蒜蓉黄瓜",
]);
function openDrawer(val: number) {
  data.type = val
  drawerRef.value.drawer = true
}

function onSelect(val: any) {
  data.label = val
}

const { food, foods, type } = toRefs(data);
</script>

<style lang="scss">
.foods-detail {
  margin: 0 auto;
  box-sizing: border-box;
  height: 100%;
  display: flex;
  flex-direction: column;
  background-color: #f7f7f7;

  & > .header {
    padding: 10px;
    height: 44px;
    background-color: #fff;
  }

  .content {
    padding: 10px;
    display: flex;
    font-size: 14px;

    .main {
      width: calc(100% - 380px);
      box-sizing: border-box;
      padding: 20px;

      .empty {
        color: #999;
        text-align: center;
        padding: 5px 0 20px 0;
      }

      .img {
        width: 80%;
        height: 300px;
        margin: 0 auto;
      }

      .el-card__body {
        padding: 10px;
      }

      .info {
        margin-top: 10px;

        .attr {
          margin-top: 10px;
          span:nth-child(2) {
            font-size: 12px;
            color: #fff;
            margin-left: 10px;
            border-radius: 15px;
            background-color: rgba(0, 0, 0, 0.3);
            padding: 0 5px;
          }
        }
      }

      .comment {
        margin: 10px 0;
        .header {
          display: flex;
          justify-content: space-between;
        }
      }

      .detail {
        margin: 10px 0;

        &__header {
          margin-bottom: 20px;
        }
        &__content {
          text-indent: 2em;
          font-size: 17px;
          font-weight: 500;
        }
      }
    }

    .more {
      width: 380px;
      background-color: #fff;
      box-sizing: border-box;
      padding: 10px;


      &__content {
        .header {
          display: flex;
          justify-content: space-between;
          box-sizing: border-box;
        }
        .tags {
          display: grid;
          grid-template-columns: repeat(3, 1fr);
          gap: 20px;

          .tag {
            display: grid;
            place-content: center;
          }
        }
      }

      &__recommend {
        margin-top: 40px;

        .cards {
          display: grid;
          grid-template-columns: repeat(2, 1fr);
          gap: 10px 5px;

          .card-container {
            box-sizing: border-box;
            .card-img {
              overflow: hidden;
              position: relative;
              height: 130px;

              .el-image {
                transition: all 0.5s ease-out;
              }

              .overlay {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: #000;
                opacity: 0;
                transition: all 0.5s ease-out;
              }
            }

            .label {
              box-sizing: content-box;
              height: 16px;
              font-size: 14px;
              padding: 5px;
              font-weight: 500;
              -webkit-line-clamp: 1;
            }

            .desc {
              padding: 5px;
              span:nth-child(2) {
                font-size: 12px;
                margin-left: 10px;
                color: rgb(153, 153, 153);
              }
            }
          }

          .card-container:hover {
            .el-image {
              transform: scale(1.1);
            }

            .label {
              color: red;
            }

            .overlay {
              opacity: 0.2;
            }
          }
        }
      }
    }
  }

  @media (max-width: 900px) {
    .content {
      flex-direction: column;
      .main {
        padding: 0px;
        .img {
          width: 100%;
        }
      }
      .main,
      .more {
        width: 100%;
      }
    }
  }

  .footer {
    border-top: 0.5px solid #ccc;
    height: 50px;
    background-color: #fff;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 5px 10px;

    .tools {
      cursor: pointer;
    }
  }
}

@media (min-width: 1200px) {
  .foods-detail {
    width: calc(100% - 330px);
  }
}

@media (max-width: 1200px) {
  .el-backtop {
    right: 10px !important;
    bottom: 60px !important;
  }
}
</style>

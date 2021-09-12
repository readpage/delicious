<template>
  <div class="foods-detail">
    <div class="header">
      <el-page-header @back="goBack" content="商品详情"></el-page-header>
    </div>
    <el-scrollbar ref="scrollbar">
      <div class="content">
        <div class="main">
          <div class="img">
            <el-image src="https://i8.meishichina.com/attachment/recipe/2021/09/09/20210909163116442224666411321699.JPG?x-oss-process=style/p800" fit="fill"></el-image>
          </div>
          <div class="info">
            <el-card>
              <div class="name">
                香酥鱼条
              </div>
              <div class="attr">
                <span>￥10.2</span>
                <span>20件已售</span>
              </div>
            </el-card>
          </div>
          <div class="comment">
            <el-card>
              <div class="header">
                <span>商品评论(0)</span>
                <span>好评率100%</span>
              </div>
              <div class="comment__content">
                <div class="empty">暂无评论</div>
              </div>
            </el-card>
          </div>
          <div class="detail">
            <el-card>
              <div class="detail__header">商品详情</div>
              <!-- <div class="empty">暂无详情</div> -->
              <div class="detail__content">
                随着开学季的到来，妈妈们有开始为孩子的午餐便当而犯愁了，孩子课业压力大，吃饱吃好才能精力充沛的面对一天的学习，今天分享的香酥鱼条就超级适合做学生便当。
今天的鱼条用到的鱼是拥有MSC小蓝鱼标识的比目鱼，山姆的袋装比目鱼抽真空分装，特别方便，经过处理后的鱼肉无刺，放心做给孩子吃，制作过程也免去了处理鱼刺的困扰。
比目鱼含有丰富的不饱和脂肪酸Omega-3，以及丰富的蛋白质，维生素等等，比目鱼含有大脑组成需要的DHA，经常食用可增强智力，特别适合正在发育的孩子和学习压力大的学生，开学季的餐桌怎能少了它！
              </div>
            </el-card>
          </div>
        </div>
        <div class="more">
          <div class="more__content">
            <div class="header">
              <span>热门专题</span>
              <span>更多</span>
            </div>
            <el-divider content-position="left"><i class="el-icon-food"></i></el-divider>
            <div class="tags">
              <div v-for="(item, index) in label" class="tag">
                <el-tag  :key="index" effect="plain">{{item}}</el-tag>
              </div>
            </div>
          </div>
          <div class="more__recommend">
            <div class="header">推荐</div>
            <el-divider content-position="left"><i class="el-icon-chicken"></i></el-divider>
            <div class="cards">
              <el-card :body-style="{ padding: '0px'}" v-for="item in data">
                <div class="card-container">
                  <router-link :to="{path: `/foods/detail/${item.id}`}" @click.native="active">
                    <div class="card-img">
                      <el-image :src="item.img" fit="fill"></el-image>
                      <span class="overlay"></span>
                    </div>
                  </router-link>
                  <div class="label ellipsis">{{ item.label }}</div>
                  <div class="desc">
                    <span>￥{{item.price}}</span>
                    <span>{{item.count}}件已售</span>
                  </div>
                </div>
              </el-card>
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
          <span style="font-size: 12px;">购物车</span>
        </el-space>
      </div>
      <div class="btn">
        <el-button size="mini">加入购物车</el-button>
        <el-button size="mini" type="info" @click="router.push('/confirm-orders')">立即购买</el-button>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue"
import { useRouter } from "vue-router";

const router = useRouter()

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
  "蒜蓉黄瓜"
])

const data = ref([
  {
    id: 1,
    img: "https://i8.meishichina.com/attachment/recipe/2021/09/09/20210909163116442224666411321699.JPG?x-oss-process=style/p800",
    label: "香酥鱼条",
    price: "10.2",
    count: "20"
  },
  {
    id: 2,
    img: "https://i3.meishichina.com/attachment/recipe/2021/09/09/2021090916311585919298197577.jpg?x-oss-process=style/c320",
    label: "时蔬烧五花肉",
    price: "13.2",
    count: "10"
  },
  {
    id: 3,
    img: "https://i3.meishichina.com/attachment/recipe/2021/09/11/2021091116313690648841958079.jpg?x-oss-process=style/c320",
    label: "糯米粉红薯丸子",
    price: "10.3",
    count: "23"
  },
  {
    id: 4,
    img: "https://i3.meishichina.com/attachment/recipe/2021/09/11/2021091116313517169521958079.jpg?x-oss-process=style/c320",
    label: "青瓜胡萝卜炒牛肉",
    price: "25.3",
    count: "23"
  },
  {
    id: 5,
    img: "https://i3.meishichina.com/attachment/recipe/2021/09/11/2021091116313687379571958079.jpg?x-oss-process=style/c320",
    label: "蒜香豆腐",
    price: "10.3",
    count: "11"
  },
  {
    id: 6,
    img: "https://i3.meishichina.com/attachment/recipe/2021/09/11/2021091116313683606001958079.jpg?x-oss-process=style/c320",
    label: "韭菜炒豆腐",
    price: "12.3",
    count: "21"
  }
])

function goBack() {
  router.push("/")
}

const scrollbar = ref()
function active() {
  scrollbar.value.setScrollTop(0)
}
</script>

<style lang="scss">
.foods-detail {
  margin: 0 auto;
  box-sizing: border-box;
  height: 100vh;
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
      width: calc(100% - 330px);
      box-sizing: border-box;
      padding: 20px;

      .empty {
        color: #999;
        text-align: center;
        padding: 5px 0 20px 0;
      }

      .img {
        height: 380px;
        display: flex;
        justify-content: center;
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
            background-color: rgba(0,0,0,.3);
            padding: 0 5px;
          }
        }
      }

      .comment {
        margin-top: 10px;
        .header {
          display: flex;
          justify-content: space-between;
        }
      
      }

      .detail {
        margin:10px 0;

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
      width: 330px;
      background-color: #fff;
      box-sizing: border-box;
      padding: 10px;

      .el-divider--horizontal {
        margin: 10px 0;
      }

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
                width: 100%;
                height: 100%;
                transition: all .5s ease-out;
              }

              .overlay {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: #000;
                opacity: 0;
                transition: all .5s ease-out;
              }
            }

            .label {
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
              opacity: .2;
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
      }
      .main, .more {
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
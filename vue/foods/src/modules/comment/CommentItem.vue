<template>
  <div class="flex p-4">
    <div>
      <el-avatar :size="50" :src="comment.avatar">
        <img src="@/assets/img/avatar.png" alt="">
      </el-avatar>
    </div>
    <div class="pl-4 flex-1 overflow-hidden">
      <p>{{comment.username}}</p>
      <p class="text-gray-600 text-sm">{{comment.createTime}}
        <span v-if="!comment.state" class="ml-5 text-red-500">评论审核中...</span>
      </p>
      <v-fold :data="comment.content" :unfold="true"></v-fold>
      <p class="text-gray-500 text-sm flex justify-between">
        <div>
          <v-icon name="#icondianzan"></v-icon>
          <span class="ml-1">{{2000}}</span>
          <v-icon name="#iconcai" class="ml-2.5"></v-icon>
          <v-icon name="#iconpinglun" class="ml-2.5 cursor-pointer" @click="onComment(comment.username)"></v-icon>
        </div>
        <v-icon name="#icondiandian"></v-icon>
      </p>
      <ReplyBox :id="comment.id" @on-comment="onComment" />
    </div>
  </div>
  <div class="border-b border-gray-300 my-2 mb-4"></div>
</template>

<script setup lang="ts">
import userStore from "@/store/userStore"
import { storeToRefs } from "pinia"
import { nextTick, onMounted, reactive, ref } from "vue"
import Fold from "./Fold.vue"
import ReplyBox from "./ReplyBox.vue"

interface propsApi {
  comment: Icomment
}
const props = withDefaults(defineProps<propsApi>(), {})

const user = userStore()
const { parentId } = storeToRefs(user)

const obj = reactive({
  ifOver: false, // 文本是否超出三行，默认否
  unfold: false, // 文本是否是展开状态 默认为收起
  isOver: false,
})


function isOver(val: any) {
  obj.isOver = val
}

function onComment(username: any) {
  let id = props.comment.id as any
  user.setParentId(id)
  nextTick(() => {
    let commentBox = document.getElementById(id)
    
    if (commentBox) {
      let commentInput = commentBox.querySelector("#commentInput") as any
      commentInput.placeholder = "回复 @" +username
      commentBox.scrollIntoView({block:"center"})
      if (commentInput)  commentInput.focus()
    }
  })
}

function tranId(val: any) {
  return val
}

</script>

<style lang="scss" scoped>
.txt {
  font-size: 16px;
  color: #333;
  margin-bottom: 5px;
}
.over-hidden {
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3;
  overflow: hidden;
}
.over-hidden-2 {
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 2;
  overflow: hidden;
}

</style>
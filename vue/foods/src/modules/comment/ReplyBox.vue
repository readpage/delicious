<template>
  <div v-if="obj.reply.length != 0" class="replyBox p-2.5 mt-4 bg-gray-100">
    <div class="flex mb-6" v-for="item in obj.reply.slice(0, 3)">
      <div>
        <el-avatar :size="40" :src="item.avatar">
          <img src="@/assets/img/avatar.png" alt="">
        </el-avatar>
      </div>
      <div class="pl-2 text-sm flex-1 overflow-hidden">
        <p>{{item.username}}</p>
        <p class="text-gray-400">{{item.createTime}}
          <span v-if="!item.state" class="ml-5 text-red-500">回复审核中...</span>
        </p>
        <v-fold :data="item.content" :unfold="true" :line="2"></v-fold>
        <p class="text-gray-500 text-sm flex justify-between">
          <div>
            <v-icon name="#icondianzan"></v-icon>
            <span class="ml-1">{{2000}}</span>
            <v-icon name="#iconcai" class="ml-2.5"></v-icon>
            <v-icon name="#iconpinglun" class="ml-2.5 cursor-pointer" @click="onComment(item.username)"></v-icon>
          </div>
          <v-icon name="#icondiandian" class="cursor-pointer"></v-icon>
        </p>
      </div>
    </div>
    <div v-if=" obj.reply.length > 3" class="text-gray-400 text-sm">
      <span>共{{obj.reply.length}}条回复,</span>
      <span class="text-blue-400 cursor-pointer" @click="obj.isMore=true">点击查看</span>
    </div>
    <el-pagination v-if="obj.isMore" class="mt-4" background small layout="total, prev, pager, next" :total="50"></el-pagination>
    <CommentBox :id="tranId(id)" v-show="id == parentId" @submit="submit"  />
  </div>
  <div v-else>
    <CommentBox :id="tranId(id)" v-show="id == parentId" @submit="submit"  />
  </div>
</template>

<script setup lang="ts">
import { Acomment } from "@/api"
import userStore from "@/store/userStore";
import { storeToRefs } from "pinia";
import { nextTick, reactive, ref, toRefs, watch } from "vue"
import { useRouter } from "vue-router"
import { Vtoast } from "../toast";
import CommentBox from "./CommentBox.vue";

interface propsApi {
  id: number
}
const props = withDefaults(defineProps<propsApi>(), {})
const user = userStore()
const {parentId, userInfo} = storeToRefs(user)

const router = useRouter()

const obj = reactive({
  isOver: false,
  isMore: false,
  isComment: false,
  reply: [] as Icomment[]
})

watch(() => props.id, val => {
  Acomment.page({urlParam: `/1/10`, parentId: val}).then(res => {
    obj.reply = res.data.list
  })
}, {immediate: true})

const emit = defineEmits(["onComment"])
function onComment(username: any) {
  emit("onComment", username)
}

function tranId(val: any) {
  return val
}

function submit(val: any) {
  if (userInfo.value.id) {
    let data = {
      content: val,
      parentId: parentId.value,
      uid: userInfo.value.id
    }
    Acomment.add(data).then(res => {
      Acomment.page({urlParam: `/1/10`, parentId: parentId.value}).then(res => {
        Vtoast({message: "回复成功!"})
        obj.reply = res.data.list
      })
    })
  } else {
    router.push("/sign")
  }
}

</script>

<style lang="scss" scoped>

</style>
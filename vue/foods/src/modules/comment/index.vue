<template>
  <div class="v-comment">
    <CommentBox @submit="submit" />
    <div v-for="comment in comments" :key="comment.id">
      <CommentItem :comment="comment" />
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, toRefs } from "vue";
import CommentItem from "./CommentItem.vue";
import { Acomment } from "@/api";
import CommentBox from "./CommentBox.vue";
import { useRouter } from "vue-router";
import { Vtoast } from "../toast";
import userStore from "@/store/userStore";
import { storeToRefs } from "pinia";

interface propsApi {
  fId: number
}
const props = defineProps<propsApi>()

const store = userStore()
const { userInfo } = storeToRefs(store)
const router = useRouter()

const comments = ref()

function page() {
  Acomment.page({urlParam: `/1/10`, fId: props.fId}).then(res => {
    comments.value = res.data.list
  })
}
page()

function submit(val: any) {
  if (userInfo.value.id) {
    let data = {
      content: val,
      fId: props.fId,
      uid: userInfo.value.id
    }
    Acomment.add(data).then(res => {
      Vtoast({message: "评论成功!"})
      page()
    })
  } else {
    router.push("/sign")
  }
}


</script>

<style lang="scss" scoped></style>

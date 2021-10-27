<template>
  <div id="commentBox" class="w-full mt-2 border-gray-300 flex">
    <el-input id="commentInput" @focus="onFocus" @blur="onBlur" class="p-2 pr-0" v-model="content" :autosize="{ minRows: 1.1, maxRows: 4 }"
      type="textarea" placeholder="发一条友善的评论" clearable>
    </el-input>
    <el-button class="p-2" type="text" @click="submit">发布</el-button>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue"

const content = ref()

const emit = defineEmits(["submit"])

function onFocus() {

}

function onBlur() {
}

function submit() {
  emit("submit", content.value)
  content.value = ""
}

</script>

<style lang="scss" scoped>

</style>
<template>
  <el-popover placement="bottom" :width="250" trigger="click" @show="onBefore">
    <div class="face-tooltip-head user-select">
      <label 
        v-for="(item, index) in faceList" 
        :key="index"
        :class="activeIndex==index ? 'active': ''"
        @click="change(index)">
        <img :src="item" alt="">
      </label>
    </div>

    <div class="emoji-body user-select">
      <div class="emjio-container" :style="{transform: `translateX(${offsetX}%)`}">
        <div class="emoji-wrapper" v-for="list in emojis">
          <span
            class="emoji-item"
            v-for="(value, key, index) in list"
            :key="key"
            @click="$emit('addEmoji', key)"
          >
          <el-image
            :src="value"
            :title="String(key)"
            class="emoji"
            style="width: 24px; height: 24px; margin: 5px"
            lazy
          ></el-image>
          </span>
        </div>
      </div>
    </div>
    <template #reference>
      <div class="emoji-btn user-select">
        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg" class="icon"><path data-v-9fe533ba="" fill-rule="evenodd" clip-rule="evenodd" d="M8.00002 0.666504C12.0501 0.666504 15.3334 3.94975 15.3334 7.99984C15.3334 12.0499 12.0501 15.3332 8.00002 15.3332C3.94993 15.3332 0.666687 12.0499 0.666687 7.99984C0.666687 3.94975 3.94993 0.666504 8.00002 0.666504ZM8 2C4.68629 2 2 4.68629 2 8C2 11.3137 4.68629 14 8 14C11.3137 14 14 11.3137 14 8C14 4.68629 11.3137 2 8 2ZM10.6667 5.66667V7.66667H9.33333V5.66667H10.6667ZM6.66667 5.66667V7.66667H5.33333V5.66667H6.66667ZM10.0767 9.33333H11.0495C11.1804 9.33333 11.2866 9.43951 11.2866 9.57048C11.2866 9.60754 11.2779 9.64409 11.2612 9.67718L11.244 9.71053C10.6294 10.8739 9.40726 11.6667 7.99998 11.6667C6.61523 11.6667 5.40977 10.8991 4.7859 9.76612L4.73786 9.67593C4.67845 9.56052 4.72385 9.4188 4.83926 9.35939C4.87253 9.34226 4.90941 9.33333 4.94683 9.33333H5.92347C6.02396 9.33332 6.11908 9.37865 6.18238 9.4567C6.26207 9.55496 6.32833 9.62955 6.38117 9.68046C6.80074 10.0847 7.37133 10.3333 7.99998 10.3333C8.63289 10.3333 9.20694 10.0814 9.62728 9.67224C9.67791 9.62296 9.74135 9.55121 9.8176 9.45698C9.88089 9.37877 9.97611 9.33333 10.0767 9.33333Z"></path></svg>
        <span>表情</span>
      </div>
    </template>
  </el-popover>
</template>

<script setup lang="ts">
import { ref } from "vue";
import { emojiList, faceList } from "./emoji";

const activeIndex = ref(0);
const offsetX = ref(0)
const emojis = ref<{}[]>(new Array(2))

const emit = defineEmits<{
  (e: "addEmoji", key: string): void
  (e: "show", val: boolean): void
}>()

function change(val: number) {
  activeIndex.value = val
  switch (val) {
    case 0:
      offsetX.value = 0
      break
    case 1:
      offsetX.value = -50
      emojis.value[1] = emojiList[1]
      break
  }
}

function onBefore()  {
  emojis.value[0] = emojiList[0]
}


</script>

<style lang="scss" scoped>

.face-tooltip-head {
  display: flex;

  label {
    width: 0;
    flex-grow: 1;
    text-align: center;
    font-size: 14px;
    height: 35px;
    line-height: 35px;
    border-bottom: 1px solid #f1f1f1;
    cursor: pointer;
    transition: border-color 0.25s;

    &.active {
      color: #1e80ff;
      border-bottom-color: #1e80ff;
    }

    img {
      width: 18px;
      height: 18px;
    }
  }
}
.emoji-body {
  overflow: hidden;
  .emjio-container {
    width: 200%;
    display: flex;
    transition: transform .1s;
  }
}

.emoji-btn {
  display: flex;
  align-items: center;
  cursor: pointer;
  .icon {
    fill: #515767;
    margin-right: 4px;
  }
  span {
    font-size: 14px;
  }
}
.emoji-btn:hover {
  color: #1e80ff;

  .icon {
    fill: #1e80ff;
  }
}

.emoji-wrapper {
  flex: 1;
  height: 150px;
  overflow-y: auto;

  .emoji-item {
    cursor: pointer;
    display: inline-block;
  }
  .emoji-item:hover {
    transition: all 0.2s;
    border-radius: 0.25rem;
    background-color: #dddddd;
  }
}

.el-image {
  display: block;
}
</style>

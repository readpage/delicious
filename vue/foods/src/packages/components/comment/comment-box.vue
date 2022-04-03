<template>
  <div class="form-box" v-click-outside:[popperRef]="onClickOutside">
    <u-editor
      :class="{'input-active': action}"
      ref="editor"
      v-model="content"
      :placeholder="props.placeholder"
      @focus="onFocus"
      @input="isEmpty(content) ? disabled = true : disabled = false"
    >
    </u-editor>
    <Transition name="fade">
      <div v-if="action" class="action-box">
        <Emoji @add-emoji="val => editor?.addText(val)" />
        <el-button type="primary" size="mini" @click="submit(() => editor.clear(), content, parentId)" :disabled="disabled">{{props.contentBtn}}</el-button>
      </div>
    </Transition>
  </div>
</template>

<script setup lang="ts">
import { isEmpty } from "@/packages/utils";
import { ClickOutside as vClickOutside } from "element-plus"
import { inject, nextTick, ref } from "vue";
import Emoji from "./emoji/index.vue";
import type { EditorApi } from "@/packages/components/editor/index.vue"
import { InjectionCommentFun } from "@/packages/types";

export interface CommentBoxApi {
  focus(): void
}

interface Props {
  placeholder: string
  contentBtn: string
  parentId?: number
}

const props = defineProps<Props>()

const content = ref("");
const action = ref(false)
const disabled = ref(true)
const editor = ref({} as EditorApi)
const popperRef = ref()

const emit = defineEmits<{
  (e: "hide", event: Event): void
}>()

const {submit} = inject(InjectionCommentFun) as commentFun

function onClickOutside(event: Event) {
  // const child = event.target as HTMLElement
  // const target = document.querySelector(".el-popper")
  // if (!target?.contains(child) && isEmpty(content.value)) {
  //   action.value = false
  // }
  if (isEmpty(content.value)) {
    action.value = false
    emit("hide", event)
  }
}

function onFocus() {
  action.value = true
  nextTick(() => {
    popperRef.value = document.querySelector("div[class^='el-popover']")
  })
}

function focus() {
  nextTick(() => {
    editor.value?.focus()
  })
}

defineExpose({
  focus
})
</script>

<style lang="scss" scoped>

.form-box {
  width: 100%;
  position: relative;
  overflow: hidden;
  .action-box {
    display: flex;
    margin-top: 8px;
    .el-button {
      margin-left: auto;
    }
  }
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity .2s;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>

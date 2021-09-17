<template>
  <el-upload
    ref="upload"
    name="file"
    :action="props.action"
    :headers="headers"
    :class="{'disabled': disabled}"
    list-type="picture-card"
    :on-error="handleError"
    :on-success="handleSuccess"
    :on-change="handleChange"
    :before-remove="beforeRemove"
    :on-preview="onPreview"
    :file-list="fileList"
  >
    <template #default>
      <i class="el-icon-picture"></i>
    </template>
  </el-upload>
  <el-dialog v-model="data.visible">
    <el-image :src="data.dialogImg" fit="fill"></el-image>
  </el-dialog>
</template>

<script setup lang="ts">
import { useStore } from "@/store";
import storage from "@/utils";
import { ElMessage, ElMessageBox } from "element-plus";
import { computed, defineEmit, onMounted, reactive, ref, watch, watchEffect } from "vue";

interface Props {
  action: string,
  fileList: []
}
const props = defineProps<Props>();

const { getters } = useStore()

const data = reactive({
  dialogImg: "",
  visible: false
})

const disabled = computed(() => props.fileList.length)
const headers = reactive({
  Authorization: "",
});
const token = getters["user/token"]
if (token) {
  headers.Authorization = token["token_type"] + " " + token["access_token"];
}
const upload = ref();


const emit = defineEmit(["success", "updImg"]);

function clearFiles() {
  emit("updImg", [])
  upload.value.clearFiles()
}

function handleChange(file: any, fileList: any) {
  const limit = file.size / 1024 / 1024 < 50;
  if (!limit) {
    ElMessage.error("上传文件不能超过 50MB!");
    fileList.splice(
      fileList.findIndex((f: any) => f.uid == file.uid),
    );
  } else {
    emit("updImg", fileList)
  }
}

function handleError() {
  ElMessage.error("上传失败！");
}

function handleSuccess(res: any, file: any, fileList: any) {
  let flag = true;
  if (res.code == 200) {
    ElMessage.success(`${file.name}文件上传成功！`);
  } else {
    ElMessage.error(res.msg);
    flag = false;
  }
  emit("success", res);
}

function beforeRemove(file: any, fileList: any) {  
  emit("updImg", fileList)
  emit("success", "");
}

function onPreview(file: any) {
  data.visible = true
  data.dialogImg = file.url
}

defineExpose({
  clearFiles,
})

</script>

<style lang="scss">
.disabled .el-upload {
  display: none;
}

.disabled {
  height: 128px;
}
.el-upload--picture-card, .el-upload-list__item {
  width: 128px !important;
  height: 128px !important;
  line-height: 128px !important;
}

</style>

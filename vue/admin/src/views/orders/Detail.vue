<template>
  <el-dialog title="详细信息" v-model="visible">
    <el-scrollbar height="400px">
      <el-card class="my-2.5 mr-2.5" v-for="item in data.foods">
        <div class="flex">
          <el-image class="h-20 w-20" :src="item.img"></el-image>
          <div class="ml-2.5 flex-1 overflow-hidden flex flex-col justify-between">
            <div>
              <p>{{item.name}}</p>
              <div class="flex justify-between">
                <p class="text-red-500 text-lg">￥{{item.price}}</p>
                <p>x{{item.count}}</p>
              </div>
            </div>
            <div>
              <span>用户:{{user.nickname}}</span>
              <span class="ml-2.5">手机号:{{user.phone}}</span>
            </div>
          </div>
        </div>
      </el-card>
    </el-scrollbar>
  </el-dialog>
</template>

<script setup lang="ts">
import { ref, watch } from "vue"

interface propsApi {
  data: Iorders
  user: Iuser
}

const props = withDefaults(defineProps<propsApi>(), {})

const visible = ref(false)

const emit = defineEmits(["open"])


export interface detailApi {
  visible: boolean
}
defineExpose({
  visible
})

</script>

<style lang="scss" scoped>

</style>
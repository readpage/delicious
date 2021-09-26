<template>
  <div class="cl-table">
    <el-space :size="10">
      <el-button size="mini" icon="el-icon-refresh" @click="reload">刷新</el-button>
    </el-space>
    <el-table :data="table" stripe
      ref="tableRef"
      :header-cell-style="{ background: '#f5f7fa', color: '#606266' }"
      max-height="500"
      v-loading="loading"
      element-loading-text="拼命加载中"
      element-loading-spinner="el-icon-loading">
      <template v-for="(item, index) in columns" :key="index">
        <el-table-column v-if="item.prop == 'img'" :label="item.label" :prop="item.prop" :width="item.width">
          <template #default="scope">
            <el-image :src="scope.row.img" style="height: 58px" :preview-src-list="[scope.row.img]" fit="cover"></el-image>
          </template>
        </el-table-column>
        <el-table-column v-else :label="item.label" :prop="item.prop" :width="item.width"></el-table-column>
      </template>
    </el-table>
  </div>
</template>

<script setup lang="ts">
import { reactive, toRefs } from "vue"

export interface Itable {
  loading?: boolean,
  columns: {
    label: string,
    prop: string,
    width?: string
  }[]
}
const props = withDefaults(defineProps<Itable>(), {
  loading: false,
})

const data = reactive({
  table: []
})


function reload() {

}

const { table } = toRefs(data)
</script>

<style lang="scss" scoped>

</style>
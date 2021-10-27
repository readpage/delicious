<template>
  <el-table :data="table.data" stripe
    :header-cell-style="{ background: '#f5f7fa', color: '#606266' }"
    max-height="500"
    v-loading="loading"
    @selection-change="handleSelectionChange"
    element-loading-text="拼命加载中"
    element-loading-spinner="el-icon-loading">
    <template v-for="(item, index) in table.columns" :key="index">
      <el-table-column v-if="item.type == 'selection'" type="selection" width="50"></el-table-column>
      <el-table-column v-else-if="item.type == 'img'" :label="item.label" :prop="item.prop" :width="item.width">
        <template #default="scope">
          <el-image :src="scope.row.img" style="height: 58px" :preview-src-list="[scope.row.img]" fit="cover"></el-image>
        </template>
      </el-table-column>
      <el-table-column v-else-if= "item.type == 'other'" :label="item.label">
        <template #default="scope">
          <slot :name="item.prop" :row="scope.row"></slot>
        </template>
      </el-table-column>
      <el-table-column v-else :label="item.label" :prop="item.prop" :width="item.width"></el-table-column>
    </template>
    <slot></slot>
    <template #empty>
      <el-empty style="height: 400px" :image-size="200"></el-empty>
    </template>
  </el-table>
  <el-pagination layout="total, sizes, prev, pager, next, jumper"
    small :total="table.total" :page-sizes="[5, 10, 20, 40]"
    :page-size="obj.pageSize"
    background
    @current-change="handleCurrentChange"
    @size-change="handleSizeChange"
  ></el-pagination>
</template>

<script setup lang="ts">
import { computed, reactive, toRefs } from "vue"

export interface Itable {
  columns: {
    label?: string,
    prop?: string,
    width?: string,
    type?: string
  }[],
  data: {}[],
  total: number
}

interface propsApi {
  table: Itable
  loading?: boolean
}
const props = withDefaults(defineProps<propsApi>(), {
  loading: false
})

const obj = reactive({
  pageNum: 1,
  pageSize: 5,
})

const emit = defineEmits(["page", "onSelection"])
function handleSizeChange(val: number) {
  obj.pageSize = val
  emit("page", obj.pageNum, obj.pageSize)
}

function handleCurrentChange(val: number) {
  obj.pageNum = val
  emit("page", obj.pageNum, obj.pageSize)
}

function handleSelectionChange(val: any) {
  emit("onSelection", JSON.parse(JSON.stringify(val)))
}

function reload() {
  emit("page", obj.pageNum, obj.pageSize)
}
reload()



export interface tableApi {
  reload: Function
}
defineExpose({
  reload,
})
</script>

<style lang="scss">

.el-table {
  margin-bottom: 10px;
}

</style>
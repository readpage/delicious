<template>
  <div class="foods">
    <el-scrollbar>
      <Table ref="tableRef" :foods="data.foods"  :total="data.total"  @page="page" @save="save" @remove="remove" />
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Afood } from "@/api";
import { useStore } from "@/store";
import { reactive, ref } from "vue"
import Table from "./Table.vue";
import type {Api} from "./Table.vue";

const { state, commit } = useStore()

const data = reactive({
  foods: [] as Ifood[],
  total: 0,
})
const tableRef = ref<Api>()

function page({pageNum, pageSize}: any) {
  commit("user/showLoading")
  Afood.page({urlParam: `/${pageNum}/${pageSize}`}).then(res => {
    data.foods = res.data.list
    data.total = res.data.total
  })
}

function save(val: Ifood) {
  if (val.id) {
    Afood.update(val).then(res => {
      tableRef.value?.closeForm()
    })
  } else {
    Afood.save(val).then(res => {
      tableRef.value?.closeForm()
    })
  }
}

function remove(val: any) {
  Afood.remove({urlParam: `/${val}`}).then(res => {
    tableRef.value?.closeForm()
  })
}

</script>

<style lang="scss" scoped>

.foods {
  height: 100%;
  background: #fff;

}

</style>
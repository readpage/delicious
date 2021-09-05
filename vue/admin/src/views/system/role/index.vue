<template>
  <div class="view">
    <el-scrollbar>
      <div class="role">
        <el-space :size="10">
          <el-button size="mini" icon="el-icon-refresh" @click="reload">刷新</el-button>
          <Add />
          <Edit :disabled="table.editDisabled" type="success" msg="修改" @onUpdate="onUpdate(table.multipleSelection[0])"/>
          <el-button type="danger" size="mini" icon="el-icon-delete" :disabled="table.deleteDisabled" @click="onDelete(table.multipleSelection)">删除</el-button>
        </el-space>
        <el-table :data="table.role" stripe
          :header-cell-style="{ background: '#f5f7fa', color: '#606266' }"
          max-height="500"
          ref="tableRef"
          @selection-change="handleSelectionChange"
          v-loading="state.user.loading"
          element-loading-text="拼命加载中"
          element-loading-spinner="el-icon-loading">
          <el-table-column type="selection" width="50"></el-table-column>
          <el-table-column label="角色名称" prop="name" show-overflow-tooltip min-width="150"></el-table-column>
          <el-table-column label="昵称" prop="nickname" show-overflow-tooltip min-width="150"></el-table-column>
          <el-table-column label="创建时间" prop="createTime" width="180"></el-table-column>
          <el-table-column label="修改时间" prop="updateTime" width="180"></el-table-column>
          <el-table-column label="版本" prop="version" min-width="50"></el-table-column>
          <el-table-column label="操作" fixed="right" width="130">
            <template #default="scope">
              <el-space>
                <Edit type="primary" @onUpdate="onUpdate(scope.row)"/>
                <el-button type="danger" size="mini" icon="el-icon-delete" @click="onDelete([scope.row])"></el-button>
              </el-space>
            </template>
          </el-table-column>
        </el-table>
        <el-pagination layout="total, sizes, pre, pager, next, jumper"
          small :total="table.total" :page-sizes="[5, 10, 20, 40]"
          :page-size="table.pageSize"
          background
          @current-change="handleCurrentChange"
          @size-change="handleSizeChange"
        ></el-pagination>
      </div>
    </el-scrollbar>
  </div>
</template>

<script setup lang="ts">
import { Amenu, Arole } from "@/api";
import { useStore } from "@/store";
import { ImenuKey, IroleFormKey, roleForm }from "@/symbols";
import { deepTree } from "@/utils";
import { ElMessageBox } from "element-plus";
import { onMounted, provide, reactive, ref } from "vue"
import Add from "./components/Add.vue";
import Edit from "./components/Edit.vue";


const { state, commit } = useStore()

const table = reactive({
  total: 0,
  pageSize: 5,
  pageNum: 1,
  role: [] as Irole[],
  editDisabled: true,
  deleteDisabled: true,
  multipleSelection: [],
})
function handleSizeChange(val: number) {
  table.pageSize = val
  page()
}
function handleCurrentChange(val: number) {
  table.pageNum = val
  page()
}

function handleSelectionChange(val: any) {
  table.editDisabled = val.length != 1
  table.deleteDisabled = val.lenght == 0
  table.multipleSelection = val
}

provide(IroleFormKey, roleForm)
const menuIds = ref()
provide("menuIds", menuIds)
function onUpdate(val: any) {
  const temp = JSON.parse(JSON.stringify(val))
  roleForm.value.role = temp

  commit("user/btnLoading")
  Arole.perm({urlParam: `/${temp.id}`}).then(res => {
    // let list = res.data.map((item: any) => {
    //   return item.mid
    // })
    
    // roleForm.value.menuIdList = list
    let ids: any[] = []
    const tree: Imenu[] = deepTree(res.data)
    const fn = (list: Imenu[]) => {
      list.forEach(item => {
        if (item.children) {
          fn(item.children)
        } else {
          ids.push(item.id)
        }
      })
    }
    fn(tree)
    console.log(tree, ids);
    
    menuIds.value = ids
  })
}

const menu = ref<Imenu[]>([])
provide(ImenuKey, menu)
function page() {
  commit("user/showLoading")
  Arole.page({urlParam: `/${table.pageNum}/${table.pageSize}`}).then(res => {
    table.role = res.data.list
    table.total = res.data.total
  })
}

const tableRef = ref()
function reload() {
  page()
  Amenu.list().then(res => {
    menu.value = deepTree(res.data)
  })
  if (tableRef.value) {
    tableRef.value.clearSelection()
  }
}
reload()
provide("reload", reload)

function onDelete(val: Irole[]) {
  ElMessageBox.confirm("确认删除?")
  .then(() => {
    let ids = val.map(item => {
      return item.id
    })
    commit("user/btnLoading")
    Arole.del({urlParam: `/${ids}`}).then(res => {
      reload()
    })
  })
}

</script>

<style lang="scss" scoped>
  .view {
    height: 100%;
    background: #fff;
    .role {
      padding: 10px;
      .el-space {
        margin-bottom: 10px;
      }
      .el-pagination {
        margin-top: 10px;
      }
    }
   
  }
</style>
import { InjectionKey, ref, Ref } from "vue";

export const userForm = ref<IuserForm>({
  username: "",
  nickname: "",
  password: "",
  roles: [] as number[],
  phone: "",
  email: "",
  status: true,
})
export const IuserFormKey: InjectionKey<Ref<IuserForm>> = Symbol()




export const role = ref<Irole[]>([{
  id: 0,
  name: "",
  nickname: "",
  createTime: "",
  updateTime: "",
  version: 1,
}])
export const IroleKey: InjectionKey<Ref<Irole[]>> = Symbol()


export const roleForm = ref<IroleForm>({
  role: {
    id: 0,
    name: "",
    nickname: ""
  },
  menuIdList: [] as number[],
})
export const IroleFormKey: InjectionKey<Ref<IroleForm>> = Symbol()





export const menu = ref<Imenu[]>([{
  id: 0,
  path: "",
  orderNum: 0,
  name: "",
  meta: {
    title: "",
    icon: "",
  },
  type: 0,
  component: "",
  parentId: 0,
  createTime: "",
  updateTime: "",
  version: 0,
  title: "",
  icon: "",
}])
export const ImenuKey: InjectionKey<Ref<Imenu[]>> = Symbol()
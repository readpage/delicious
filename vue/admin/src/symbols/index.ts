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

export const IroleFormKey: InjectionKey<Ref<IroleForm>> = Symbol()
export const roleForm = ref<IroleForm>({
  role: {
    name: "",
    nickname: ""
  },
  menuIdList: [] as number[]
})

export const ImenuKey: InjectionKey<Ref<Imenu[]>> = Symbol()
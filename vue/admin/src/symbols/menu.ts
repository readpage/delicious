import { Ref, ref, InjectionKey } from 'vue';

export const menuForm = ref<ImenuForm>({
  id: undefined,
  title: "",
  component: "",
  type: 0,
  parentId: undefined,
  icon: "",
  orderNum: 0,
  path: ""
})

export const menuFormKey: InjectionKey<Ref<ImenuForm>> = Symbol()

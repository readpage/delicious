import { InjectionKey, Ref } from "vue";


export const InjectionComment: InjectionKey<Ref<commentApi[]>> = Symbol()

export const InjectionCommentFun: InjectionKey<commentFun> = Symbol()
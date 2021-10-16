import { InjectionKey, ref, Ref } from "vue";


interface Irecent {
  uv: number[];
  userCount: number[];
  salesCount: number[];
  foodsCount: number[];
  date: string[];
}
export const recentForm = ref({
  uv: [0],
  userCount: [0],
  salesCount: [0],
  foodsCount: [0],
  date: ["0"],
})
export const IrecentKey: InjectionKey<Ref<Irecent>> = Symbol()
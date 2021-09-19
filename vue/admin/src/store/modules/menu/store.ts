import storage from '@/util';

export const createState = () => ({
  menu: storage.get("menu") as Imenu[] || [],
  routes: storage.get("routes") as Imenu[] || [],
  tagsList: [] as Itags[],
})

export type menuState = ReturnType<typeof createState>
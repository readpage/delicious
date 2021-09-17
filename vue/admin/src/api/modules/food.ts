import { apiAxios } from "../requests";

const page = apiAxios("/foods/page")
const save = apiAxios("/foods/save", 'post')
const update = apiAxios("/foods/update", "put")
const remove = apiAxios("/foods/remove", "delete")

export const Afood = {
  page,
  save,
  update,
  remove,
}
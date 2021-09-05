import { apiAxios } from "../requests";

const page = apiAxios("/log-info/page")
const clearAll = apiAxios("/log-info/clearAll", "delete")

export const Alog = {
  page,
  clearAll,
}
import { Afood } from './modules/food';
import { Alog } from './modules/log';
import { Amenu } from './modules/menu';
import { Arole } from './modules/role';
import { apiAxios } from "./requests"

const Alogin = apiAxios("/oauth/login", "post")
const Alogout = apiAxios("/oauth/logout", "delete")
const ArefToken = apiAxios("/oauth/refresh", "put")
const Aregister = apiAxios("/user/save", "post")

const Astatis = {
  recent: apiAxios("/statis/recent"),
  server: apiAxios<IsysInfo>("/statis/server"),
  total: apiAxios("/statis/total"),
  foodType: apiAxios("/statis/foodType")
}

const Auser = {
 page: apiAxios("/user/page"),
 info: apiAxios("/user/info"),
 add: apiAxios("/user/save", "post"),
 update: apiAxios("/user/update", "put"),
 isUser: apiAxios("/user/selectIsUser"),
 del: apiAxios("/user/removeByIds", "delete"),
 getById: apiAxios("/user/getById")
}

const Aorders = {
  page: apiAxios("/orders/page"),
  remove: apiAxios("/orders/remove", "delete")
}

const Adesk = {
  save: apiAxios("/desk/save", "post"),
  page: apiAxios("/desk/page"),
  remove: apiAxios("/desk/remove", "delete"),
  update: apiAxios("/desk/update", "put")
}

const Acomment = {
  page: apiAxios("/comment/page"),
  update: apiAxios("/comment/update", "put"),
  remove: apiAxios("/comment/remove", "delete")
}



export {
  Alogin,
  Alogout,
  ArefToken,
  Aregister,
  Auser,
  Arole,
  Amenu,
  Alog,
  Afood,
  Astatis,
  Aorders,
  Adesk,
  Acomment,
}

import { Afood } from './modules/food';
import { Alog } from './modules/log';
import { Amenu } from './modules/menu';
import { Arole } from './modules/role';
import { Auser } from './modules/user';
import { apiAxios } from "./requests"

const Alogin = apiAxios("/oauth/login", "post")
const Alogout = apiAxios("/oauth/logout", "delete")
const ArefToken = apiAxios("/oauth/refresh", "put")
const Aregister = apiAxios("/user/save", "post")
const Astatis = {
  recent: apiAxios("/statis/recent"),
  server: apiAxios<IsysInfo>("/statis/server")
}

const Aorders = {
  page: apiAxios("/orders/page")
}

const Adesk = {
  save: apiAxios("/desk/save", "post"),
  page: apiAxios("/desk/page")
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
}

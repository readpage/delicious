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
}

import {cookie, storage, getBrowser } from '@/util';
import { browserType } from '@/util';

const browser: browserType = getBrowser()

export const createState = () => ({
  browser,
  isMini: browser.isMini,
  loading: false,
  dNumber: storage.get("d-number") || "",
  userInfo: storage.get("userInfo") as Iuser || {},
  token: cookie.get("f1dao-token") as Itoken || {},
})



export type userState = ReturnType<typeof createState>
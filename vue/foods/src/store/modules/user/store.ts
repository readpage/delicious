import storage, { getBrowser } from '@/util';
import { browserType } from '@/util';

const browser: browserType = getBrowser()

export const createState = () => ({
  browser,
  isMini: browser.isMini,
  loading: false,
  userInfo: storage.get("userInfo") as Iuser || {},
  token: storage.get("token") as Itoken || {},
})



export type userState = ReturnType<typeof createState>
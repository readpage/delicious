import { getBrowser } from '@/utils';
import { browserType } from '@/utils';

const browser: browserType = getBrowser()

export const createState = () => ({
  browser,
  isMini: browser.isMini
})



export type userState = ReturnType<typeof createState>
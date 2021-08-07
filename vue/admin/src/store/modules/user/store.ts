import { getMenu } from "@/hooks/useMenu"

const browser = /Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)

export const createState = () => ({
  collapse: browser,
  menu: getMenu() || [],
})

export type userState = ReturnType<typeof createState>
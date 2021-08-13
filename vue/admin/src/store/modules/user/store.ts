const browser = /Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)

export const createState = () => ({
  collapse: browser,
  loading: true,
})


export type userState = ReturnType<typeof createState>
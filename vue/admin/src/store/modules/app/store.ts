export const createState = () => ({
  appLoading: false,
  otherLoading: false,
})


export type appState = ReturnType<typeof createState>
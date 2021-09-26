export const createState = () => ({
  loading: false,
  btnLoading: false,
  otherLoading: false,
})


export type appState = ReturnType<typeof createState>
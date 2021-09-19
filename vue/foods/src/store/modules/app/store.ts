export const createState = () => ({
  loading: false,
  btnLoading: false,
})


export type appState = ReturnType<typeof createState>
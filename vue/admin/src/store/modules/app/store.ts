export const createState = () => ({
  appLoading: false,
})


export type appState = ReturnType<typeof createState>
import storage from "@/utils"

export const createState = () => ({
  carts: storage.get("carts") as Ifood[] || [],
  foods: [] as Ifood[]
})

export type cartState = ReturnType<typeof createState>
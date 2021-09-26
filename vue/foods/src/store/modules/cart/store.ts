import storage from "@/util"

export const createState = () => ({
  carts: storage.get("carts") as Ifood[] || [],
  foods: storage.get("buy-list") as Ifood[] || []
})

export type cartState = ReturnType<typeof createState>
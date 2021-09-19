import storage from "@/util"

interface carts {
  id: number
  count: number
}

export const createState = () => ({
  carts: storage.get("carts") as carts[] || [],
  foods: [] as Ifood[]
})

export type cartState = ReturnType<typeof createState>
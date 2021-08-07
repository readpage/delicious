import { useRoutes } from '@/hooks/useRoutes';
import { useMenu } from "@/hooks/useMenu";
import { ActionContext } from "vuex";
import { userState } from "./store";

const actions = {
  updMenu({commit}: ActionContext<userState, unknown>) {
    useMenu().then(res => {
      commit("updMenu", res)
    })
  },
}

export default actions
import { closeLoad } from '@/hooks/useUser';
import { Alogin } from "@/api";
import { ActionContext } from "vuex";
import { menuState } from "../menu/store";
import { store } from '@/store';

const actions = {
  async appLoad({ commit, dispatch }: ActionContext<menuState, unknown>) {
    await store.dispatch("menu/permMenu")
    closeLoad()
  }
}

export default actions
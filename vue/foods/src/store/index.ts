import { cartState } from './modules/cart/store';
import { InjectionKey } from 'vue';
import { createStore,  useStore as baseUseStore, Store } from 'vuex';
import { modules } from './modules';
import { userState } from './modules/user/store';

type State = {
  user: userState,
  cart: cartState
}

export const key: InjectionKey<Store<State>> = Symbol()
export const store = createStore<State>({
  modules,
});

export function useStore () {
  return baseUseStore(key)
}
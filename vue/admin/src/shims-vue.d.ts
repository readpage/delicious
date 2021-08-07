declare module '*.vue' {
  import { DefineComponent } from 'vue'
  // eslint-disable-next-line @typescript-eslint/no-explicit-any, @typescript-eslint/ban-types
  const component: DefineComponent<{}, {}, any>
  export default component
}

declare module "cl-admin-crud-vue3" {
	import type { ClContextMenu } from "cl-admin-crud-vue3/types";
	import type { Plugin } from "vue";

	const ContextMenu: ClContextMenu;
	const Crud: Plugin;

	export { ContextMenu, Crud };
	export * from "cl-admin-crud-vue3";
}

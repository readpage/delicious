declare module '*.vue' {
  import { DefineComponent } from 'vue'
  // eslint-disable-next-line @typescript-eslint/no-explicit-any, @typescript-eslint/ban-types
  const component: DefineComponent<{}, {}, any>
  export default component
}

declare module "store" {
	export function set(key: string, value: any): void;
	export function get(key: string): any;
	export function remove(key: string): void;
	export function clearAll(): void;
	export function each(callback: Function): void;
}

interface cookieApi {
	expires?: number | Date
	path?: string
	domain?: string
}
declare module "js-cookie" {
	export function set(key: string, value: any, { expires, path, domain}?: cookieApi): void;
	export function get(key: string): any;
	export function remove(key: string, { expires, path, domain}?: cookieApi): void;
}



import store from "store"
import jsCookie from 'js-cookie'

interface cookieApi {
	expires?: number | Date;
	path?: string,
	domain?: string
}
function set(key: string, value: any, options: cookieApi= {expires: 7}): void {
	let expires = options.expires
	options.expires = expires ? expires : 7
	jsCookie.set(key, JSON.stringify(value), options)
}

function get(key: string): any {
	let value = jsCookie.get(key)
	return value ? JSON.parse(value) : value
}

function remove(key: string, options?: cookieApi): void {
	jsCookie.remove(key, options)
}

export const cookie = {
	set,
	get,
	remove
}
export const storage = store

export function preLoad(val: string[]):Promise<any> {
	const imageAll = val.map((imgUrl) => {
		return new Promise((resolve, reject) => {
			const img = new Image()
			img.src = imgUrl
			img.onload = () => resolve(imgUrl)
			img.onerror = () => reject(new Error(imgUrl+ "load error"))
		})
	})
	return Promise.all(imageAll).then(() => {
		console.log('load all success');
	}).catch((e) => {
		console.log(e);
	})
}

export function isArray(value: any) {
	if (typeof Array.isArray === "function") {
		return Array.isArray(value);
	} else {
		return Object.prototype.toString.call(value) === "[object Array]";
	}
}

export function isObject(value: any) {
	return Object.prototype.toString.call(value) === "[object Object]";
}

export function isNumber(value: any) {
	return !isNaN(Number(value));
}

export function isFunction(value: any) {
	return typeof value == "function";
}

export function isString(value: any) {
	return typeof value == "string";
}

export function isEmpty(value: any) {
	if (isArray(value)) {
		return value.length === 0;
	}

	if (isObject(value)) {
		return Object.keys(value).length === 0;
	}

	return value === "" || value === undefined || value === null;
}

export function isBoolean(value: any) {
	return typeof value === "boolean";
}

export function isPc() {
	const userAgentInfo = navigator.userAgent;
	const Agents = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"];
	let flag = true;
	for (let v = 0; v < Agents.length; v++) {
		if (userAgentInfo.indexOf(Agents[v]) > 0) {
			flag = false;
			break;
		}
	}
	return flag;
}

export function getBrowser() {
	const { clientHeight, clientWidth } = document.documentElement;

	// ???????????????
	const ua = navigator.userAgent.toLowerCase();

	// ???????????????
	let type = (ua.match(/firefox|chrome|safari|opera/g) || "other")[0];

	if ((ua.match(/msie|trident/g) || [])[0]) {
		type = "msie";
	}

	// ????????????
	let tag = "";

	const isTocuh =
		"ontouchstart" in window || ua.indexOf("touch") !== -1 || ua.indexOf("mobile") !== -1;
	if (isTocuh) {
		if (ua.indexOf("ipad") !== -1) {
			tag = "pad";
		} else if (ua.indexOf("mobile") !== -1) {
			tag = "mobile";
		} else if (ua.indexOf("android") !== -1) {
			tag = "androidPad";
		} else {
			tag = "pc";
		}
	} else {
		tag = "pc";
	}

	// ???????????????
	let prefix = "";

	switch (type) {
		case "chrome":
		case "safari":
		case "mobile":
			prefix = "webkit";
			break;
		case "msie":
			prefix = "ms";
			break;
		case "firefox":
			prefix = "Moz";
			break;
		case "opera":
			prefix = "O";
			break;
		default:
			prefix = "webkit";
			break;
	}

	// ????????????
	const plat = ua.indexOf("android") > 0 ? "android" : navigator.platform.toLowerCase();

	// ????????????
	let screen = "full";
	
	if (clientWidth < 768) {
		screen = "xs";
	} else if (clientWidth < 992) {
		screen = "sm";
	} else if (clientWidth < 1200) {
		screen = "md";
	} else if (clientWidth < 1920) {
		screen = "xl";
	} else {
		screen = "full";
	}

	// ?????? ios
	const isIOS = !!navigator.userAgent.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/);

	// ???????????????
	const version = (ua.match(/[\s\S]+(?:rv|it|ra|ie)[\/: ]([\d.]+)/) || [])[1];

	// ?????? PC ???
	const isPC = tag === "pc";

	// ???????????????
	const isMobile = isPC ? false : true;

	// ??????????????? + ???????????????
	const isMini = screen === "xs" || isMobile;

	const innerHeight = window.innerHeight + "px";

	return {
		height: clientHeight,
		width: clientWidth,
		version,
		type,
		plat,
		tag,
		prefix,
		isMobile,
		isIOS,
		isPC,
		isMini,
		screen,
		innerHeight
	};
}

export type browserType = ReturnType<typeof getBrowser>


export function deepTree(list: Array<any>) {
	list = JSON.parse(JSON.stringify(list))
	const newList: Array<any> = [];
	const map: any = {};

	list.forEach((e) => (map[e.id] = e));

	list.forEach((e) => {
		const parent = map[e.parentId];

		if (parent) {
			(parent.children || (parent.children = [])).push(e);
		} else {
			newList.push(e);
		}
	});

	return newList;
}

export function revDeepTree(list: Array<any> = []) {
	const d: Array<any> = [];
	let id = 0;

	const deep = (list: Array<any>, parentId: any) => {
		list.forEach((e) => {
			if (!e.id) {
				e.id = id++;
			}

			e.parentId = parentId;

			d.push(e);

			if (e.children && isArray(e.children)) {
				deep(e.children, e.id);
			}
		});
	};

	deep(list || [], null);

	return d;
}


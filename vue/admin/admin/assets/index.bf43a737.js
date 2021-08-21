import{d as e,r as t,o as n,c as r,w as o,u as s,i,a,_ as c,b as u,e as d,f,s as l,g as p,h as m,j as h,k as g,l as v,m as y,n as b}from"./vendor.58eb613c.js";var w=e({setup(e){const u=c;return(e,c)=>{const d=t("router-view");return n(),r(s(i),{locale:s(u)},{default:o((()=>[a(d)])),_:1},8,["locale"])}}}),E=e({setup:e=>(e,t)=>(n(),r("div",null,"icon-svg"))});E.__scopeId="data-v-47031ce2";const _={"./components/icon-svg/index.vue":Object.freeze({__proto__:null,[Symbol.toStringTag]:"Module",default:E})};var x={install:e=>{Object.keys(_).forEach((t=>{const n=_[t].default;t.match("/([^/]+?)/index.vue"),e.component(RegExp.$1,n)}))}},O={install:e=>{e.use(u)}},L={install:e=>{e.use(O)}};let R;const S={},T=function(e,t){if(!t||0===t.length)return e();if(void 0===R){const e=document.createElement("link").relList;R=e&&e.supports&&e.supports("modulepreload")?"modulepreload":"preload"}return Promise.all(t.map((e=>{if((e=`/${e}`)in S)return;S[e]=!0;const t=e.endsWith(".css"),n=t?'[rel="stylesheet"]':"";if(document.querySelector(`link[href="${e}"]${n}`))return;const r=document.createElement("link");return r.rel=t?"stylesheet":R,t||(r.as="script",r.crossOrigin=""),r.href=e,document.head.appendChild(r),t?new Promise(((e,t)=>{r.addEventListener("load",e),r.addEventListener("error",t)})):void 0}))).then((()=>e()))},k=d({history:f(),routes:[]}),j=[{path:"/",name:"index",component:()=>T((()=>import("./index.7f02f375.js")),["assets/index.7f02f375.js","assets/index.898d40a0.css","assets/vendor.58eb613c.js"]),children:[{path:"/",name:"数据统计",component:()=>T((()=>import("./index.15a76351.js")),["assets/index.15a76351.js","assets/vendor.58eb613c.js"]),meta:{title:"数据统计",icon:"el-icon-s-home"}}]},{path:"/sign",name:"sign",component:()=>T((()=>import("./index.0fa77960.js")),["assets/index.0fa77960.js","assets/index.205a954c.css","assets/vendor.58eb613c.js"]),meta:{title:"登录/注册"}},{path:"/500",name:"500",component:()=>T((()=>import("./500.e404625c.js")),["assets/500.e404625c.js","assets/ErrorPage.600200ba.js","assets/ErrorPage.f206c4db.css","assets/vendor.58eb613c.js"]),meta:{title:"500"}},{path:"/:pathMatch(.*)*",name:"404",component:()=>T((()=>import("./404.f204017b.js")),["assets/404.f204017b.js","assets/ErrorPage.600200ba.js","assets/ErrorPage.f206c4db.css","assets/vendor.58eb613c.js"]),meta:{title:"404"}}];function A(){const{clientHeight:e,clientWidth:t}=document.documentElement,n=navigator.userAgent.toLowerCase();let r=(n.match(/firefox|chrome|safari|opera/g)||"other")[0];(n.match(/msie|trident/g)||[])[0]&&(r="msie");let o="";o="ontouchstart"in window||-1!==n.indexOf("touch")||-1!==n.indexOf("mobile")?-1!==n.indexOf("ipad")?"pad":-1!==n.indexOf("mobile")?"mobile":-1!==n.indexOf("android")?"androidPad":"pc":"pc";let s="";switch(r){case"chrome":case"safari":case"mobile":s="webkit";break;case"msie":s="ms";break;case"firefox":s="Moz";break;case"opera":s="O";break;default:s="webkit"}const i=n.indexOf("android")>0?"android":navigator.platform.toLowerCase();let a="full";a=t<768?"xs":t<992?"sm":t<1200?"md":t<1920?"xl":"full";const c=!!navigator.userAgent.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/),u="pc"===o,d=!u;return{height:e,width:t,version:(n.match(/[\s\S]+(?:rv|it|ra|ie)[\/: ]([\d.]+)/)||[])[1],type:r,plat:i,tag:o,prefix:s,isMobile:d,isIOS:c,isPC:u,isMini:"xs"===a||d,screen:a}}k.beforeEach((async(e,t,n)=>{l.get("token")||"/sign"==e.path||n("/sign");let r=document.getElementById("overlay");r&&document.body.clientWidth<768&&r.click(),n()})),k.afterEach((e=>{document.title=e.meta.title}));var P={exports:{}},C=P.exports=function(){var e,t,n={version:"0.2.0"},r=n.settings={minimum:.08,easing:"ease",positionUsing:"",speed:200,trickle:!0,trickleRate:.02,trickleSpeed:800,showSpinner:!0,barSelector:'[role="bar"]',spinnerSelector:'[role="spinner"]',parent:"body",template:'<div class="bar" role="bar"><div class="peg"></div></div><div class="spinner" role="spinner"><div class="spinner-icon"></div></div>'};function o(e,t,n){return e<t?t:e>n?n:e}function s(e){return 100*(-1+e)}function i(e,t,n){var o;return(o="translate3d"===r.positionUsing?{transform:"translate3d("+s(e)+"%,0,0)"}:"translate"===r.positionUsing?{transform:"translate("+s(e)+"%,0)"}:{"margin-left":s(e)+"%"}).transition="all "+t+"ms "+n,o}n.configure=function(e){var t,n;for(t in e)void 0!==(n=e[t])&&e.hasOwnProperty(t)&&(r[t]=n);return this},n.status=null,n.set=function(e){var t=n.isStarted();e=o(e,r.minimum,1),n.status=1===e?null:e;var s=n.render(!t),u=s.querySelector(r.barSelector),d=r.speed,f=r.easing;return s.offsetWidth,a((function(t){""===r.positionUsing&&(r.positionUsing=n.getPositioningCSS()),c(u,i(e,d,f)),1===e?(c(s,{transition:"none",opacity:1}),s.offsetWidth,setTimeout((function(){c(s,{transition:"all "+d+"ms linear",opacity:0}),setTimeout((function(){n.remove(),t()}),d)}),d)):setTimeout(t,d)})),this},n.isStarted=function(){return"number"==typeof n.status},n.start=function(){n.status||n.set(0);var e=function(){setTimeout((function(){n.status&&(n.trickle(),e())}),r.trickleSpeed)};return r.trickle&&e(),this},n.done=function(e){return e||n.status?n.inc(.3+.5*Math.random()).set(1):this},n.inc=function(e){var t=n.status;return t?("number"!=typeof e&&(e=(1-t)*o(Math.random()*t,.1,.95)),t=o(t+e,0,.994),n.set(t)):n.start()},n.trickle=function(){return n.inc(Math.random()*r.trickleRate)},e=0,t=0,n.promise=function(r){return r&&"resolved"!==r.state()?(0===t&&n.start(),e++,t++,r.always((function(){0==--t?(e=0,n.done()):n.set((e-t)/e)})),this):this},n.render=function(e){if(n.isRendered())return document.getElementById("nprogress");d(document.documentElement,"nprogress-busy");var t=document.createElement("div");t.id="nprogress",t.innerHTML=r.template;var o,i=t.querySelector(r.barSelector),a=e?"-100":s(n.status||0),u=document.querySelector(r.parent);return c(i,{transition:"all 0 linear",transform:"translate3d("+a+"%,0,0)"}),r.showSpinner||(o=t.querySelector(r.spinnerSelector))&&p(o),u!=document.body&&d(u,"nprogress-custom-parent"),u.appendChild(t),t},n.remove=function(){f(document.documentElement,"nprogress-busy"),f(document.querySelector(r.parent),"nprogress-custom-parent");var e=document.getElementById("nprogress");e&&p(e)},n.isRendered=function(){return!!document.getElementById("nprogress")},n.getPositioningCSS=function(){var e=document.body.style,t="WebkitTransform"in e?"Webkit":"MozTransform"in e?"Moz":"msTransform"in e?"ms":"OTransform"in e?"O":"";return t+"Perspective"in e?"translate3d":t+"Transform"in e?"translate":"margin"};var a=function(){var e=[];function t(){var n=e.shift();n&&n(t)}return function(n){e.push(n),1==e.length&&t()}}(),c=function(){var e=["Webkit","O","Moz","ms"],t={};function n(e){return e.replace(/^-ms-/,"ms-").replace(/-([\da-z])/gi,(function(e,t){return t.toUpperCase()}))}function r(t){var n=document.body.style;if(t in n)return t;for(var r,o=e.length,s=t.charAt(0).toUpperCase()+t.slice(1);o--;)if((r=e[o]+s)in n)return r;return t}function o(e){return e=n(e),t[e]||(t[e]=r(e))}function s(e,t,n){t=o(t),e.style[t]=n}return function(e,t){var n,r,o=arguments;if(2==o.length)for(n in t)void 0!==(r=t[n])&&t.hasOwnProperty(n)&&s(e,n,r);else s(e,o[1],o[2])}}();function u(e,t){return("string"==typeof e?e:l(e)).indexOf(" "+t+" ")>=0}function d(e,t){var n=l(e),r=n+t;u(n,t)||(e.className=r.substring(1))}function f(e,t){var n,r=l(e);u(e,t)&&(n=r.replace(" "+t+" "," "),e.className=n.substring(1,n.length-1))}function l(e){return(" "+(e.className||"")+" ").replace(/\s+/gi," ")}function p(e){e&&e.parentNode&&e.parentNode.removeChild(e)}return n}();
/* NProgress, (c) 2013, 2014 Rico Sta. Cruz - http://ricostacruz.com/nprogress
 * @license MIT */function U(){let e=document.getElementById("loading");e&&document.body.removeChild(e)}const I={updCollapse(e,t){e.collapse=t},setBrowser(e){e.browser=A()},showLoading(e){e.loading=!0,C.start()},hideLoading(e){e.loading=!1,C.done(),U()},elLoading(e){e.elLoading=m.service({text:"拼命加载中...",spinner:"el-icon-loading"})},closeElLoading(e){e.elLoading&&e.elLoading.close()},setUserInfo(e,t){e.info=t,l.set("userInfo",t)},remUser(e){e.info={},l.remove("userInfo")}},N=A();var B={exports:{}},D=function(e,t){return function(){for(var n=new Array(arguments.length),r=0;r<n.length;r++)n[r]=arguments[r];return e.apply(t,n)}},q=D,M=Object.prototype.toString;function V(e){return"[object Array]"===M.call(e)}function z(e){return void 0===e}function F(e){return null!==e&&"object"==typeof e}function H(e){if("[object Object]"!==M.call(e))return!1;var t=Object.getPrototypeOf(e);return null===t||t===Object.prototype}function $(e){return"[object Function]"===M.call(e)}function W(e,t){if(null!=e)if("object"!=typeof e&&(e=[e]),V(e))for(var n=0,r=e.length;n<r;n++)t.call(null,e[n],n,e);else for(var o in e)Object.prototype.hasOwnProperty.call(e,o)&&t.call(null,e[o],o,e)}var J={isArray:V,isArrayBuffer:function(e){return"[object ArrayBuffer]"===M.call(e)},isBuffer:function(e){return null!==e&&!z(e)&&null!==e.constructor&&!z(e.constructor)&&"function"==typeof e.constructor.isBuffer&&e.constructor.isBuffer(e)},isFormData:function(e){return"undefined"!=typeof FormData&&e instanceof FormData},isArrayBufferView:function(e){return"undefined"!=typeof ArrayBuffer&&ArrayBuffer.isView?ArrayBuffer.isView(e):e&&e.buffer&&e.buffer instanceof ArrayBuffer},isString:function(e){return"string"==typeof e},isNumber:function(e){return"number"==typeof e},isObject:F,isPlainObject:H,isUndefined:z,isDate:function(e){return"[object Date]"===M.call(e)},isFile:function(e){return"[object File]"===M.call(e)},isBlob:function(e){return"[object Blob]"===M.call(e)},isFunction:$,isStream:function(e){return F(e)&&$(e.pipe)},isURLSearchParams:function(e){return"undefined"!=typeof URLSearchParams&&e instanceof URLSearchParams},isStandardBrowserEnv:function(){return("undefined"==typeof navigator||"ReactNative"!==navigator.product&&"NativeScript"!==navigator.product&&"NS"!==navigator.product)&&("undefined"!=typeof window&&"undefined"!=typeof document)},forEach:W,merge:function e(){var t={};function n(n,r){H(t[r])&&H(n)?t[r]=e(t[r],n):H(n)?t[r]=e({},n):V(n)?t[r]=n.slice():t[r]=n}for(var r=0,o=arguments.length;r<o;r++)W(arguments[r],n);return t},extend:function(e,t,n){return W(t,(function(t,r){e[r]=n&&"function"==typeof t?q(t,n):t})),e},trim:function(e){return e.replace(/^\s*/,"").replace(/\s*$/,"")},stripBOM:function(e){return 65279===e.charCodeAt(0)&&(e=e.slice(1)),e}},X=J;function K(e){return encodeURIComponent(e).replace(/%3A/gi,":").replace(/%24/g,"$").replace(/%2C/gi,",").replace(/%20/g,"+").replace(/%5B/gi,"[").replace(/%5D/gi,"]")}var G=function(e,t,n){if(!t)return e;var r;if(n)r=n(t);else if(X.isURLSearchParams(t))r=t.toString();else{var o=[];X.forEach(t,(function(e,t){null!=e&&(X.isArray(e)?t+="[]":e=[e],X.forEach(e,(function(e){X.isDate(e)?e=e.toISOString():X.isObject(e)&&(e=JSON.stringify(e)),o.push(K(t)+"="+K(e))})))})),r=o.join("&")}if(r){var s=e.indexOf("#");-1!==s&&(e=e.slice(0,s)),e+=(-1===e.indexOf("?")?"?":"&")+r}return e},Q=J;function Y(){this.handlers=[]}Y.prototype.use=function(e,t){return this.handlers.push({fulfilled:e,rejected:t}),this.handlers.length-1},Y.prototype.eject=function(e){this.handlers[e]&&(this.handlers[e]=null)},Y.prototype.forEach=function(e){Q.forEach(this.handlers,(function(t){null!==t&&e(t)}))};var Z=Y,ee=J,te=function(e){return!(!e||!e.__CANCEL__)},ne=J,re=function(e,t,n,r,o){return e.config=t,n&&(e.code=n),e.request=r,e.response=o,e.isAxiosError=!0,e.toJSON=function(){return{message:this.message,name:this.name,description:this.description,number:this.number,fileName:this.fileName,lineNumber:this.lineNumber,columnNumber:this.columnNumber,stack:this.stack,config:this.config,code:this.code}},e},oe=function(e,t,n,r,o){var s=new Error(e);return re(s,t,n,r,o)},se=oe,ie=J,ae=ie.isStandardBrowserEnv()?{write:function(e,t,n,r,o,s){var i=[];i.push(e+"="+encodeURIComponent(t)),ie.isNumber(n)&&i.push("expires="+new Date(n).toGMTString()),ie.isString(r)&&i.push("path="+r),ie.isString(o)&&i.push("domain="+o),!0===s&&i.push("secure"),document.cookie=i.join("; ")},read:function(e){var t=document.cookie.match(new RegExp("(^|;\\s*)("+e+")=([^;]*)"));return t?decodeURIComponent(t[3]):null},remove:function(e){this.write(e,"",Date.now()-864e5)}}:{write:function(){},read:function(){return null},remove:function(){}},ce=function(e){return/^([a-z][a-z\d\+\-\.]*:)?\/\//i.test(e)},ue=function(e,t){return t?e.replace(/\/+$/,"")+"/"+t.replace(/^\/+/,""):e},de=J,fe=["age","authorization","content-length","content-type","etag","expires","from","host","if-modified-since","if-unmodified-since","last-modified","location","max-forwards","proxy-authorization","referer","retry-after","user-agent"],le=J,pe=le.isStandardBrowserEnv()?function(){var e,t=/(msie|trident)/i.test(navigator.userAgent),n=document.createElement("a");function r(e){var r=e;return t&&(n.setAttribute("href",r),r=n.href),n.setAttribute("href",r),{href:n.href,protocol:n.protocol?n.protocol.replace(/:$/,""):"",host:n.host,search:n.search?n.search.replace(/^\?/,""):"",hash:n.hash?n.hash.replace(/^#/,""):"",hostname:n.hostname,port:n.port,pathname:"/"===n.pathname.charAt(0)?n.pathname:"/"+n.pathname}}return e=r(window.location.href),function(t){var n=le.isString(t)?r(t):t;return n.protocol===e.protocol&&n.host===e.host}}():function(){return!0},me=J,he=function(e,t,n){var r=n.config.validateStatus;n.status&&r&&!r(n.status)?t(se("Request failed with status code "+n.status,n.config,null,n.request,n)):e(n)},ge=ae,ve=G,ye=function(e,t){return e&&!ce(t)?ue(e,t):t},be=function(e){var t,n,r,o={};return e?(de.forEach(e.split("\n"),(function(e){if(r=e.indexOf(":"),t=de.trim(e.substr(0,r)).toLowerCase(),n=de.trim(e.substr(r+1)),t){if(o[t]&&fe.indexOf(t)>=0)return;o[t]="set-cookie"===t?(o[t]?o[t]:[]).concat([n]):o[t]?o[t]+", "+n:n}})),o):o},we=pe,Ee=oe,_e=function(e){return new Promise((function(t,n){var r=e.data,o=e.headers;me.isFormData(r)&&delete o["Content-Type"];var s=new XMLHttpRequest;if(e.auth){var i=e.auth.username||"",a=e.auth.password?unescape(encodeURIComponent(e.auth.password)):"";o.Authorization="Basic "+btoa(i+":"+a)}var c=ye(e.baseURL,e.url);if(s.open(e.method.toUpperCase(),ve(c,e.params,e.paramsSerializer),!0),s.timeout=e.timeout,s.onreadystatechange=function(){if(s&&4===s.readyState&&(0!==s.status||s.responseURL&&0===s.responseURL.indexOf("file:"))){var r="getAllResponseHeaders"in s?be(s.getAllResponseHeaders()):null,o={data:e.responseType&&"text"!==e.responseType?s.response:s.responseText,status:s.status,statusText:s.statusText,headers:r,config:e,request:s};he(t,n,o),s=null}},s.onabort=function(){s&&(n(Ee("Request aborted",e,"ECONNABORTED",s)),s=null)},s.onerror=function(){n(Ee("Network Error",e,null,s)),s=null},s.ontimeout=function(){var t="timeout of "+e.timeout+"ms exceeded";e.timeoutErrorMessage&&(t=e.timeoutErrorMessage),n(Ee(t,e,"ECONNABORTED",s)),s=null},me.isStandardBrowserEnv()){var u=(e.withCredentials||we(c))&&e.xsrfCookieName?ge.read(e.xsrfCookieName):void 0;u&&(o[e.xsrfHeaderName]=u)}if("setRequestHeader"in s&&me.forEach(o,(function(e,t){void 0===r&&"content-type"===t.toLowerCase()?delete o[t]:s.setRequestHeader(t,e)})),me.isUndefined(e.withCredentials)||(s.withCredentials=!!e.withCredentials),e.responseType)try{s.responseType=e.responseType}catch(d){if("json"!==e.responseType)throw d}"function"==typeof e.onDownloadProgress&&s.addEventListener("progress",e.onDownloadProgress),"function"==typeof e.onUploadProgress&&s.upload&&s.upload.addEventListener("progress",e.onUploadProgress),e.cancelToken&&e.cancelToken.promise.then((function(e){s&&(s.abort(),n(e),s=null)})),r||(r=null),s.send(r)}))},xe=J,Oe=function(e,t){ne.forEach(e,(function(n,r){r!==t&&r.toUpperCase()===t.toUpperCase()&&(e[t]=n,delete e[r])}))},Le={"Content-Type":"application/x-www-form-urlencoded"};function Re(e,t){!xe.isUndefined(e)&&xe.isUndefined(e["Content-Type"])&&(e["Content-Type"]=t)}var Se,Te={adapter:(("undefined"!=typeof XMLHttpRequest||"undefined"!=typeof process&&"[object process]"===Object.prototype.toString.call(process))&&(Se=_e),Se),transformRequest:[function(e,t){return Oe(t,"Accept"),Oe(t,"Content-Type"),xe.isFormData(e)||xe.isArrayBuffer(e)||xe.isBuffer(e)||xe.isStream(e)||xe.isFile(e)||xe.isBlob(e)?e:xe.isArrayBufferView(e)?e.buffer:xe.isURLSearchParams(e)?(Re(t,"application/x-www-form-urlencoded;charset=utf-8"),e.toString()):xe.isObject(e)?(Re(t,"application/json;charset=utf-8"),JSON.stringify(e)):e}],transformResponse:[function(e){if("string"==typeof e)try{e=JSON.parse(e)}catch(t){}return e}],timeout:0,xsrfCookieName:"XSRF-TOKEN",xsrfHeaderName:"X-XSRF-TOKEN",maxContentLength:-1,maxBodyLength:-1,validateStatus:function(e){return e>=200&&e<300}};Te.headers={common:{Accept:"application/json, text/plain, */*"}},xe.forEach(["delete","get","head"],(function(e){Te.headers[e]={}})),xe.forEach(["post","put","patch"],(function(e){Te.headers[e]=xe.merge(Le)}));var ke=Te,je=J,Ae=function(e,t,n){return ee.forEach(n,(function(n){e=n(e,t)})),e},Pe=te,Ce=ke;function Ue(e){e.cancelToken&&e.cancelToken.throwIfRequested()}var Ie=J,Ne=function(e,t){t=t||{};var n={},r=["url","method","data"],o=["headers","auth","proxy","params"],s=["baseURL","transformRequest","transformResponse","paramsSerializer","timeout","timeoutMessage","withCredentials","adapter","responseType","xsrfCookieName","xsrfHeaderName","onUploadProgress","onDownloadProgress","decompress","maxContentLength","maxBodyLength","maxRedirects","transport","httpAgent","httpsAgent","cancelToken","socketPath","responseEncoding"],i=["validateStatus"];function a(e,t){return Ie.isPlainObject(e)&&Ie.isPlainObject(t)?Ie.merge(e,t):Ie.isPlainObject(t)?Ie.merge({},t):Ie.isArray(t)?t.slice():t}function c(r){Ie.isUndefined(t[r])?Ie.isUndefined(e[r])||(n[r]=a(void 0,e[r])):n[r]=a(e[r],t[r])}Ie.forEach(r,(function(e){Ie.isUndefined(t[e])||(n[e]=a(void 0,t[e]))})),Ie.forEach(o,c),Ie.forEach(s,(function(r){Ie.isUndefined(t[r])?Ie.isUndefined(e[r])||(n[r]=a(void 0,e[r])):n[r]=a(void 0,t[r])})),Ie.forEach(i,(function(r){r in t?n[r]=a(e[r],t[r]):r in e&&(n[r]=a(void 0,e[r]))}));var u=r.concat(o).concat(s).concat(i),d=Object.keys(e).concat(Object.keys(t)).filter((function(e){return-1===u.indexOf(e)}));return Ie.forEach(d,c),n},Be=J,De=G,qe=Z,Me=function(e){return Ue(e),e.headers=e.headers||{},e.data=Ae(e.data,e.headers,e.transformRequest),e.headers=je.merge(e.headers.common||{},e.headers[e.method]||{},e.headers),je.forEach(["delete","get","head","post","put","patch","common"],(function(t){delete e.headers[t]})),(e.adapter||Ce.adapter)(e).then((function(t){return Ue(e),t.data=Ae(t.data,t.headers,e.transformResponse),t}),(function(t){return Pe(t)||(Ue(e),t&&t.response&&(t.response.data=Ae(t.response.data,t.response.headers,e.transformResponse))),Promise.reject(t)}))},Ve=Ne;function ze(e){this.defaults=e,this.interceptors={request:new qe,response:new qe}}ze.prototype.request=function(e){"string"==typeof e?(e=arguments[1]||{}).url=arguments[0]:e=e||{},(e=Ve(this.defaults,e)).method?e.method=e.method.toLowerCase():this.defaults.method?e.method=this.defaults.method.toLowerCase():e.method="get";var t=[Me,void 0],n=Promise.resolve(e);for(this.interceptors.request.forEach((function(e){t.unshift(e.fulfilled,e.rejected)})),this.interceptors.response.forEach((function(e){t.push(e.fulfilled,e.rejected)}));t.length;)n=n.then(t.shift(),t.shift());return n},ze.prototype.getUri=function(e){return e=Ve(this.defaults,e),De(e.url,e.params,e.paramsSerializer).replace(/^\?/,"")},Be.forEach(["delete","get","head","options"],(function(e){ze.prototype[e]=function(t,n){return this.request(Ve(n||{},{method:e,url:t,data:(n||{}).data}))}})),Be.forEach(["post","put","patch"],(function(e){ze.prototype[e]=function(t,n,r){return this.request(Ve(r||{},{method:e,url:t,data:n}))}}));var Fe=ze;function He(e){this.message=e}He.prototype.toString=function(){return"Cancel"+(this.message?": "+this.message:"")},He.prototype.__CANCEL__=!0;var $e=He,We=$e;function Je(e){if("function"!=typeof e)throw new TypeError("executor must be a function.");var t;this.promise=new Promise((function(e){t=e}));var n=this;e((function(e){n.reason||(n.reason=new We(e),t(n.reason))}))}Je.prototype.throwIfRequested=function(){if(this.reason)throw this.reason},Je.source=function(){var e;return{token:new Je((function(t){e=t})),cancel:e}};var Xe=Je,Ke=J,Ge=D,Qe=Fe,Ye=Ne;function Ze(e){var t=new Qe(e),n=Ge(Qe.prototype.request,t);return Ke.extend(n,Qe.prototype,t),Ke.extend(n,t),n}var et=Ze(ke);et.Axios=Qe,et.create=function(e){return Ze(Ye(et.defaults,e))},et.Cancel=$e,et.CancelToken=Xe,et.isCancel=te,et.all=function(e){return Promise.all(e)},et.spread=function(e){return function(t){return e.apply(null,t)}},et.isAxiosError=function(e){return"object"==typeof e&&!0===e.isAxiosError},B.exports=et,B.exports.default=et;const tt=B.exports.create({baseURL:"/api"});let nt=0;function rt(e,t){return n=>{const r={};let o="";return t&&"get"!=t?(r.method=t,r.data=n):(n&&n.urlParam&&(o=n.urlParam,delete n.urlParam),r.method="get",r.params=n),tt(e+o,r).then((e=>e.data))}}tt.interceptors.request.use((e=>{0==nt++&&wt.commit("user/showLoading");const t=l.get("token");return t&&(e.headers.Authorization=t.token_type+" "+t.access_token),e}),(e=>(h.error("服务器出问题了!😰"),Promise.reject(e)))),tt.interceptors.response.use((e=>{nt--;const t=e.data;if(2==Math.trunc(t.code/100)){switch(t.code){case 201:case 205:break;case 202:return e;default:h.success(t.msg)}return nt<=0&&wt.commit("user/hideLoading"),e}switch(t.code){case 504:case 508:return async function(e){const t=l.get("token").refresh_token;return l.remove("token"),await wt.dispatch("user/refreshToken",t),await tt.request(e.config).then((e=>e))}(e);case 501:case 507:n=t.msg,g.confirm(n,"提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((()=>{wt.dispatch("user/userRemove"),k.push("/sign")})).catch((()=>{h.info("已取消登录!")}));break;case 403:h.warning(t.msg);break;default:h.warning(t.msg)}throw wt.commit("user/closeElLoading"),wt.commit("user/hideLoading"),e;var n}),(e=>(wt.commit("user/closeElLoading"),wt.commit("user/hideLoading"),k.push("/500"),Promise.reject(e))));const ot=rt("/oauth/login","post"),st=rt("/oauth/logout","delete"),it=rt("/oauth/refresh","put"),at=rt("/user/save","post"),ct=rt("/user/selectIsUser"),ut=rt("/user/page"),dt=rt("/user/info"),ft=rt("/role/page"),lt=rt("/menu/permMenu"),pt=rt("/menu/list"),mt={async appLoad({dispatch:e}){await wt.dispatch("menu/permMenu"),U()},refreshToken({commit:e,dispatch:t},n){const r=new FormData;return r.append("refreshToken",n),it(r).then((e=>(l.set("token",e.data),e.data)))},userInfo:({commit:e})=>dt().then((t=>(e("setUserInfo",t.data),t))),async userLogout({dispatch:e}){const t=new FormData,n=l.get("token");return t.append("token",n.access_token),await st(t),e("userRemove")},userRemove({commit:e}){e("remUser"),l.remove("token"),wt.commit("menu/setMenu",[]),wt.commit("menu/setRoutes",[])}};const ht={setMenu(e,t){e.menu=t,l.set("menu",t)},setRoutes(e,t){!function(e){j.forEach((e=>{k.addRoute(e)}));const t={"../views/goods/index.vue":()=>T((()=>import("./index.ba997211.js")),["assets/index.ba997211.js","assets/vendor.58eb613c.js"]),"../views/orders/index.vue":()=>T((()=>import("./index.f8d5295e.js")),["assets/index.f8d5295e.js","assets/vendor.58eb613c.js"]),"../views/system/menu/index.vue":()=>T((()=>import("./index.705917fc.js")),["assets/index.705917fc.js","assets/index.ecef1483.css","assets/vendor.58eb613c.js"]),"../views/system/role/index.vue":()=>T((()=>import("./index.3d760bc4.js")),["assets/index.3d760bc4.js","assets/index.95069fea.css","assets/vendor.58eb613c.js"]),"../views/system/user/index.vue":()=>T((()=>import("./index.4badb93c.js")),["assets/index.4badb93c.js","assets/index.9c79240c.css","assets/Add.f6ae1537.js","assets/vendor.58eb613c.js","assets/Edit.1fa4395c.js"]),"../views/system/monitor/loginLog/index.vue":()=>T((()=>import("./index.c95af0d6.js")),["assets/index.c95af0d6.js","assets/vendor.58eb613c.js"]),"../views/system/monitor/operLog/index.vue":()=>T((()=>import("./index.a0585063.js")),["assets/index.a0585063.js","assets/vendor.58eb613c.js"]),"../views/system/user/components/Add.vue":()=>T((()=>import("./Add.f6ae1537.js")),["assets/Add.f6ae1537.js","assets/vendor.58eb613c.js"]),"../views/system/user/components/Delete.vue":()=>T((()=>import("./Delete.2a18e32b.js")),["assets/Delete.2a18e32b.js","assets/vendor.58eb613c.js"]),"../views/system/user/components/Edit.vue":()=>T((()=>import("./Edit.1fa4395c.js")),["assets/Edit.1fa4395c.js","assets/vendor.58eb613c.js"])};e.forEach((e=>{e.component=t[`../views/${e.component}/index.vue`],k.addRoute("index",e)})),k.replace(k.currentRoute.value.fullPath)}(t),e.routes=t,l.set("routes",t)},setTagsItem(e,t){e.tagsList.push(t)},delTagsItem(e,t){e.tagsList.splice(t,1)},clearTags(e){e.tagsList.splice(0)},clearTagsOther(e,t){e.tagsList.splice(0),e.tagsList.push(t)}};function gt(e){let t=e.filter((e=>!e.parentId)),n=e.filter((e=>e.parentId)),r=(e,t)=>{e.forEach((e=>{t.forEach(((n,o)=>{if(n.parentId==e.id){let s=JSON.parse(JSON.stringify(t));s.splice(o,1),r([n],s),e.children?e.children.push(n):e.children=[n]}}))}))};return r(t,n),t}const vt={permMenu:({commit:e})=>lt().then((async t=>{const n=t.data.map((e=>(e.meta={title:e.title,icon:e.icon},delete e.title,delete e.icon,e))),r=n.filter((e=>1==e.type));e("setRoutes",r);const o=gt(n.filter((e=>2!=e.type)));return e("setMenu",o),wt.dispatch("user/userInfo"),t}))};const yt={user:{namespaced:!0,state:{browser:N,collapse:N.isMini,loading:!0,elLoading:void 0,info:l.get("userInfo")||{}},getters:{browser:e=>e.browser,collapse:e=>e.collapse},actions:mt,mutations:I},menu:{namespaced:!0,state:{menu:l.get("menu")||[],routes:l.get("routes")||[],tagsList:[]},getters:{},actions:vt,mutations:ht}},bt=Symbol(),wt=v({modules:yt});function Et(){return y(bt)}b(w).use(L).use(wt,bt).use(k).use(x).mount("#app"),wt.dispatch("user/appLoad");export{ot as A,ct as a,at as b,pt as c,ft as d,ut as e,gt as t,Et as u};
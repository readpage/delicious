var commonjsGlobal=typeof globalThis!="undefined"?globalThis:typeof window!="undefined"?window:typeof global!="undefined"?global:typeof self!="undefined"?self:{},zhCn={};Object.defineProperty(zhCn,"__esModule",{value:!0});var _default=zhCn.default={name:"zh-cn",el:{colorpicker:{confirm:"\u786E\u5B9A",clear:"\u6E05\u7A7A"},datepicker:{now:"\u6B64\u523B",today:"\u4ECA\u5929",cancel:"\u53D6\u6D88",clear:"\u6E05\u7A7A",confirm:"\u786E\u5B9A",selectDate:"\u9009\u62E9\u65E5\u671F",selectTime:"\u9009\u62E9\u65F6\u95F4",startDate:"\u5F00\u59CB\u65E5\u671F",startTime:"\u5F00\u59CB\u65F6\u95F4",endDate:"\u7ED3\u675F\u65E5\u671F",endTime:"\u7ED3\u675F\u65F6\u95F4",prevYear:"\u524D\u4E00\u5E74",nextYear:"\u540E\u4E00\u5E74",prevMonth:"\u4E0A\u4E2A\u6708",nextMonth:"\u4E0B\u4E2A\u6708",year:"\u5E74",month1:"1 \u6708",month2:"2 \u6708",month3:"3 \u6708",month4:"4 \u6708",month5:"5 \u6708",month6:"6 \u6708",month7:"7 \u6708",month8:"8 \u6708",month9:"9 \u6708",month10:"10 \u6708",month11:"11 \u6708",month12:"12 \u6708",weeks:{sun:"\u65E5",mon:"\u4E00",tue:"\u4E8C",wed:"\u4E09",thu:"\u56DB",fri:"\u4E94",sat:"\u516D"},months:{jan:"\u4E00\u6708",feb:"\u4E8C\u6708",mar:"\u4E09\u6708",apr:"\u56DB\u6708",may:"\u4E94\u6708",jun:"\u516D\u6708",jul:"\u4E03\u6708",aug:"\u516B\u6708",sep:"\u4E5D\u6708",oct:"\u5341\u6708",nov:"\u5341\u4E00\u6708",dec:"\u5341\u4E8C\u6708"}},select:{loading:"\u52A0\u8F7D\u4E2D",noMatch:"\u65E0\u5339\u914D\u6570\u636E",noData:"\u65E0\u6570\u636E",placeholder:"\u8BF7\u9009\u62E9"},cascader:{noMatch:"\u65E0\u5339\u914D\u6570\u636E",loading:"\u52A0\u8F7D\u4E2D",placeholder:"\u8BF7\u9009\u62E9",noData:"\u6682\u65E0\u6570\u636E"},pagination:{goto:"\u524D\u5F80",pagesize:"\u6761/\u9875",total:"\u5171 {total} \u6761",pageClassifier:"\u9875",deprecationWarning:"\u4F60\u4F7F\u7528\u4E86\u4E00\u4E9B\u5DF2\u88AB\u5E9F\u5F03\u7684\u7528\u6CD5\uFF0C\u8BF7\u53C2\u8003 el-pagination \u7684\u5B98\u65B9\u6587\u6863"},messagebox:{title:"\u63D0\u793A",confirm:"\u786E\u5B9A",cancel:"\u53D6\u6D88",error:"\u8F93\u5165\u7684\u6570\u636E\u4E0D\u5408\u6CD5!"},upload:{deleteTip:"\u6309 delete \u952E\u53EF\u5220\u9664",delete:"\u5220\u9664",preview:"\u67E5\u770B\u56FE\u7247",continue:"\u7EE7\u7EED\u4E0A\u4F20"},table:{emptyText:"\u6682\u65E0\u6570\u636E",confirmFilter:"\u7B5B\u9009",resetFilter:"\u91CD\u7F6E",clearFilter:"\u5168\u90E8",sumText:"\u5408\u8BA1"},tree:{emptyText:"\u6682\u65E0\u6570\u636E"},transfer:{noMatch:"\u65E0\u5339\u914D\u6570\u636E",noData:"\u65E0\u6570\u636E",titles:["\u5217\u8868 1","\u5217\u8868 2"],filterPlaceholder:"\u8BF7\u8F93\u5165\u641C\u7D22\u5185\u5BB9",noCheckedFormat:"\u5171 {total} \u9879",hasCheckedFormat:"\u5DF2\u9009 {checked}/{total} \u9879"},image:{error:"\u52A0\u8F7D\u5931\u8D25"},pageHeader:{title:"\u8FD4\u56DE"},popconfirm:{confirmButtonText:"\u786E\u5B9A",cancelButtonText:"\u53D6\u6D88"}}},assign$1=make_assign(),create$1=make_create(),trim$1=make_trim(),Global$5=typeof window!="undefined"?window:commonjsGlobal,util$6={assign:assign$1,create:create$1,trim:trim$1,bind:bind$1,slice:slice$1,each:each$7,map,pluck:pluck$1,isList:isList$1,isFunction:isFunction$1,isObject:isObject$1,Global:Global$5};function make_assign(){return Object.assign?Object.assign:function(r,t,n,i){for(var u=1;u<arguments.length;u++)each$7(Object(arguments[u]),function(g,l){r[l]=g});return r}}function make_create(){if(Object.create)return function(r,t,n,i){var u=slice$1(arguments,1);return assign$1.apply(this,[Object.create(r)].concat(u))};{let e=function(){};return function(t,n,i,u){var g=slice$1(arguments,1);return e.prototype=t,assign$1.apply(this,[new e].concat(g))}}}function make_trim(){return String.prototype.trim?function(r){return String.prototype.trim.call(r)}:function(r){return r.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,"")}}function bind$1(e,r){return function(){return r.apply(e,Array.prototype.slice.call(arguments,0))}}function slice$1(e,r){return Array.prototype.slice.call(e,r||0)}function each$7(e,r){pluck$1(e,function(t,n){return r(t,n),!1})}function map(e,r){var t=isList$1(e)?[]:{};return pluck$1(e,function(n,i){return t[i]=r(n,i),!1}),t}function pluck$1(e,r){if(isList$1(e)){for(var t=0;t<e.length;t++)if(r(e[t],t))return e[t]}else for(var n in e)if(e.hasOwnProperty(n)&&r(e[n],n))return e[n]}function isList$1(e){return e!=null&&typeof e!="function"&&typeof e.length=="number"}function isFunction$1(e){return e&&{}.toString.call(e)==="[object Function]"}function isObject$1(e){return e&&{}.toString.call(e)==="[object Object]"}var util$5=util$6,slice=util$5.slice,pluck=util$5.pluck,each$6=util$5.each,bind=util$5.bind,create=util$5.create,isList=util$5.isList,isFunction=util$5.isFunction,isObject=util$5.isObject,storeEngine={createStore},storeAPI={version:"2.0.12",enabled:!1,get:function(e,r){var t=this.storage.read(this._namespacePrefix+e);return this._deserialize(t,r)},set:function(e,r){return r===void 0?this.remove(e):(this.storage.write(this._namespacePrefix+e,this._serialize(r)),r)},remove:function(e){this.storage.remove(this._namespacePrefix+e)},each:function(e){var r=this;this.storage.each(function(t,n){e.call(r,r._deserialize(t),(n||"").replace(r._namespaceRegexp,""))})},clearAll:function(){this.storage.clearAll()},hasNamespace:function(e){return this._namespacePrefix=="__storejs_"+e+"_"},createStore:function(){return createStore.apply(this,arguments)},addPlugin:function(e){this._addPlugin(e)},namespace:function(e){return createStore(this.storage,this.plugins,e)}};function _warn(){var e=typeof console=="undefined"?null:console;if(!!e){var r=e.warn?e.warn:e.log;r.apply(e,arguments)}}function createStore(e,r,t){t||(t=""),e&&!isList(e)&&(e=[e]),r&&!isList(r)&&(r=[r]);var n=t?"__storejs_"+t+"_":"",i=t?new RegExp("^"+n):null,u=/^[a-zA-Z0-9_\-]*$/;if(!u.test(t))throw new Error("store.js namespaces can only have alphanumerics + underscores and dashes");var g={_namespacePrefix:n,_namespaceRegexp:i,_testStorage:function(o){try{var p="__storejs__test__";o.write(p,p);var v=o.read(p)===p;return o.remove(p),v}catch{return!1}},_assignPluginFnProp:function(o,p){var v=this[p];this[p]=function(){var h=slice(arguments,0),_=this;function a(){if(!!v)return each$6(arguments,function(c,m){h[m]=c}),v.apply(_,h)}var s=[a].concat(h);return o.apply(_,s)}},_serialize:function(o){return JSON.stringify(o)},_deserialize:function(o,p){if(!o)return p;var v="";try{v=JSON.parse(o)}catch{v=o}return v!==void 0?v:p},_addStorage:function(o){this.enabled||this._testStorage(o)&&(this.storage=o,this.enabled=!0)},_addPlugin:function(o){var p=this;if(isList(o)){each$6(o,function(h){p._addPlugin(h)});return}var v=pluck(this.plugins,function(h){return o===h});if(!v){if(this.plugins.push(o),!isFunction(o))throw new Error("Plugins must be function values that return objects");var y=o.call(this);if(!isObject(y))throw new Error("Plugins must return an object of function properties");each$6(y,function(h,_){if(!isFunction(h))throw new Error("Bad plugin property: "+_+" from plugin "+o.name+". Plugins should only return functions.");p._assignPluginFnProp(h,_)})}},addStorage:function(o){_warn("store.addStorage(storage) is deprecated. Use createStore([storages])"),this._addStorage(o)}},l=create(g,storeAPI,{plugins:[]});return l.raw={},each$6(l,function(o,p){isFunction(o)&&(l.raw[p]=bind(l,o))}),each$6(e,function(o){l._addStorage(o)}),each$6(r,function(o){l._addPlugin(o)}),l}var util$4=util$6,Global$4=util$4.Global,localStorage_1={name:"localStorage",read:read$5,write:write$5,each:each$5,remove:remove$5,clearAll:clearAll$5};function localStorage(){return Global$4.localStorage}function read$5(e){return localStorage().getItem(e)}function write$5(e,r){return localStorage().setItem(e,r)}function each$5(e){for(var r=localStorage().length-1;r>=0;r--){var t=localStorage().key(r);e(read$5(t),t)}}function remove$5(e){return localStorage().removeItem(e)}function clearAll$5(){return localStorage().clear()}var util$3=util$6,Global$3=util$3.Global,oldFFGlobalStorage={name:"oldFF-globalStorage",read:read$4,write:write$4,each:each$4,remove:remove$4,clearAll:clearAll$4},globalStorage=Global$3.globalStorage;function read$4(e){return globalStorage[e]}function write$4(e,r){globalStorage[e]=r}function each$4(e){for(var r=globalStorage.length-1;r>=0;r--){var t=globalStorage.key(r);e(globalStorage[t],t)}}function remove$4(e){return globalStorage.removeItem(e)}function clearAll$4(){each$4(function(e,r){delete globalStorage[e]})}var util$2=util$6,Global$2=util$2.Global,oldIEUserDataStorage={name:"oldIE-userDataStorage",write:write$3,read:read$3,each:each$3,remove:remove$3,clearAll:clearAll$3},storageName="storejs",doc$1=Global$2.document,_withStorageEl=_makeIEStorageElFunction(),disable=(Global$2.navigator?Global$2.navigator.userAgent:"").match(/ (MSIE 8|MSIE 9|MSIE 10)\./);function write$3(e,r){if(!disable){var t=fixKey(e);_withStorageEl(function(n){n.setAttribute(t,r),n.save(storageName)})}}function read$3(e){if(!disable){var r=fixKey(e),t=null;return _withStorageEl(function(n){t=n.getAttribute(r)}),t}}function each$3(e){_withStorageEl(function(r){for(var t=r.XMLDocument.documentElement.attributes,n=t.length-1;n>=0;n--){var i=t[n];e(r.getAttribute(i.name),i.name)}})}function remove$3(e){var r=fixKey(e);_withStorageEl(function(t){t.removeAttribute(r),t.save(storageName)})}function clearAll$3(){_withStorageEl(function(e){var r=e.XMLDocument.documentElement.attributes;e.load(storageName);for(var t=r.length-1;t>=0;t--)e.removeAttribute(r[t].name);e.save(storageName)})}var forbiddenCharsRegex=new RegExp("[!\"#$%&'()*+,/\\\\:;<=>?@[\\]^`{|}~]","g");function fixKey(e){return e.replace(/^\d/,"___$&").replace(forbiddenCharsRegex,"___")}function _makeIEStorageElFunction(){if(!doc$1||!doc$1.documentElement||!doc$1.documentElement.addBehavior)return null;var e="script",r,t,n;try{t=new ActiveXObject("htmlfile"),t.open(),t.write("<"+e+">document.w=window</"+e+'><iframe src="/favicon.ico"></iframe>'),t.close(),r=t.w.frames[0].document,n=r.createElement("div")}catch{n=doc$1.createElement("div"),r=doc$1.body}return function(i){var u=[].slice.call(arguments,0);u.unshift(n),r.appendChild(n),n.addBehavior("#default#userData"),n.load(storageName),i.apply(this,u),r.removeChild(n)}}var util$1=util$6,Global$1=util$1.Global,trim=util$1.trim,cookieStorage={name:"cookieStorage",read:read$2,write:write$2,each:each$2,remove:remove$2,clearAll:clearAll$2},doc=Global$1.document;function read$2(e){if(!e||!_has(e))return null;var r="(?:^|.*;\\s*)"+escape(e).replace(/[\-\.\+\*]/g,"\\$&")+"\\s*\\=\\s*((?:[^;](?!;))*[^;]?).*";return unescape(doc.cookie.replace(new RegExp(r),"$1"))}function each$2(e){for(var r=doc.cookie.split(/; ?/g),t=r.length-1;t>=0;t--)if(!!trim(r[t])){var n=r[t].split("="),i=unescape(n[0]),u=unescape(n[1]);e(u,i)}}function write$2(e,r){!e||(doc.cookie=escape(e)+"="+escape(r)+"; expires=Tue, 19 Jan 2038 03:14:07 GMT; path=/")}function remove$2(e){!e||!_has(e)||(doc.cookie=escape(e)+"=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/")}function clearAll$2(){each$2(function(e,r){remove$2(r)})}function _has(e){return new RegExp("(?:^|;\\s*)"+escape(e).replace(/[\-\.\+\*]/g,"\\$&")+"\\s*\\=").test(doc.cookie)}var util=util$6,Global=util.Global,sessionStorage_1={name:"sessionStorage",read:read$1,write:write$1,each:each$1,remove:remove$1,clearAll:clearAll$1};function sessionStorage(){return Global.sessionStorage}function read$1(e){return sessionStorage().getItem(e)}function write$1(e,r){return sessionStorage().setItem(e,r)}function each$1(e){for(var r=sessionStorage().length-1;r>=0;r--){var t=sessionStorage().key(r);e(read$1(t),t)}}function remove$1(e){return sessionStorage().removeItem(e)}function clearAll$1(){return sessionStorage().clear()}var memoryStorage_1={name:"memoryStorage",read,write,each,remove,clearAll},memoryStorage={};function read(e){return memoryStorage[e]}function write(e,r){memoryStorage[e]=r}function each(e){for(var r in memoryStorage)memoryStorage.hasOwnProperty(r)&&e(memoryStorage[r],r)}function remove(e){delete memoryStorage[e]}function clearAll(e){memoryStorage={}}var all=[localStorage_1,oldFFGlobalStorage,oldIEUserDataStorage,cookieStorage,sessionStorage_1,memoryStorage_1];typeof JSON!="object"&&(JSON={});(function(){var rx_one=/^[\],:{}\s]*$/,rx_two=/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,rx_three=/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,rx_four=/(?:^|:|,)(?:\s*\[)+/g,rx_escapable=/[\\"\u0000-\u001f\u007f-\u009f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,rx_dangerous=/[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g;function f(e){return e<10?"0"+e:e}function this_value(){return this.valueOf()}typeof Date.prototype.toJSON!="function"&&(Date.prototype.toJSON=function(){return isFinite(this.valueOf())?this.getUTCFullYear()+"-"+f(this.getUTCMonth()+1)+"-"+f(this.getUTCDate())+"T"+f(this.getUTCHours())+":"+f(this.getUTCMinutes())+":"+f(this.getUTCSeconds())+"Z":null},Boolean.prototype.toJSON=this_value,Number.prototype.toJSON=this_value,String.prototype.toJSON=this_value);var gap,indent,meta,rep;function quote(e){return rx_escapable.lastIndex=0,rx_escapable.test(e)?'"'+e.replace(rx_escapable,function(r){var t=meta[r];return typeof t=="string"?t:"\\u"+("0000"+r.charCodeAt(0).toString(16)).slice(-4)})+'"':'"'+e+'"'}function str(e,r){var t,n,i,u,g=gap,l,o=r[e];switch(o&&typeof o=="object"&&typeof o.toJSON=="function"&&(o=o.toJSON(e)),typeof rep=="function"&&(o=rep.call(r,e,o)),typeof o){case"string":return quote(o);case"number":return isFinite(o)?String(o):"null";case"boolean":case"null":return String(o);case"object":if(!o)return"null";if(gap+=indent,l=[],Object.prototype.toString.apply(o)==="[object Array]"){for(u=o.length,t=0;t<u;t+=1)l[t]=str(t,o)||"null";return i=l.length===0?"[]":gap?`[
`+gap+l.join(`,
`+gap)+`
`+g+"]":"["+l.join(",")+"]",gap=g,i}if(rep&&typeof rep=="object")for(u=rep.length,t=0;t<u;t+=1)typeof rep[t]=="string"&&(n=rep[t],i=str(n,o),i&&l.push(quote(n)+(gap?": ":":")+i));else for(n in o)Object.prototype.hasOwnProperty.call(o,n)&&(i=str(n,o),i&&l.push(quote(n)+(gap?": ":":")+i));return i=l.length===0?"{}":gap?`{
`+gap+l.join(`,
`+gap)+`
`+g+"}":"{"+l.join(",")+"}",gap=g,i}}typeof JSON.stringify!="function"&&(meta={"\b":"\\b","	":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"},JSON.stringify=function(e,r,t){var n;if(gap="",indent="",typeof t=="number")for(n=0;n<t;n+=1)indent+=" ";else typeof t=="string"&&(indent=t);if(rep=r,r&&typeof r!="function"&&(typeof r!="object"||typeof r.length!="number"))throw new Error("JSON.stringify");return str("",{"":e})}),typeof JSON.parse!="function"&&(JSON.parse=function(text,reviver){var j;function walk(e,r){var t,n,i=e[r];if(i&&typeof i=="object")for(t in i)Object.prototype.hasOwnProperty.call(i,t)&&(n=walk(i,t),n!==void 0?i[t]=n:delete i[t]);return reviver.call(e,r,i)}if(text=String(text),rx_dangerous.lastIndex=0,rx_dangerous.test(text)&&(text=text.replace(rx_dangerous,function(e){return"\\u"+("0000"+e.charCodeAt(0).toString(16)).slice(-4)})),rx_one.test(text.replace(rx_two,"@").replace(rx_three,"]").replace(rx_four,"")))return j=eval("("+text+")"),typeof reviver=="function"?walk({"":j},""):j;throw new SyntaxError("JSON.parse")})})();var json2=json2Plugin;function json2Plugin(){return{}}var engine=storeEngine,storages=all,plugins=[json2],store_legacy=engine.createStore(storages,plugins);/*! js-cookie v3.0.1 | MIT */function assign(e){for(var r=1;r<arguments.length;r++){var t=arguments[r];for(var n in t)e[n]=t[n]}return e}var defaultConverter={read:function(e){return e[0]==='"'&&(e=e.slice(1,-1)),e.replace(/(%[\dA-F]{2})+/gi,decodeURIComponent)},write:function(e){return encodeURIComponent(e).replace(/%(2[346BF]|3[AC-F]|40|5[BDE]|60|7[BCD])/g,decodeURIComponent)}};function init(e,r){function t(i,u,g){if(typeof document!="undefined"){g=assign({},r,g),typeof g.expires=="number"&&(g.expires=new Date(Date.now()+g.expires*864e5)),g.expires&&(g.expires=g.expires.toUTCString()),i=encodeURIComponent(i).replace(/%(2[346B]|5E|60|7C)/g,decodeURIComponent).replace(/[()]/g,escape);var l="";for(var o in g)!g[o]||(l+="; "+o,g[o]!==!0&&(l+="="+g[o].split(";")[0]));return document.cookie=i+"="+e.write(u,i)+l}}function n(i){if(!(typeof document=="undefined"||arguments.length&&!i)){for(var u=document.cookie?document.cookie.split("; "):[],g={},l=0;l<u.length;l++){var o=u[l].split("="),p=o.slice(1).join("=");try{var v=decodeURIComponent(o[0]);if(g[v]=e.read(p,v),i===v)break}catch{}}return i?g[i]:g}}return Object.create({set:t,get:n,remove:function(i,u){t(i,"",assign({},u,{expires:-1}))},withAttributes:function(i){return init(this.converter,assign({},this.attributes,i))},withConverter:function(i){return init(assign({},this.converter,i),this.attributes)}},{attributes:{value:Object.freeze(r)},converter:{value:Object.freeze(e)}})}var api=init(defaultConverter,{path:"/"}),nprogress={exports:{}};/* NProgress, (c) 2013, 2014 Rico Sta. Cruz - http://ricostacruz.com/nprogress
 * @license MIT */(function(e,r){(function(t,n){e.exports=n()})(commonjsGlobal,function(){var t={};t.version="0.2.0";var n=t.settings={minimum:.08,easing:"ease",positionUsing:"",speed:200,trickle:!0,trickleRate:.02,trickleSpeed:800,showSpinner:!0,barSelector:'[role="bar"]',spinnerSelector:'[role="spinner"]',parent:"body",template:'<div class="bar" role="bar"><div class="peg"></div></div><div class="spinner" role="spinner"><div class="spinner-icon"></div></div>'};t.configure=function(a){var s,c;for(s in a)c=a[s],c!==void 0&&a.hasOwnProperty(s)&&(n[s]=c);return this},t.status=null,t.set=function(a){var s=t.isStarted();a=i(a,n.minimum,1),t.status=a===1?null:a;var c=t.render(!s),m=c.querySelector(n.barSelector),$=n.speed,w=n.easing;return c.offsetWidth,l(function(d){n.positionUsing===""&&(n.positionUsing=t.getPositioningCSS()),o(m,g(a,$,w)),a===1?(o(c,{transition:"none",opacity:1}),c.offsetWidth,setTimeout(function(){o(c,{transition:"all "+$+"ms linear",opacity:0}),setTimeout(function(){t.remove(),d()},$)},$)):setTimeout(d,$)}),this},t.isStarted=function(){return typeof t.status=="number"},t.start=function(){t.status||t.set(0);var a=function(){setTimeout(function(){!t.status||(t.trickle(),a())},n.trickleSpeed)};return n.trickle&&a(),this},t.done=function(a){return!a&&!t.status?this:t.inc(.3+.5*Math.random()).set(1)},t.inc=function(a){var s=t.status;return s?(typeof a!="number"&&(a=(1-s)*i(Math.random()*s,.1,.95)),s=i(s+a,0,.994),t.set(s)):t.start()},t.trickle=function(){return t.inc(Math.random()*n.trickleRate)},function(){var a=0,s=0;t.promise=function(c){return!c||c.state()==="resolved"?this:(s===0&&t.start(),a++,s++,c.always(function(){s--,s===0?(a=0,t.done()):t.set((a-s)/a)}),this)}}(),t.render=function(a){if(t.isRendered())return document.getElementById("nprogress");v(document.documentElement,"nprogress-busy");var s=document.createElement("div");s.id="nprogress",s.innerHTML=n.template;var c=s.querySelector(n.barSelector),m=a?"-100":u(t.status||0),$=document.querySelector(n.parent),w;return o(c,{transition:"all 0 linear",transform:"translate3d("+m+"%,0,0)"}),n.showSpinner||(w=s.querySelector(n.spinnerSelector),w&&_(w)),$!=document.body&&v($,"nprogress-custom-parent"),$.appendChild(s),s},t.remove=function(){y(document.documentElement,"nprogress-busy"),y(document.querySelector(n.parent),"nprogress-custom-parent");var a=document.getElementById("nprogress");a&&_(a)},t.isRendered=function(){return!!document.getElementById("nprogress")},t.getPositioningCSS=function(){var a=document.body.style,s="WebkitTransform"in a?"Webkit":"MozTransform"in a?"Moz":"msTransform"in a?"ms":"OTransform"in a?"O":"";return s+"Perspective"in a?"translate3d":s+"Transform"in a?"translate":"margin"};function i(a,s,c){return a<s?s:a>c?c:a}function u(a){return(-1+a)*100}function g(a,s,c){var m;return n.positionUsing==="translate3d"?m={transform:"translate3d("+u(a)+"%,0,0)"}:n.positionUsing==="translate"?m={transform:"translate("+u(a)+"%,0)"}:m={"margin-left":u(a)+"%"},m.transition="all "+s+"ms "+c,m}var l=function(){var a=[];function s(){var c=a.shift();c&&c(s)}return function(c){a.push(c),a.length==1&&s()}}(),o=function(){var a=["Webkit","O","Moz","ms"],s={};function c(d){return d.replace(/^-ms-/,"ms-").replace(/-([\da-z])/gi,function(S,b){return b.toUpperCase()})}function m(d){var S=document.body.style;if(d in S)return d;for(var b=a.length,O=d.charAt(0).toUpperCase()+d.slice(1),x;b--;)if(x=a[b]+O,x in S)return x;return d}function $(d){return d=c(d),s[d]||(s[d]=m(d))}function w(d,S,b){S=$(S),d.style[S]=b}return function(d,S){var b=arguments,O,x;if(b.length==2)for(O in S)x=S[O],x!==void 0&&S.hasOwnProperty(O)&&w(d,O,x);else w(d,b[1],b[2])}}();function p(a,s){var c=typeof a=="string"?a:h(a);return c.indexOf(" "+s+" ")>=0}function v(a,s){var c=h(a),m=c+s;p(c,s)||(a.className=m.substring(1))}function y(a,s){var c=h(a),m;!p(a,s)||(m=c.replace(" "+s+" "," "),a.className=m.substring(1,m.length-1))}function h(a){return(" "+(a.className||"")+" ").replace(/\s+/gi," ")}function _(a){a&&a.parentNode&&a.parentNode.removeChild(a)}return t})})(nprogress);var nProgress=nprogress.exports;export{_default as _,api as a,commonjsGlobal as c,nProgress as n,store_legacy as s};
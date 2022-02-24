import{_ as k,u as C,a as E}from"./index.0962dd28.js";import"./vendor.1caa6517.js";const l=t=>(Vue.pushScopeId("data-v-e8aceffe"),t=t(),Vue.popScopeId(),t),B={class:"header"},b={class:"logo"},$=l(()=>Vue.createElementVNode("span",null,"\u98DF\u4E3A\u5929",-1)),I={class:"menu"},F={class:"header__tools"},U=l(()=>Vue.createElementVNode("i",{style:{color:"red","font-size":"20px"},class:"el-icon-shopping-cart-full"},null,-1)),T={class:"info"},A={class:"el-dropdown-link"},S={class:"name"},R=l(()=>Vue.createElementVNode("img",{src:E,alt:""},null,-1)),D=l(()=>Vue.createElementVNode("i",{class:"el-icon-user-solid"},null,-1)),j=Vue.createTextVNode("\u4E2A\u4EBA\u4E2D\u5FC3"),z=l(()=>Vue.createElementVNode("i",{class:"el-icon-setting"},null,-1)),L=Vue.createTextVNode("\u540E\u53F0\u7BA1\u7406"),M=l(()=>Vue.createElementVNode("i",{class:"el-icon-user"},null,-1)),H=Vue.createTextVNode("\u767B\u5F55/\u6CE8\u518C"),K=l(()=>Vue.createElementVNode("i",{class:"el-icon-close"},null,-1)),P=Vue.createTextVNode("\u9000\u51FA"),q=Vue.defineComponent({setup(t){const{state:u,dispatch:V,getters:r}=C(),o=VueRouter.useRouter(),d=Vue.computed(()=>{let n=u.user.userInfo.nickname;return n||V("user/userInfo"),n}),c=Vue.computed(()=>r["cart/cTotalCount"]);async function a(n){switch(n){case"my":o.push("/info");break;case"admin":window.open("http://f-admin.f1dao.cn");break;case"sign":o.push("/sign");break;case"exit":await V("user/userLogout",u.user.token),o.push("/sign");break}}const s=Vue.ref([{path:"/",icon:"el-icon-s-home",title:"\u9996\u9875"},{path:"/category/1",icon:"el-icon-menu",title:"\u5206\u7C7B"},{path:"/ranking",icon:"el-icon-trophy",title:"\u6392\u884C"}]);return(n,e)=>{const _=Vue.resolveComponent("lottie-player"),f=Vue.resolveComponent("router-link"),g=Vue.resolveComponent("el-menu-item"),v=Vue.resolveComponent("el-menu"),p=Vue.resolveComponent("el-badge"),x=Vue.resolveComponent("el-avatar"),m=Vue.resolveComponent("el-dropdown-item"),N=Vue.resolveComponent("el-dropdown-menu"),w=Vue.resolveComponent("el-dropdown");return Vue.openBlock(),Vue.createElementBlock("div",B,[Vue.createElementVNode("div",b,[Vue.createVNode(f,{to:{path:"/"}},{default:Vue.withCtx(()=>[Vue.createVNode(_,{class:"lottie-player",src:"/static/lottie/fast-food.json",background:"#fff",speed:"2.2",loop:"",autoplay:""})]),_:1}),$]),Vue.createElementVNode("div",I,[Vue.createVNode(v,{mode:"horizontal",router:"","default-active":n.$route.path,"active-text-color":"#f9ca24"},{default:Vue.withCtx(()=>[(Vue.openBlock(!0),Vue.createElementBlock(Vue.Fragment,null,Vue.renderList(s.value,(h,y)=>(Vue.openBlock(),Vue.createBlock(g,{key:y,index:h.path},{title:Vue.withCtx(()=>[Vue.createElementVNode("span",null,Vue.toDisplayString(h.title),1)]),default:Vue.withCtx(()=>[Vue.createElementVNode("i",{class:Vue.normalizeClass(h.icon),style:{"margin-right":"0"}},null,2)]),_:2},1032,["index"]))),128))]),_:1},8,["default-active"])]),Vue.createElementVNode("ul",F,[Vue.createElementVNode("li",{onClick:e[0]||(e[0]=h=>Vue.unref(o).push("cart"))},[Vue.createVNode(p,{value:Vue.unref(c),type:"danger"},{default:Vue.withCtx(()=>[U]),_:1},8,["value"])])]),Vue.createElementVNode("div",T,[Vue.createVNode(w,{trigger:"click",onCommand:a},{dropdown:Vue.withCtx(()=>[Vue.createVNode(N,{slot:"dropdown",class:"popper-dropdown-menu-user"},{default:Vue.withCtx(()=>[Vue.createVNode(m,{command:"my"},{default:Vue.withCtx(()=>[D,j]),_:1}),Vue.createVNode(m,{command:"admin"},{default:Vue.withCtx(()=>[z,L]),_:1}),Vue.createVNode(m,{command:"sign"},{default:Vue.withCtx(()=>[M,H]),_:1}),Vue.createVNode(m,{command:"exit"},{default:Vue.withCtx(()=>[K,P]),_:1})]),_:1})]),default:Vue.withCtx(()=>[Vue.createElementVNode("span",A,[Vue.createElementVNode("span",S,Vue.toDisplayString(Vue.unref(d)||"\u672A\u767B\u5F55"),1),Vue.createVNode(x,{src:Vue.unref(u).user.userInfo.headImg},{default:Vue.withCtx(()=>[R]),_:1},8,["src"])])]),_:1})])])}}});var G=k(q,[["__scopeId","data-v-e8aceffe"]]);const J={class:"tabbar"},O=["src"],Q=["src"],W=Vue.defineComponent({setup(t){const u=VueRouter.useRoute(),{getters:V}=C(),r=Vue.computed(()=>V["cart/cTotalCount"]),o=Vue.ref(1),d=Vue.ref([{id:1,path:"/",imgUrl:"/static/img/home.png",imgUrl2:"/static/img/home2.png"},{id:2,path:"/category/1",imgUrl:"/static/img/category.png",imgUrl2:"/static/img/category2.png"},{id:3,path:"/cart",imgUrl:"/static/img/cart.png",imgUrl2:"/static/img/cart2.png"},{id:4,path:"/info",imgUrl:"/static/img/my.png",imgUrl2:"/static/img/my2.png"}]);return Vue.watch(u,c=>{let a=d.value.find(s=>s.path==c.path);a&&(o.value=a.id)},{immediate:!0}),(c,a)=>{const s=Vue.resolveComponent("el-badge"),n=Vue.resolveComponent("router-link");return Vue.openBlock(),Vue.createElementBlock("div",J,[(Vue.openBlock(!0),Vue.createElementBlock(Vue.Fragment,null,Vue.renderList(d.value,(e,_)=>(Vue.openBlock(),Vue.createBlock(n,{key:e.id,to:{path:e.path}},{default:Vue.withCtx(()=>[e.id==3?(Vue.openBlock(),Vue.createBlock(s,{key:0,value:Vue.unref(r),max:99,type:"danger"},{default:Vue.withCtx(()=>[Vue.createElementVNode("img",{src:o.value==e.id?e.imgUrl2:e.imgUrl,alt:""},null,8,O)]),_:2},1032,["value"])):(Vue.openBlock(),Vue.createElementBlock("img",{key:1,src:o.value==e.id?e.imgUrl2:e.imgUrl,alt:""},null,8,Q))]),_:2},1032,["to"]))),128))])}}});var X=k(W,[["__scopeId","data-v-04ef3b70"]]);const i=t=>(Vue.pushScopeId("data-v-5f57284d"),t=t(),Vue.popScopeId(),t),Y={class:"box-container"},Z={key:0,class:"header"},ee={key:0,class:"header flex justify-between"},te={class:"logo"},oe=i(()=>Vue.createElementVNode("span",null,"\u98DF\u4E3A\u5929",-1)),ne={class:"flex items-center mr-2.5"},ue=i(()=>Vue.createElementVNode("span",{class:"el-dropdown-link"},[Vue.createElementVNode("i",{class:"el-icon-plus px-1.5 py-2.5 text-xl"})],-1)),ce=i(()=>Vue.createElementVNode("i",{class:"el-icon-trophy"},null,-1)),ae=Vue.createTextVNode("\u6392\u884C"),re=i(()=>Vue.createElementVNode("i",{class:"el-icon-setting"},null,-1)),se=Vue.createTextVNode("\u540E\u53F0\u7BA1\u7406"),le={key:0,class:"footer text-center text-sm"},de=i(()=>Vue.createElementVNode("a",{href:"https://beian.miit.gov.cn/",class:"text-gray-600 hover:underline"},"\u9ED4ICP\u59072021007337\u53F7-1",-1)),ie=i(()=>Vue.createElementVNode("p",{class:"text-purple-800 font-medium"},[Vue.createTextVNode("Copyright \xA9 2021 "),Vue.createElementVNode("a",{class:"hover:underline",href:"https://gitee.com/f1dao",target:"_blank"},"gitee@f1dao")],-1)),Ve=[de,ie],_e=Vue.defineComponent({setup(t){const{state:u,dispatch:V}=C(),r=VueRouter.useRoute(),o=VueRouter.useRouter();Vue.ref(!1);async function d(c){switch(c){case"admin":window.open("http://f-admin.f1dao.cn");break;case"ranking":o.push("/ranking");break}}return(c,a)=>{const s=Vue.resolveComponent("lottie-player"),n=Vue.resolveComponent("router-link"),e=Vue.resolveComponent("el-dropdown-item"),_=Vue.resolveComponent("el-dropdown-menu"),f=Vue.resolveComponent("el-dropdown"),g=Vue.resolveComponent("router-view"),v=Vue.resolveComponent("el-scrollbar");return Vue.openBlock(),Vue.createElementBlock("div",Y,[Vue.unref(u).user.isMini?(Vue.openBlock(),Vue.createElementBlock(Vue.Fragment,{key:1},[Vue.unref(r).path=="/"?(Vue.openBlock(),Vue.createElementBlock("div",ee,[Vue.createElementVNode("div",te,[Vue.createVNode(n,{to:{path:"/"}},{default:Vue.withCtx(()=>[Vue.createVNode(s,{class:"lottie-player",src:"/static/lottie/fast-food.json",background:"#fff",speed:"2.2",loop:"",autoplay:""})]),_:1}),oe]),Vue.createElementVNode("div",ne,[Vue.createElementVNode("i",{class:"el-icon-search px-1.5 py-2.5 mr-2.5 text-xl",onClick:a[0]||(a[0]=p=>c.$router.push("/search"))}),Vue.createVNode(f,{trigger:"click",onCommand:d},{dropdown:Vue.withCtx(()=>[Vue.createVNode(_,{slot:"dropdown",class:"popper-dropdown-menu-user"},{default:Vue.withCtx(()=>[Vue.createVNode(e,{command:"ranking"},{default:Vue.withCtx(()=>[ce,ae]),_:1}),Vue.createVNode(e,{command:"admin"},{default:Vue.withCtx(()=>[re,se]),_:1})]),_:1})]),default:Vue.withCtx(()=>[ue]),_:1})])])):Vue.createCommentVNode("",!0)],64)):(Vue.openBlock(),Vue.createElementBlock("div",Z,[Vue.createVNode(G)])),Vue.createVNode(v,null,{default:Vue.withCtx(()=>[Vue.createElementVNode("div",{class:Vue.normalizeClass(["layer",{layer2:Vue.unref(r).path=="/cart"&&Vue.unref(u).user.isMini}])},[Vue.createVNode(g,null,{default:Vue.withCtx(({Component:p})=>[(Vue.openBlock(),Vue.createBlock(Vue.KeepAlive,{max:"10"},[(Vue.openBlock(),Vue.createBlock(Vue.resolveDynamicComponent(p)))],1024))]),_:1})],2),Vue.unref(r).path=="/"?(Vue.openBlock(),Vue.createElementBlock("div",le,Ve)):Vue.createCommentVNode("",!0)]),_:1}),Vue.unref(u).user.isMini?(Vue.openBlock(),Vue.createBlock(X,{key:2})):Vue.createCommentVNode("",!0)])}}});var he=k(_e,[["__scopeId","data-v-5f57284d"]]);export{he as default};
import{_,u as p,r as u,c as i}from"./index.f32077d6.js";import"./vendor.cfa0d6f6.js";const o=e=>(Vue.pushScopeId("data-v-a0d7c4f2"),e=e(),Vue.popScopeId(),e),V={class:"desk"},m=o(()=>Vue.createElementVNode("div",{class:"title h-3/6 text-center text-white flex items-center justify-center"},[Vue.createElementVNode("div",null,[Vue.createElementVNode("p",{class:"text-2xl"},"\u6B22\u8FCE\u6765\u5230"),Vue.createElementVNode("p",{class:"text-3xl mt-4"},"\u98DF\u4E3A\u5929\u9910\u996E\u5E97")])],-1)),x={class:"desk-card h-3/6 p-5"},f=o(()=>Vue.createElementVNode("p",{class:"text-lg font-bold"},"\u4F60\u597D,\u6B22\u8FCE\u60A8\u70B9\u9910",-1)),h={class:"text-gray-800 text-sm mt-2.5"},v=Vue.createTextVNode("\u5F00\u59CB\u70B9\u9910"),E=Vue.defineComponent({setup(e){const c=VueRouter.useRoute(),{state:a,commit:s,dispatch:n}=p();function d(){s("user/setDNumber",c.params.desk),a.user.token?u.push("/"):i.auto().then(t=>{s("user/setToken",t.data),n("user/userInfo"),u.push("/")})}return(t,N)=>{const r=Vue.resolveComponent("el-button"),l=Vue.resolveComponent("el-card");return Vue.openBlock(),Vue.createElementBlock("div",V,[m,Vue.createElementVNode("div",x,[Vue.createVNode(l,{"body-style":{padding:"20px"},class:"h-4/6"},{default:Vue.withCtx(()=>[f,Vue.createElementVNode("p",h,"\u684C\u53F7: "+Vue.toDisplayString(t.$route.params.desk),1),Vue.createVNode(r,{onClick:d,type:"warning",class:"small mx-auto w-full mt-10 text-black"},{default:Vue.withCtx(()=>[v]),_:1})]),_:1})])])}}});var y=_(E,[["__scopeId","data-v-a0d7c4f2"]]);export{y as default};

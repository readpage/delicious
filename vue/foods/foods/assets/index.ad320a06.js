import{b as V}from"./index.f32077d6.js";import"./vendor.cfa0d6f6.js";const d={class:"orders"},p={class:"view p-2.5"},_={class:"text-gray-400 text-sm"},m={class:"flex mt-1.5 text-sm"},v={class:"ml-2.5 ellipsis-1 flex flex-col justify-between",style:{width:"calc(100% - 90px)"}},g={class:"truncate"},h={class:"flex justify-between mt-1"},y={class:"is-price"},x={class:"mt-2.5"},E=Vue.defineComponent({setup(f){const o=Vue.ref([]);return Vue.onActivated(()=>{V.list().then(n=>{o.value=n.data})}),(n,l)=>{const u=Vue.resolveComponent("el-page-header"),s=Vue.resolveComponent("el-image"),r=Vue.resolveComponent("router-link"),c=Vue.resolveComponent("el-card"),a=Vue.resolveComponent("el-empty"),i=Vue.resolveComponent("el-scrollbar");return Vue.openBlock(),Vue.createElementBlock("div",d,[Vue.createVNode(u,{class:"bg-gray-700 p-2.5 text-white",onBack:l[0]||(l[0]=e=>n.$router.push("/info")),content:"\u6211\u7684\u8BA2\u5355"}),Vue.createVNode(i,null,{default:Vue.withCtx(()=>[Vue.createElementVNode("div",p,[o.value.length!=0?(Vue.openBlock(!0),Vue.createElementBlock(Vue.Fragment,{key:0},Vue.renderList(o.value,e=>(Vue.openBlock(),Vue.createElementBlock(Vue.Fragment,null,[(Vue.openBlock(!0),Vue.createElementBlock(Vue.Fragment,null,Vue.renderList(e.foods,t=>(Vue.openBlock(),Vue.createBlock(c,{class:"my-2.5","body-style":{padding:"10px"}},{default:Vue.withCtx(()=>[Vue.createVNode(r,{to:`/foods/detail/${t.id}`},{default:Vue.withCtx(()=>[Vue.createElementVNode("div",_,"\u8BA2\u5355\u53F7: "+Vue.toDisplayString(e.number),1),Vue.createElementVNode("div",m,[Vue.createVNode(s,{style:{width:"80px",height:"80px"},fit:"cover",src:t.img,lazy:""},null,8,["src"]),Vue.createElementVNode("div",v,[Vue.createElementVNode("div",null,[Vue.createElementVNode("p",g,Vue.toDisplayString(t.name),1),Vue.createElementVNode("div",h,[Vue.createElementVNode("span",y,Vue.toDisplayString(t.price),1),Vue.createElementVNode("span",null,"x"+Vue.toDisplayString(t.count),1)]),Vue.createElementVNode("div",x,Vue.toDisplayString(e.dNumber?`\u684C\u53F7:${e.dNumber}`:""),1)]),Vue.createElementVNode("p",null,"\u4E0B\u5355\u65F6\u95F4:"+Vue.toDisplayString(e.createTime),1)])])]),_:2},1032,["to"])]),_:2},1024))),256))],64))),256)):(Vue.openBlock(),Vue.createBlock(a,{key:1,style:{height:"500px"},description:"\u6682\u65E0\u8BA2\u5355","image-size":200}))])]),_:1})])}}});export{E as default};

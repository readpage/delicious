import{_ as x}from"./load.937dc889.js";import{_ as j}from"./FoodCard.2b16dc5f.js";import{_ as y,u as B,A as C}from"./index.f32077d6.js";import"./day.82e2a29a.js";import"./vendor.cfa0d6f6.js";const k={class:"top m-4 rounded-md"},E={class:"text-white",style:{position:"absolute",left:"50%","margin-left":"-16px"}},b={class:"flex justify-center"},w={key:0,src:x,style:{height:"45px"},alt:""},N={key:1},D=Vue.defineComponent({setup(F){const l=VueRouter.useRoute(),{commit:m,state:p}=B(),n=Vue.reactive([{id:1,img:"/static/img/recai.jpg",title:"\u70ED\u83DC"},{id:2,img:"/static/img/liangcai.jpg",title:"\u51C9\u83DC"},{id:3,img:"/static/img/zhushi.jpg",title:"\u4E3B\u98DF"},{id:4,img:"/static/img/xiaochi.jpg",title:"\u5C0F\u5403"},{id:5,img:"/static/img/xican.jpg",title:"\u897F\u9910"},{id:6,img:"/static/img/hongbei.jpg",title:"\u70D8\u7119"},{id:7,img:"/static/img/yinpin.jpg",title:"\u996E\u54C1"}]),e=Vue.reactive({count:20,loading:!1,total:30,foods:[]}),a=Vue.computed(()=>{let t=n.find(d=>l.params.type==d.id);return t||n[0]}),i=Vue.ref(),s=Vue.ref();Vue.onMounted(()=>{i.value.wrap.addEventListener("scroll",g)});function g(){i.value.wrap.scrollTop+i.value.wrap.offsetHeight>=s.value.offsetHeight&&!e.loading&&f()}function r(){return e.count>=e.total}function f(){r()||(e.loading=!0,setTimeout(()=>{e.count+=10,c().then(t=>{e.loading=!1})},500))}function c(){return m("app/showLoading"),C.page({urlParam:`/1/${e.count}`,type:a.value.title}).then(t=>{e.foods=t.data.list,e.total=t.data.total})}Vue.watch(()=>l.params.type,t=>{t&&(p.user.isMini?e.count=3:e.count=20,c(),i.value&&i.value.setScrollTop(0))},{immediate:!0});const{loading:V,foods:_}=Vue.toRefs(e);return(t,d)=>{const v=Vue.resolveComponent("el-image"),h=Vue.resolveComponent("el-scrollbar");return Vue.openBlock(),Vue.createBlock(h,{ref:(o,u)=>{u.scrollbar=o,i.value=o}},{default:Vue.withCtx(()=>[Vue.createElementVNode("div",k,[Vue.createVNode(v,{src:Vue.unref(a).img,fit:"cover"},null,8,["src"]),Vue.createElementVNode("span",E,Vue.toDisplayString(Vue.unref(a).title),1)]),Vue.createElementVNode("div",{ref:(o,u)=>{u.scroll=o,s.value=o},class:"bottom grid grid-cols-1 gap-2.5 m-1 md:grid-cols-3 lg:m-2.5 lg:grid-cols-4 lg:gap-2.5 xl:grid-cols-5"},[(Vue.openBlock(!0),Vue.createElementBlock(Vue.Fragment,null,Vue.renderList(Vue.unref(_),o=>(Vue.openBlock(),Vue.createBlock(j,{data:o},null,8,["data"]))),256))],512),Vue.createElementVNode("div",b,[Vue.unref(V)?(Vue.openBlock(),Vue.createElementBlock("img",w)):Vue.createCommentVNode("",!0),r()?(Vue.openBlock(),Vue.createElementBlock("span",N,"\u6CA1\u6709\u66F4\u591A\u4E86")):Vue.createCommentVNode("",!0)])]),_:1},512)}}});var T=y(D,[["__scopeId","data-v-99814392"]]);export{T as default};

import{u as e}from"./index.bf837159.js";import{e as s,B as a,s as l,I as t,m as o,r as n,o as r,f as i,h as c,E as d,g as u,F as p,C as f,G as m,t as g,L as h,v}from"./vendor.f7504fb0.js";const y=m();g("data-v-628d51cf");const k={class:"error-page"},_={class:"code"},C={class:"desc"},b={class:"content"},x={class:"router"},V={style:{float:"left"}},j={style:{float:"right"}},z=h("跳转"),I={class:"link"},S={key:1,class:"router"},B=h("返回登录页"),E=h("Copyright © 2021 "),F=h("gitee");v();var G=s({props:{code:String,desc:String},setup(s){const m=s,{code:g,desc:h}=a(m),v=l.get("token"),{state:G}=e(),L=t(),U=o("");return(e,s)=>{const a=n("el-option"),l=n("el-select"),t=n("el-button"),o=n("el-link"),m=n("el-space");return r(),i("div",k,[c("h1",_,d(u(g)),1),c("p",C,d(u(h)),1),c("div",b,[u(v)?(r(),i(p,{key:0},[c("div",x,[c(l,{modelValue:U.value,"onUpdate:modelValue":s[1]||(s[1]=e=>U.value=e),size:"small","prefix-icon":"el-icon-search"},{default:y((()=>[(r(!0),i(p,null,f(u(G).menu.routes,((e,s)=>(r(),i(a,{key:s,value:e.path},{default:y((()=>[c("span",V,d(e.meta.title),1),c("span",j,d(e.path),1)])),_:2},1032,["value"])))),128))])),_:1},8,["modelValue"]),c(t,{round:"",type:"primary",size:"small",onClick:s[2]||(s[2]=e=>u(L).push(U.value))},{default:y((()=>[z])),_:1})]),c("ul",I,[c("li",{onClick:s[3]||(s[3]=e=>u(L).push("/"))},"返回首页"),c("li",{onClick:s[4]||(s[4]=e=>u(L).go(-1))},"返回上一页"),c("li",{onClick:s[5]||(s[5]=e=>u(L).push("/sign"))},"重新登录")])],64)):(r(),i("div",S,[c(t,{type:"primary",round:"",onClick:s[6]||(s[6]=e=>u(L).push("/sign"))},{default:y((()=>[B])),_:1})]))]),c(m,{alignment:"flex-end",class:"copyright"},{default:y((()=>[E,c(o,{type:"primary",underline:!1,href:"https://gitee.com/f1dao ",target:"_blank"},{default:y((()=>[F])),_:1})])),_:1})])}}});G.__scopeId="data-v-628d51cf";export{G as _};
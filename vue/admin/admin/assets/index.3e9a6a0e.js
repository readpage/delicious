import{e as a,m as t,r as e,o as s,f as l,h as n,t as o,v as r,F as d,C as i,E as u,G as c}from"./vendor.f7504fb0.js";const v={class:"bar"};var p=a({setup(a){const o={title:{text:"柱状图"},tooltip:{},legend:{data:["销量"]},xAxis:{data:["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]},yAxis:{},series:[{name:"销量",type:"bar",data:[5,20,36,10,10,20]}]},r=t(!0);return setTimeout((()=>{r.value=!1}),2e3),(a,t)=>{const d=e("v-chart");return s(),l("div",v,[n(d,{loading:r.value,option:o},null,8,["loading"])])}}});o("data-v-5f928a34");const f={class:"line"};r();var b=a({setup(a){const o=t({xAxis:{type:"category",data:["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]},yAxis:{type:"value"},series:[{data:[150,230,224,218,135,147,260],type:"line"}]});return(a,t)=>{const r=e("v-chart");return s(),l("div",f,[n(r,{option:o.value},null,8,["option"])])}}});b.__scopeId="data-v-5f928a34",o("data-v-b5f083aa");const _={class:"pie"};r();var x=a({setup(a){const o=t({tooltip:{},legend:{orient:"vertical",left:"left"},title:{text:"销售额类别占比",left:"center"},series:{name:"访问来源",type:"pie",radius:"55%",data:[]}});return(a,t)=>{const r=e("v-chart");return s(),l("div",_,[n(r,{option:o.value},null,8,["option"])])}}});x.__scopeId="data-v-b5f083aa";const y=c();o("data-v-35749fad");const m={class:"view"},g={class:"data"},h={class:"statis"},A={class:"statis2"},I={class:"statis2"};r();var T=a({setup(a){const o=t([{label:"总销售额"},{label:"总访问量"},{label:"支付笔数"},{label:"总销售额"}]);return(a,t)=>{const r=e("el-card"),c=e("el-scrollbar");return s(),l("div",m,[n(c,null,{default:y((()=>[n("div",g,[n("div",h,[(s(!0),l(d,null,i(o.value,(a=>(s(),l(r,null,{default:y((()=>[n("span",null,u(a.label),1)])),_:2},1024)))),256))]),n("div",A,[n(r,null,{default:y((()=>[n(p)])),_:1}),n(r,null,{default:y((()=>[n(b)])),_:1})]),n("div",I,[n(r,null,{default:y((()=>[n(x)])),_:1}),n(r)])])])),_:1})])}}});T.__scopeId="data-v-35749fad";export{T as default};
import{u as e,g as a}from"./index.99dd7a58.js";import{d as t,L as l,r as o,M as i,o as n,c as s,a as r,O as p,u as d,x as u,y as g,E as c,z as f}from"./vendor.341633ee.js";const m=u();g("data-v-b787f808");const h={class:"view"},b={class:"role"},w=c("刷新");f();var z=t({setup(t){const{state:u}=e(),g=l({total:0,pageNum:1,pageSize:5,logInfo:[]});function c(e){g.pageSize=e,z()}function f(e){g.pageNum=e,z()}function z(){a({urlParam:`/${g.pageNum}/${g.pageSize}`}).then((e=>{g.logInfo=e.data.list,g.total=e.data.total}))}return z(),(e,a)=>{const t=o("el-button"),l=o("el-space"),v=o("el-table-column"),x=o("el-table"),_=o("el-pagination"),y=o("el-scrollbar"),S=i("loading");return n(),s("div",h,[r(y,null,{default:m((()=>[r("div",b,[r(l,{size:10},{default:m((()=>[r(t,{size:"mini",icon:"el-icon-refresh",onClick:z},{default:m((()=>[w])),_:1})])),_:1}),p(r(x,{data:d(g).logInfo,stripe:"","header-cell-style":{background:"#f5f7fa",color:"#606266"},"max-height":"500","element-loading-text":"拼命加载中","element-loading-spinner":"el-icon-loading"},{default:m((()=>[r(v,{type:"selection",width:"50"}),r(v,{label:"操作人员",prop:"username","show-overflow-tooltip":"","min-width":"150"}),r(v,{label:"请求方式",prop:"requestMethod",width:"80"}),r(v,{label:"请求地址",prop:"url",width:"180"}),r(v,{label:"操作系统",prop:"os",width:"120"}),r(v,{label:"ip地址",prop:"ipAddr",width:"140"}),r(v,{label:"地理位置",prop:"location",width:"140"}),r(v,{label:"操作信息",prop:"msg",width:"120"}),r(v,{label:"创建时间",prop:"createTime",width:"180"}),r(v,{label:"操作",fixed:"right",width:"70"},{default:m((()=>[r(t,{type:"primary",size:"mini",icon:"el-icon-edit"})])),_:1})])),_:1},8,["data"]),[[S,d(u).user.loading]]),r(_,{layout:"total, sizes, pre, pager, next, jumper",small:"",total:d(g).total,"page-sizes":[5,10,20,40],"page-size":d(g).pageSize,background:"",onCurrentChange:f,onSizeChange:c},null,8,["total","page-size"])])])),_:1})])}}});z.__scopeId="data-v-b787f808";export{z as default};
import{u as e,d as a}from"./index.bf43a737.js";import{d as t,J as l,r as i,L as o,o as n,c as s,a as r,M as d,u as p,y as c,z as u,E as m,A as g}from"./vendor.58eb613c.js";const f=c();u("data-v-60198c5c");const h={class:"view"},b={class:"role"},z=m("刷新");g();var w=t({setup(t){const{state:c}=e(),u=l({total:0,pageSize:5,pageNum:1,role:[]});function m(e){u.pageSize=e,w()}function g(e){u.pageNum=e,w()}function w(){a({urlParam:`/${u.pageNum}/${u.pageSize}`}).then((e=>{u.role=e.data.list,u.total=e.data.total}))}return w(),(e,a)=>{const t=i("el-button"),l=i("el-space"),v=i("el-table-column"),_=i("el-table"),x=i("el-pagination"),y=i("el-scrollbar"),S=o("loading");return n(),s("div",h,[r(y,null,{default:f((()=>[r("div",b,[r(l,{size:10},{default:f((()=>[r(t,{size:"mini",icon:"el-icon-refresh",onClick:w},{default:f((()=>[z])),_:1})])),_:1}),d(r(_,{data:p(u).role,stripe:"","header-cell-style":{background:"#f5f7fa",color:"#606266"},"max-height":"500","element-loading-text":"拼命加载中","element-loading-spinner":"el-icon-loading"},{default:f((()=>[r(v,{label:"角色名称",prop:"name","show-overflow-tooltip":"","min-width":"150"}),r(v,{label:"昵称",prop:"nickname","show-overflow-tooltip":"","min-width":"150"}),r(v,{label:"创建时间",prop:"createTime",width:"180"}),r(v,{label:"修改时间",prop:"updateTime",width:"180"}),r(v,{label:"版本",prop:"version","min-width":"50"}),r(v,{label:"操作",fixed:"right",width:"130"},{default:f((()=>[r(l,null,{default:f((()=>[r(t,{type:"primary",size:"mini",icon:"el-icon-edit"}),r(t,{type:"danger",size:"mini",icon:"el-icon-delete"})])),_:1})])),_:1})])),_:1},8,["data"]),[[S,p(c).user.loading]]),r(x,{layout:"total, sizes, pre, pager, next, jumper",small:"",total:p(u).total,"page-sizes":[5,10,20,40],"page-size":p(u).pageSize,background:"",onCurrentChange:g,onSizeChange:m},null,8,["total","page-size"])])])),_:1})])}}});w.__scopeId="data-v-60198c5c";export{w as default};
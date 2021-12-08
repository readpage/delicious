import{A as P,_ as ae}from"./index.b0ad68c7.js";import{c as U}from"./vendor.84a7fb30.js";var J={exports:{}};(function(g,f){(function(_,i){g.exports=i()})(U,function(){var _=1e3,i=6e4,m=36e5,c="millisecond",s="second",M="minute",$="hour",C="day",E="week",p="month",A="quarter",b="year",N="date",G="Invalid Date",R=/^(\d{4})[-/]?(\d{1,2})?[-/]?(\d{0,2})[Tt\s]*(\d{1,2})?:?(\d{1,2})?:?(\d{1,2})?[.:]?(\d+)?$/,ee=/\[([^\]]+)]|Y{1,4}|M{1,4}|D{1,2}|d{1,4}|H{1,2}|h{1,2}|a|A|m{1,2}|s{1,2}|Z{1,2}|SSS/g,te={name:"en",weekdays:"Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),months:"January_February_March_April_May_June_July_August_September_October_November_December".split("_")},j=function(a,n,e){var o=String(a);return!o||o.length>=n?a:""+Array(n+1-o.length).join(e)+a},ne={s:j,z:function(a){var n=-a.utcOffset(),e=Math.abs(n),o=Math.floor(e/60),t=e%60;return(n<=0?"+":"-")+j(o,2,"0")+":"+j(t,2,"0")},m:function a(n,e){if(n.date()<e.date())return-a(e,n);var o=12*(e.year()-n.year())+(e.month()-n.month()),t=n.clone().add(o,p),r=e-t<0,u=n.clone().add(o+(r?-1:1),p);return+(-(o+(e-t)/(r?t-u:u-t))||0)},a:function(a){return a<0?Math.ceil(a)||0:Math.floor(a)},p:function(a){return{M:p,y:b,w:E,d:C,D:N,h:$,m:M,s,ms:c,Q:A}[a]||String(a||"").toLowerCase().replace(/s$/,"")},u:function(a){return a===void 0}},k="en",S={};S[k]=te;var z=function(a){return a instanceof L},F=function(a,n,e){var o;if(!a)return k;if(typeof a=="string")S[a]&&(o=a),n&&(S[a]=n,o=a);else{var t=a.name;S[t]=a,o=t}return!e&&o&&(k=o),o||!e&&k},V=function(a,n){if(z(a))return a.clone();var e=typeof n=="object"?n:{};return e.date=a,e.args=arguments,new L(e)},l=ne;l.l=F,l.i=z,l.w=function(a,n){return V(a,{locale:n.$L,utc:n.$u,x:n.$x,$offset:n.$offset})};var L=function(){function a(e){this.$L=F(e.locale,null,!0),this.parse(e)}var n=a.prototype;return n.parse=function(e){this.$d=function(o){var t=o.date,r=o.utc;if(t===null)return new Date(NaN);if(l.u(t))return new Date;if(t instanceof Date)return new Date(t);if(typeof t=="string"&&!/Z$/i.test(t)){var u=t.match(R);if(u){var d=u[2]-1||0,v=(u[7]||"0").substring(0,3);return r?new Date(Date.UTC(u[1],d,u[3]||1,u[4]||0,u[5]||0,u[6]||0,v)):new Date(u[1],d,u[3]||1,u[4]||0,u[5]||0,u[6]||0,v)}}return new Date(t)}(e),this.$x=e.x||{},this.init()},n.init=function(){var e=this.$d;this.$y=e.getFullYear(),this.$M=e.getMonth(),this.$D=e.getDate(),this.$W=e.getDay(),this.$H=e.getHours(),this.$m=e.getMinutes(),this.$s=e.getSeconds(),this.$ms=e.getMilliseconds()},n.$utils=function(){return l},n.isValid=function(){return this.$d.toString()!==G},n.isSame=function(e,o){var t=V(e);return this.startOf(o)<=t&&t<=this.endOf(o)},n.isAfter=function(e,o){return V(e)<this.startOf(o)},n.isBefore=function(e,o){return this.endOf(o)<V(e)},n.$g=function(e,o,t){return l.u(e)?this[o]:this.set(t,e)},n.unix=function(){return Math.floor(this.valueOf()/1e3)},n.valueOf=function(){return this.$d.getTime()},n.startOf=function(e,o){var t=this,r=!!l.u(o)||o,u=l.p(e),d=function(B,x){var Y=l.w(t.$u?Date.UTC(t.$y,x,B):new Date(t.$y,x,B),t);return r?Y:Y.endOf(C)},v=function(B,x){return l.w(t.toDate()[B].apply(t.toDate("s"),(r?[0,0,0,0]:[23,59,59,999]).slice(x)),t)},h=this.$W,y=this.$M,w=this.$D,D="set"+(this.$u?"UTC":"");switch(u){case b:return r?d(1,0):d(31,11);case p:return r?d(1,y):d(0,y+1);case E:var O=this.$locale().weekStart||0,T=(h<O?h+7:h)-O;return d(r?w-T:w+(6-T),y);case C:case N:return v(D+"Hours",0);case $:return v(D+"Minutes",1);case M:return v(D+"Seconds",2);case s:return v(D+"Milliseconds",3);default:return this.clone()}},n.endOf=function(e){return this.startOf(e,!1)},n.$set=function(e,o){var t,r=l.p(e),u="set"+(this.$u?"UTC":""),d=(t={},t[C]=u+"Date",t[N]=u+"Date",t[p]=u+"Month",t[b]=u+"FullYear",t[$]=u+"Hours",t[M]=u+"Minutes",t[s]=u+"Seconds",t[c]=u+"Milliseconds",t)[r],v=r===C?this.$D+(o-this.$W):o;if(r===p||r===b){var h=this.clone().set(N,1);h.$d[d](v),h.init(),this.$d=h.set(N,Math.min(this.$D,h.daysInMonth())).$d}else d&&this.$d[d](v);return this.init(),this},n.set=function(e,o){return this.clone().$set(e,o)},n.get=function(e){return this[l.p(e)]()},n.add=function(e,o){var t,r=this;e=Number(e);var u=l.p(o),d=function(y){var w=V(r);return l.w(w.date(w.date()+Math.round(y*e)),r)};if(u===p)return this.set(p,this.$M+e);if(u===b)return this.set(b,this.$y+e);if(u===C)return d(1);if(u===E)return d(7);var v=(t={},t[M]=i,t[$]=m,t[s]=_,t)[u]||1,h=this.$d.getTime()+e*v;return l.w(h,this)},n.subtract=function(e,o){return this.add(-1*e,o)},n.format=function(e){var o=this,t=this.$locale();if(!this.isValid())return t.invalidDate||G;var r=e||"YYYY-MM-DDTHH:mm:ssZ",u=l.z(this),d=this.$H,v=this.$m,h=this.$M,y=t.weekdays,w=t.months,D=function(x,Y,W,H){return x&&(x[Y]||x(o,r))||W[Y].substr(0,H)},O=function(x){return l.s(d%12||12,x,"0")},T=t.meridiem||function(x,Y,W){var H=x<12?"AM":"PM";return W?H.toLowerCase():H},B={YY:String(this.$y).slice(-2),YYYY:this.$y,M:h+1,MM:l.s(h+1,2,"0"),MMM:D(t.monthsShort,h,w,3),MMMM:D(w,h),D:this.$D,DD:l.s(this.$D,2,"0"),d:String(this.$W),dd:D(t.weekdaysMin,this.$W,y,2),ddd:D(t.weekdaysShort,this.$W,y,3),dddd:y[this.$W],H:String(d),HH:l.s(d,2,"0"),h:O(1),hh:O(2),a:T(d,v,!0),A:T(d,v,!1),m:String(v),mm:l.s(v,2,"0"),s:String(this.$s),ss:l.s(this.$s,2,"0"),SSS:l.s(this.$ms,3,"0"),Z:u};return r.replace(ee,function(x,Y){return Y||B[x]||u.replace(":","")})},n.utcOffset=function(){return 15*-Math.round(this.$d.getTimezoneOffset()/15)},n.diff=function(e,o,t){var r,u=l.p(o),d=V(e),v=(d.utcOffset()-this.utcOffset())*i,h=this-d,y=l.m(this,d);return y=(r={},r[b]=y/12,r[p]=y,r[A]=y/3,r[E]=(h-v)/6048e5,r[C]=(h-v)/864e5,r[$]=h/m,r[M]=h/i,r[s]=h/_,r)[u]||h,t?y:l.a(y)},n.daysInMonth=function(){return this.endOf(p).$D},n.$locale=function(){return S[this.$L]},n.locale=function(e,o){if(!e)return this.$L;var t=this.clone(),r=F(e,o,!0);return r&&(t.$L=r),t},n.clone=function(){return l.w(this.$d,this)},n.toDate=function(){return new Date(this.valueOf())},n.toJSON=function(){return this.isValid()?this.toISOString():null},n.toISOString=function(){return this.$d.toISOString()},n.toString=function(){return this.$d.toUTCString()},a}(),K=L.prototype;return V.prototype=K,[["$ms",c],["$s",s],["$m",M],["$H",$],["$W",C],["$M",p],["$y",b],["$D",N]].forEach(function(a){K[a[1]]=function(n){return this.$g(n,a[0],a[1])}}),V.extend=function(a,n){return a.$i||(a(n,L,V),a.$i=!0),V},V.locale=F,V.isDayjs=z,V.unix=function(a){return V(1e3*a)},V.en=S[k],V.Ls=S,V.p={},V})})(J);var I=J.exports,oe={exports:{}};(function(g,f){(function(_,i){g.exports=i(J.exports)})(U,function(_){function i(s){return s&&typeof s=="object"&&"default"in s?s:{default:s}}var m=i(_),c={name:"zh-cn",weekdays:"\u661F\u671F\u65E5_\u661F\u671F\u4E00_\u661F\u671F\u4E8C_\u661F\u671F\u4E09_\u661F\u671F\u56DB_\u661F\u671F\u4E94_\u661F\u671F\u516D".split("_"),weekdaysShort:"\u5468\u65E5_\u5468\u4E00_\u5468\u4E8C_\u5468\u4E09_\u5468\u56DB_\u5468\u4E94_\u5468\u516D".split("_"),weekdaysMin:"\u65E5_\u4E00_\u4E8C_\u4E09_\u56DB_\u4E94_\u516D".split("_"),months:"\u4E00\u6708_\u4E8C\u6708_\u4E09\u6708_\u56DB\u6708_\u4E94\u6708_\u516D\u6708_\u4E03\u6708_\u516B\u6708_\u4E5D\u6708_\u5341\u6708_\u5341\u4E00\u6708_\u5341\u4E8C\u6708".split("_"),monthsShort:"1\u6708_2\u6708_3\u6708_4\u6708_5\u6708_6\u6708_7\u6708_8\u6708_9\u6708_10\u6708_11\u6708_12\u6708".split("_"),ordinal:function(s,M){switch(M){case"W":return s+"\u5468";default:return s+"\u65E5"}},weekStart:1,yearStart:4,formats:{LT:"HH:mm",LTS:"HH:mm:ss",L:"YYYY/MM/DD",LL:"YYYY\u5E74M\u6708D\u65E5",LLL:"YYYY\u5E74M\u6708D\u65E5Ah\u70B9mm\u5206",LLLL:"YYYY\u5E74M\u6708D\u65E5ddddAh\u70B9mm\u5206",l:"YYYY/M/D",ll:"YYYY\u5E74M\u6708D\u65E5",lll:"YYYY\u5E74M\u6708D\u65E5 HH:mm",llll:"YYYY\u5E74M\u6708D\u65E5dddd HH:mm"},relativeTime:{future:"%s\u5185",past:"%s\u524D",s:"\u51E0\u79D2",m:"1 \u5206\u949F",mm:"%d \u5206\u949F",h:"1 \u5C0F\u65F6",hh:"%d \u5C0F\u65F6",d:"1 \u5929",dd:"%d \u5929",M:"1 \u4E2A\u6708",MM:"%d \u4E2A\u6708",y:"1 \u5E74",yy:"%d \u5E74"},meridiem:function(s,M){var $=100*s+M;return $<600?"\u51CC\u6668":$<900?"\u65E9\u4E0A":$<1100?"\u4E0A\u5348":$<1300?"\u4E2D\u5348":$<1800?"\u4E0B\u5348":"\u665A\u4E0A"}};return m.default.locale(c,null,!0),c})})(oe);var Q={exports:{}};(function(g,f){(function(_,i){g.exports=i()})(U,function(){return function(_,i,m){i.prototype.isToday=function(){var c="YYYY-MM-DD",s=m();return this.format(c)===s.format(c)}}})})(Q);var se=Q.exports;I.locale("zh-cn");I.extend(se);const ue=Vue.ref({uv:[0],userCount:[0],salesCount:[0],foodsCount:[0],date:["0"]}),X=Symbol();const re={class:"bar h-72"},ie=Vue.defineComponent({props:{loading:{type:Boolean}},setup(g){const f=Vue.inject(X,ue),_=Vue.ref(),i={title:{text:"\u6700\u8FD1\u6210\u4EA4\u91CF"},tooltip:{trigger:"axis",axisPointer:{type:"cross",crossStyle:{color:"#999"}}},toolbox:{feature:{dataView:{show:!0,readOnly:!1},magicType:{show:!0,type:["line","bar"]},saveAsImage:{show:!0}}},color:["#e01f54"],legend:{data:["\u9500\u91CF"]},xAxis:{data:["0"]},yAxis:{},series:{name:"\u9500\u91CF",type:"line",data:[0]}};return Vue.watch(()=>f.value,m=>{i.series.data=m.salesCount,i.xAxis.data=m.date,_.value=i},{deep:!0}),(m,c)=>{const s=Vue.resolveComponent("v-chart");return Vue.openBlock(),Vue.createElementBlock("div",re,[Vue.createVNode(s,{loading:g.loading,option:_.value,autoresize:""},null,8,["loading","option"])])}}});var Z={title:{text:"\u6700\u8FD1\u8BBF\u95EE\u91CF"},color:["#2e4783"],tooltip:{trigger:"axis",axisPointer:{type:"cross",label:{backgroundColor:"#6a7985"}}},toolbox:{feature:{saveAsImage:{}}},xAxis:{type:"category",data:[""]},yAxis:{type:"value",axisLabel:{formatter:"{value} \u6B21"}},series:{data:[0],type:"line",markPoint:{data:[{type:"max",name:"Max"},{type:"min",name:"Min"}]},markLine:{data:[{type:"average",name:"Avg"}]}}};const le={class:"line h-72"},ce=Vue.defineComponent({props:{data:null,loading:{type:Boolean}},setup(g){const f=g,_=Vue.ref();return Vue.watch(()=>f.data,i=>{Z.series.data=i.uv,Z.xAxis.data=i.date,_.value=Z},{deep:!0}),(i,m)=>{const c=Vue.resolveComponent("v-chart");return Vue.openBlock(),Vue.createElementBlock("div",le,[Vue.createVNode(c,{option:_.value,loading:g.loading,autoresize:""},null,8,["option","loading"])])}}}),de={class:"pie h-72"},he=Vue.defineComponent({setup(g){const f=Vue.ref({title:{text:"\u9910\u54C1\u5206\u7C7B\u5360\u6BD4",left:"center"},tooltip:{trigger:"item"},legend:{orient:"vertical",left:"left"},series:{type:"pie",radius:"50%",data:[],emphasis:{itemStyle:{shadowBlur:10,shadowOffsetX:0,shadowColor:"rgba(0, 0, 0, 0.5)"}}}});return P.foodType().then(_=>{const i=_.data.map(m=>({name:m.type,value:m.number}));f.value.series.data=i}),(_,i)=>{const m=Vue.resolveComponent("v-chart");return Vue.openBlock(),Vue.createElementBlock("div",de,[Vue.createVNode(m,{option:f.value,autoresize:""},null,8,["option"])])}}});const q=g=>(Vue.pushScopeId("data-v-94dd8ebe"),g=g(),Vue.popScopeId(),g),fe={class:"view"},_e={class:"data"},me={class:"statis"},ve={class:"card-header flex my-5"},pe={class:"card-img"},Ve={class:"detail flex flex-col justify-between"},ge={class:"label"},ye={class:"value"},$e={class:"space-x-2"},xe=q(()=>Vue.createElementVNode("div",{class:"card-footer"},null,-1)),Me=q(()=>Vue.createElementVNode("span",{style:{color:"#fff"}},"+12%",-1)),Ce=[Me],De={class:"statis2"},be={class:"statis2"},we=q(()=>Vue.createElementVNode("div",{class:"footer text-center text-sm"},[Vue.createElementVNode("a",{href:"https://beian.miit.gov.cn/",class:"text-gray-600 hover:underline"},"\u9ED4ICP\u59072021007337\u53F7-1"),Vue.createElementVNode("p",{class:"text-purple-800 font-medium"},[Vue.createTextVNode("Copyright \xA9 2021 "),Vue.createElementVNode("a",{class:"hover:underline",href:"https://gitee.com/f1dao",target:"_blank"},"gitee@f1dao")])],-1)),Ye=Vue.defineComponent({setup(g){Vue.defineComponent({name:"data1"});const f=Vue.ref({uv:[0],userCount:[0],salesCount:[0],foodsCount:[0],date:["0"]}),_=Vue.ref(!0),i=Vue.ref([{label:"\u603B\u8BBF\u95EE\u91CF",label2:"\u65B0\u589E\u8BBF\u95EE\u91CF",value:0,value2:0,stat:"bg-success",img:"/static/svg/1.svg",icon:"#iconshangsheng"},{label:"\u603B\u7528\u6237\u6570\u91CF",label2:"\u65B0\u589E\u7528\u6237\u6570\u91CF",value:0,value2:0,stat:"bg-danger",img:"/static/svg/2.svg",icon:"#iconxiadie"},{label:"\u603B\u6210\u4EA4\u91CF",label2:"\u65B0\u589E\u6210\u4EA4\u91CF",value:0,value2:0,stat:"bg-primary",img:"/static/svg/3.svg",icon:"#iconshangsheng"},{label:"\u603B\u5546\u54C1\u6570\u91CF",label2:"\u65B0\u589E\u5546\u54C1\u6570\u91CF",value:0,value2:0,stat:"bg-warning",img:"/static/svg/4.svg",icon:"#iconxiadie"}]);return Vue.provide(X,f),P.total().then(m=>{const c=m.data;i.value[0].value=c.uv,i.value[1].value=c.userCount,i.value[2].value=c.salesCount,i.value[3].value=c.foodsCount}),P.recent().then(m=>{let c=m.data;c.find(({createTime:s})=>I(s).isToday()),c.forEach(s=>{s.createTime=I(s.createTime).format("MM-DD")}),f.value.uv=c.map(s=>s.uv),f.value.userCount=c.map(s=>s.userCount),f.value.salesCount=c.map(s=>s.salesCount),f.value.foodsCount=c.map(s=>s.foodsCount),f.value.date=c.map(s=>s.createTime),_.value=!1,i.value[0].value2=f.value.uv[6],i.value[1].value2=f.value.userCount[6],i.value[2].value2=f.value.salesCount[6],i.value[3].value2=f.value.foodsCount[6]}),(m,c)=>{const s=Vue.resolveComponent("el-image"),M=Vue.resolveComponent("v-count"),$=Vue.resolveComponent("v-icon"),C=Vue.resolveComponent("el-card"),E=Vue.resolveComponent("el-scrollbar");return Vue.openBlock(),Vue.createElementBlock("div",fe,[Vue.createVNode(E,null,{default:Vue.withCtx(()=>[Vue.createElementVNode("div",_e,[Vue.createElementVNode("div",me,[(Vue.openBlock(!0),Vue.createElementBlock(Vue.Fragment,null,Vue.renderList(i.value,(p,A)=>(Vue.openBlock(),Vue.createBlock(C,{class:"bg-primary2",key:A},{default:Vue.withCtx(()=>[Vue.createElementVNode("div",ve,[Vue.createElementVNode("div",pe,[Vue.createVNode(s,{src:p.img,fit:"fill"},null,8,["src"])]),Vue.createElementVNode("div",Ve,[Vue.createElementVNode("div",null,[Vue.createElementVNode("span",ge,Vue.toDisplayString(p.label),1),Vue.createElementVNode("span",ye,[Vue.createVNode(M,{end:p.value},null,8,["end"])])]),Vue.createElementVNode("div",$e,[Vue.createElementVNode("span",null,Vue.toDisplayString(p.label2),1),Vue.createVNode(M,{end:p.value2},null,8,["end"]),Vue.createVNode($,{name:p.icon,size:"25"},null,8,["name"])])])]),xe,Vue.createElementVNode("div",{class:Vue.normalizeClass(`mini-stat ${p.stat}`)},Ce,2)]),_:2},1024))),128))]),Vue.createElementVNode("div",De,[Vue.createVNode(C,null,{default:Vue.withCtx(()=>[Vue.createVNode(ie,{loading:_.value},null,8,["loading"])]),_:1}),Vue.createVNode(C,null,{default:Vue.withCtx(()=>[Vue.createVNode(ce,{data:f.value,loading:_.value},null,8,["data","loading"])]),_:1})]),Vue.createElementVNode("div",be,[Vue.createVNode(C,null,{default:Vue.withCtx(()=>[Vue.createVNode(he)]),_:1})])]),we]),_:1})])}}});var Ne=ae(Ye,[["__scopeId","data-v-94dd8ebe"]]);export{Ne as default};

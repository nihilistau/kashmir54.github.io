<html>
        
<body>
  <link rel="icon" href="data:;base64,=">
  <iframe id="iframe" sandbox="allow-same-origin" style="display: none"></iframe>
  <script type="text/javascript">/*
* PluginDetect v0.9.1
* www.pinlady.net/PluginDetect/license/
* [ QuickTime Java DevalVR Flash Shockwave WindowsMediaPlayer Silverlight VLC AdobeReader PDFReader RealPlayer IEcomponent ActiveX PDFjs ]
* [ isMinVersion getVersion hasMimeType getInfo onDetectionDone onWindowLoaded onBeforeInstantiate ]
* [ AllowActiveX BetterIE ]
* */
(function(){var j={version:"0.9.1",name:"PluginDetect",addPlugin:function(p,q){if(p&&j.isString(p)&&q&&j.isFunc(q.getVersion)){p=p.replace(/\s/g,"").toLowerCase();j.Plugins[p]=q;if(!j.isDefined(q.getVersionDone)){q.installed=null;q.version=null;q.version0=null;q.getVersionDone=null;q.pluginName=p;}}},uniqueName:function(){return j.name+"998"},openTag:"<",hasOwnPROP:({}).constructor.prototype.hasOwnProperty,hasOwn:function(s,t){var p;try{p=j.hasOwnPROP.call(s,t)}catch(q){}return !!p},rgx:{str:/string/i,num:/number/i,fun:/function/i,arr:/array/i},toString:({}).constructor.prototype.toString,isDefined:function(p){return typeof p!="undefined"},isArray:function(p){return j.rgx.arr.test(j.toString.call(p))},isString:function(p){return j.rgx.str.test(j.toString.call(p))},isNum:function(p){return j.rgx.num.test(j.toString.call(p))},isStrNum:function(p){return j.isString(p)&&(/\d/).test(p)},isFunc:function(p){return j.rgx.fun.test(j.toString.call(p))},getNumRegx:/[\d][\d\.\_,\-]*/,splitNumRegx:/[\.\_,\-]/g,getNum:function(q,r){var p=j.isStrNum(q)?(r&&j.isString(r)?new RegExp(r):j.getNumRegx).exec(q):null;return p?p[0]:null},compareNums:function(w,u,t){var s,r,q,v=parseInt;if(j.isStrNum(w)&&j.isStrNum(u)){if(j.isDefined(t)&&t.compareNums){return t.compareNums(w,u)}s=w.split(j.splitNumRegx);r=u.split(j.splitNumRegx);for(q=0;q<Math.min(s.length,r.length);q++){if(v(s[q],10)>v(r[q],10)){return 1}if(v(s[q],10)<v(r[q],10)){return -1}}}return 0},formatNum:function(q,r){var p,s;if(!j.isStrNum(q)){return null}if(!j.isNum(r)){r=4}r--;s=q.replace(/\s/g,"").split(j.splitNumRegx).concat(["0","0","0","0"]);for(p=0;p<4;p++){if(/^(0+)(.+)$/.test(s[p])){s[p]=RegExp.$2}if(p>r||!(/\d/).test(s[p])){s[p]="0"}}return s.slice(0,4).join(",")},pd:{getPROP:function(s,q,p){try{if(s){p=s[q]}}catch(r){this.errObj=r;}return p},findNavPlugin:function(u){if(u.dbug){return u.dbug}var A=null;if(window.navigator){var z={Find:j.isString(u.find)?new RegExp(u.find,"i"):u.find,Find2:j.isString(u.find2)?new RegExp(u.find2,"i"):u.find2,Avoid:u.avoid?(j.isString(u.avoid)?new RegExp(u.avoid,"i"):u.avoid):0,Num:u.num?/\d/:0},s,r,t,y,x,q,p=navigator.mimeTypes,w=navigator.plugins;if(u.mimes&&p){y=j.isArray(u.mimes)?[].concat(u.mimes):(j.isString(u.mimes)?[u.mimes]:[]);for(s=0;s<y.length;s++){r=0;try{if(j.isString(y[s])&&/[^\s]/.test(y[s])){r=p[y[s]].enabledPlugin}}catch(v){}if(r){t=this.findNavPlugin_(r,z);if(t.obj){A=t.obj}if(A&&!j.dbug){return A}}}}if(u.plugins&&w){x=j.isArray(u.plugins)?[].concat(u.plugins):(j.isString(u.plugins)?[u.plugins]:[]);for(s=0;s<x.length;s++){r=0;try{if(x[s]&&j.isString(x[s])){r=w[x[s]]}}catch(v){}if(r){t=this.findNavPlugin_(r,z);if(t.obj){A=t.obj}if(A&&!j.dbug){return A}}}q=w.length;if(j.isNum(q)){for(s=0;s<q;s++){r=0;try{r=w[s]}catch(v){}if(r){t=this.findNavPlugin_(r,z);if(t.obj){A=t.obj}if(A&&!j.dbug){return A}}}}}}return A},findNavPlugin_:function(t,s){var r=t.description||"",q=t.name||"",p={};if((s.Find.test(r)&&(!s.Find2||s.Find2.test(q))&&(!s.Num||s.Num.test(RegExp.leftContext+RegExp.rightContext)))||(s.Find.test(q)&&(!s.Find2||s.Find2.test(r))&&(!s.Num||s.Num.test(RegExp.leftContext+RegExp.rightContext)))){if(!s.Avoid||!(s.Avoid.test(r)||s.Avoid.test(q))){p.obj=t}}return p},getVersionDelimiter:",",findPlugin:function(r){var q,p={status:-3,plugin:0};if(!j.isString(r)){return p}if(r.length==1){this.getVersionDelimiter=r;return p}r=r.toLowerCase().replace(/\s/g,"");q=j.Plugins[r];if(!q||!q.getVersion){return p}p.plugin=q;p.status=1;return p}},getPluginFileVersion:function(s,u,w,r){var p,q,v,y,t=-1;if(!s){return u}r=r||"version";if(s[r]){p=j.getNum(s[r]+"",w)}if(!p||!u){return u||p||null}q=(j.formatNum(u)).split(j.splitNumRegx);v=(j.formatNum(p)).split(j.splitNumRegx);for(y=0;y<q.length;y++){if(t>-1&&y>t&&q[y]!="0"){return u}if(v[y]!=q[y]){if(t==-1){t=y}if(q[y]!="0"){return u}}}return p},AXO:(function(){var q;try{q=new window.ActiveXObject()}catch(p){}return q?null:window.ActiveXObject})(),getAXO:function(p){var r=null;try{r=new j.AXO(p)}catch(q){j.errObj=q;}if(r){j.browser.ActiveXEnabled=!0}return r},browser:{detectPlatform:function(){var r=this,q,p=window.navigator?navigator.platform||"":"";j.OS=100;if(p){var s=["Win",1,"Mac",2,"Linux",3,"FreeBSD",4,"iPhone",21.1,"iPod",21.2,"iPad",21.3,"Win.*CE",22.1,"Win.*Mobile",22.2,"Pocket\\s*PC",22.3,"",100];for(q=s.length-2;q>=0;q=q-2){if(s[q]&&new RegExp(s[q],"i").test(p)){j.OS=s[q+1];break}}}},detectIE:function(){var r=this,u=document,t,q,v=window.navigator?navigator.userAgent||"":"",w,p,y;r.ActiveXFilteringEnabled=!1;r.ActiveXEnabled=!1;try{r.ActiveXFilteringEnabled=!!window.external.msActiveXFilteringEnabled()}catch(s){}p=["Msxml2.XMLHTTP","Msxml2.DOMDocument","Microsoft.XMLDOM","TDCCtl.TDCCtl","Shell.UIHelper","HtmlDlgSafeHelper.HtmlDlgSafeHelper","Scripting.Dictionary"];y=["WMPlayer.OCX","ShockwaveFlash.ShockwaveFlash","AgControl.AgControl"];w=p.concat(y);for(t=0;t<w.length;t++){if(j.getAXO(w[t])&&!j.dbug){break}}if(r.ActiveXEnabled&&r.ActiveXFilteringEnabled){for(t=0;t<y.length;t++){if(j.getAXO(y[t])){r.ActiveXFilteringEnabled=!1;break}}}q=u.documentMode;try{u.documentMode=""}catch(s){}r.isIE=r.ActiveXEnabled;r.isIE=r.isIE||j.isNum(u.documentMode)||new Function("return/*@cc_on!@*/!1")();try{u.documentMode=q}catch(s){}r.verIE=null;if(r.isIE){r.verIE=(j.isNum(u.documentMode)&&u.documentMode>=7?u.documentMode:0)||((/^(?:.*?[^a-zA-Z])??(?:MSIE|rv\s*\:)\s*(\d+\.?\d*)/i).test(v)?parseFloat(RegExp.$1,10):7)}r.betterIE();},betterIE:function(){var r=this,v=document;r.verIEtrue=null;r.docModeIE=null;if(r.isIE){var s,u=v.createElement("div"),q,p=["{45EA75A0-A269-11D1-B5BF-0000F8051515}","{3AF36230-A269-11D1-B5BF-0000F8051515}","{89820200-ECBD-11CF-8B85-00AA005B4383}"];try{u.style.behavior="url(#default#clientcaps)"}catch(t){}for(q=0;q<p.length;q++){try{r.verIEtrue=(u.getComponentVersion(p[q],"componentid")).replace(/,/g,".");}catch(t){}if(r.verIEtrue&&!j.dbug){break}}s=parseFloat(r.verIEtrue||"0",10);r.docModeIE=v.documentMode||((/back/i).test(v.compatMode||"")?5:s)||r.verIE;r.verIE=s||r.docModeIE;}},detectNonIE:function(){var q=this,p=0,t=window.navigator?navigator:{},s=q.isIE?"":t.userAgent||"",u=t.vendor||"",r=t.product||"";q.isGecko=!p&&(/Gecko/i).test(r)&&(/Gecko\s*\/\s*\d/i).test(s);p=p||q.isGecko;q.verGecko=q.isGecko?j.formatNum((/rv\s*\:\s*([\.\,\d]+)/i).test(s)?RegExp.$1:"0.9"):null;q.isOpera=!p&&(/(OPR\s*\/|Opera\s*\/\s*\d.*\s*Version\s*\/|Opera\s*[\/]?)\s*(\d+[\.,\d]*)/i).test(s);p=p||q.isOpera;q.verOpera=q.isOpera?j.formatNum(RegExp.$2):null;q.isEdge=!p&&(/(Edge)\s*\/\s*(\d[\d\.]*)/i).test(s);p=p||q.isEdge;q.verEdgeHTML=q.isEdge?j.formatNum(RegExp.$2):null;q.isChrome=!p&&(/(Chrome|CriOS)\s*\/\s*(\d[\d\.]*)/i).test(s);p=p||q.isChrome;q.verChrome=q.isChrome?j.formatNum(RegExp.$2):null;q.isSafari=!p&&((/Apple/i).test(u)||!u)&&(/Safari\s*\/\s*(\d[\d\.]*)/i).test(s);p=p||q.isSafari;q.verSafari=q.isSafari&&(/Version\s*\/\s*(\d[\d\.]*)/i).test(s)?j.formatNum(RegExp.$1):null;},init:function(){var p=this;p.detectPlatform();p.detectIE();p.detectNonIE()}},init:{hasRun:0,library:function(){window[j.name]=j;var q=this,p=document;j.win.init();j.head=p.getElementsByTagName("head")[0]||p.getElementsByTagName("body")[0]||p.body||null;j.browser.init();q.hasRun=1;}},ev:{addEvent:function(r,q,p){if(r&&q&&p){if(r.addEventListener){r.addEventListener(q,p,false)}else{if(r.attachEvent){r.attachEvent("on"+q,p)}else{r["on"+q]=this.concatFn(p,r["on"+q])}}}},removeEvent:function(r,q,p){if(r&&q&&p){if(r.removeEventListener){r.removeEventListener(q,p,false)}else{if(r.detachEvent){r.detachEvent("on"+q,p)}}}},concatFn:function(q,p){return function(){q();if(typeof p=="function"){p()}}},handler:function(t,s,r,q,p){return function(){t(s,r,q,p)}},handlerOnce:function(s,r,q,p){return function(){var u=j.uniqueName();if(!s[u]){s[u]=1;s(r,q,p)}}},handlerWait:function(s,u,r,q,p){var t=this;return function(){t.setTimeout(t.handler(u,r,q,p),s)}},setTimeout:function(q,p){if(j.win&&j.win.unload){return}setTimeout(q,p)},fPush:function(q,p){if(j.isArray(p)&&(j.isFunc(q)||(j.isArray(q)&&q.length>0&&j.isFunc(q[0])))){p.push(q)}},call0:function(q){var p=j.isArray(q)?q.length:-1;if(p>0&&j.isFunc(q[0])){q[0](j,p>1?q[1]:0,p>2?q[2]:0,p>3?q[3]:0)}else{if(j.isFunc(q)){q(j)}}},callArray0:function(p){var q=this,r;if(j.isArray(p)){while(p.length){r=p[0];p.splice(0,1);if(j.win&&j.win.unload&&p!==j.win.unloadHndlrs){}else{q.call0(r)}}}},call:function(q){var p=this;p.call0(q);p.ifDetectDoneCallHndlrs()},callArray:function(p){var q=this;q.callArray0(p);q.ifDetectDoneCallHndlrs()},allDoneHndlrs:[],ifDetectDoneCallHndlrs:function(){var r=this,p,q;if(!r.allDoneHndlrs.length){return}if(j.win){if(!j.win.loaded||j.win.loadPrvtHndlrs.length||j.win.loadPblcHndlrs.length){return}}if(j.Plugins){for(p in j.Plugins){if(j.hasOwn(j.Plugins,p)){q=j.Plugins[p];if(q&&j.isFunc(q.getVersion)){if(q.OTF==3||(q.DoneHndlrs&&q.DoneHndlrs.length)||(q.BIHndlrs&&q.BIHndlrs.length)){return}}}}}r.callArray0(r.allDoneHndlrs);}},isMinVersion:function(v,u,r,q){var s=j.pd.findPlugin(v),t,p=-1;if(s.status<0){return s.status}t=s.plugin;u=j.formatNum(j.isNum(u)?u.toString():(j.isStrNum(u)?j.getNum(u):"0"));if(t.getVersionDone!=1){t.getVersion(u,r,q);if(t.getVersionDone===null){t.getVersionDone=1}}if(t.installed!==null){p=t.installed<=0.5?t.installed:(t.installed==0.7?1:(t.version===null?0:(j.compareNums(t.version,u,t)>=0?1:-0.1)))}return p},getVersion:function(u,r,q){var s=j.pd.findPlugin(u),t,p;if(s.status<0){return null}t=s.plugin;if(t.getVersionDone!=1){t.getVersion(null,r,q);if(t.getVersionDone===null){t.getVersionDone=1}}p=(t.version||t.version0);p=p?p.replace(j.splitNumRegx,j.pd.getVersionDelimiter):p;return p},hasMimeType:function(t){if(t&&window.navigator&&navigator.mimeTypes){var w,v,q,s,p=navigator.mimeTypes,r=j.isArray(t)?[].concat(t):(j.isString(t)?[t]:[]);s=r.length;for(q=0;q<s;q++){w=0;try{if(j.isString(r[q])&&/[^\s]/.test(r[q])){w=p[r[q]]}}catch(u){}v=w?w.enabledPlugin:0;if(v&&(v.name||v.description)){return w}}}return null},getInfo:function(v,r,q){var p=null,t=j.pd.findPlugin(v),u,s;if(t.status<0){return p}u=t.plugin;if(j.isFunc(u.getInfo)){if(u.getVersionDone===null){s=j.getVersion?j.getVersion(v,r,q):j.isMinVersion(v,"0",r,q)}p=u.getInfo()}return p},onDetectionDone:function(u,t,q,p){var r=j.pd.findPlugin(u),v,s;if(r.status==-3){return -1}s=r.plugin;if(!j.isArray(s.DoneHndlrs)){s.DoneHndlrs=[];}if(s.getVersionDone!=1){v=j.getVersion?j.getVersion(u,q,p):j.isMinVersion(u,"0",q,p)}if(s.installed!=-0.5&&s.installed!=0.5){j.ev.call(t);return 1}j.ev.fPush(t,s.DoneHndlrs);return 0},onWindowLoaded:function(p){if(j.win.loaded){j.ev.call(p);}else{j.ev.fPush(p,j.win.loadPblcHndlrs)}},onBeforeInstantiate:function(s,r){var p=j.pd.findPlugin(s),q=p.plugin;if(p.status==-3){return}if(!j.isArray(q.BIHndlrs)){q.BIHndlrs=[]}j.ev.fPush(r,q.BIHndlrs)},codebase:{isDisabled:function(){if(j.browser.ActiveXEnabled&&j.isDefined(j.pd.getPROP(document.createElement("object"),"object"))){return 0}return 1},isMin:function(v,u,s){var t=this,r,q,p=0;if(!j.isStrNum(u)||t.isDisabled()){return p}t.init(v);if(!s||t.isActiveXObject(v,j.formatNum(v.DIGITMIN.join(",")))){if(!v.L){v.L={};for(r=0;r<v.Lower.length;r++){if(t.isActiveXObject(v,v.Lower[r])){v.L=t.convert(v,v.Lower[r]);break}}}if(v.L.v){q=t.convert(v,u,1);if(q.x>=0){p=(v.L.x==q.x?t.isActiveXObject(v,q.v):j.compareNums(u,v.L.v)<=0)?1:-1}}}return p},search:function(v,D){var B=this,w=v.$$,q=0,r;r=v.searchHasRun||B.isDisabled()?1:0;v.searchHasRun=1;if(r){return v.version||null}B.init(v);if(!D||B.isActiveXObject(v,j.formatNum(v.DIGITMIN.join(",")))){var G,F,E,s=v.DIGITMAX,t,p,C=99999999,u=[0,0,0,0],H=[0,0,0,0];var A=function(y,K){var I=[].concat(u),J;I[y]=K;J=B.isActiveXObject(v,I.join(","));if(J){q=1;u[y]=K}else{H[y]=K}return J};for(G=0;G<H.length;G++){u[G]=Math.floor(v.DIGITMIN[G])||0;t=u.join(",");p=u.slice(0,G).concat([C,C,C,C]).slice(0,u.length).join(",");for(E=0;E<s.length;E++){if(j.isArray(s[E])){s[E].push(0);if(s[E][G]>H[G]&&j.compareNums(p,v.Lower[E])>=0&&j.compareNums(t,v.Upper[E])<0){H[G]=Math.floor(s[E][G])}}}for(F=0;F<30;F++){if(H[G]-u[G]<=16){for(E=H[G];E>=u[G]+(G?1:0);E--){if(A(G,E)){break}}break}A(G,Math.round((H[G]+u[G])/2))}if(!q){break}H[G]=u[G];}if(q){v.version=B.convert(v,u.join(",")).v}}return v.version||null},emptyNode:function(p){try{p.innerHTML=""}catch(q){}},HTML:[],len:0,onUnload:function(r,q){var p,t=q.HTML,s;for(p=0;p<t.length;p++){s=t[p];if(s){t[p]=0;q.emptyNode(s.span());s.span=0;s.spanObj=0;s=0}}q.iframe=0},init:function(u){var t=this;if(!t.iframe){var s=j.DOM,q;q=s.iframe.insert(0,"$.codebase{ }");t.iframe=q;s.iframe.write(q," ");s.iframe.close(q);}if(!u.init){u.init=1;var p,r;j.ev.fPush([t.onUnload,t],j.win.unloadHndlrs);u.tagA='<object width="1" height="1" style="display:none;" codebase="#version=';r=u.classID||u.$$.classID||"";u.tagB='" '+((/clsid\s*:/i).test(r)?'classid="':'type="')+r+'">'+(u.ParamTags?u.ParamTags:"")+j.openTag+"/object>";for(p=0;p<u.Lower.length;p++){u.Lower[p]=j.formatNum(u.Lower[p]);u.Upper[p]=j.formatNum(u.Upper[p]);}}},isActiveXObject:function(u,q){var t=this,p=0,s=u.$$,r=(j.DOM.iframe.doc(t.iframe)||document).createElement("span");if(u.min&&j.compareNums(q,u.min)<=0){return 1}if(u.max&&j.compareNums(q,u.max)>=0){return 0}if(s.BIHndlrs&&s.BIHndlrs.length){j.ev.callArray(s.BIHndlrs);}r.innerHTML=u.tagA+q+u.tagB;if(j.pd.getPROP(r.firstChild,"object")){p=1}if(p){u.min=q;t.HTML.push({spanObj:r,span:t.span})}else{u.max=q;r.innerHTML=""}return p},span:function(){return this.spanObj},convert_:function(t,p,q,s){var r=t.convert[p];return r?(j.isFunc(r)?j.formatNum(r(q.split(j.splitNumRegx),s).join(",")):q):r},convert:function(v,r,u){var t=this,q,p,s;r=j.formatNum(r);p={v:r,x:-1};if(r){for(q=0;q<v.Lower.length;q++){s=t.convert_(v,q,v.Lower[q]);if(s&&j.compareNums(r,u?s:v.Lower[q])>=0&&(!q||j.compareNums(r,u?t.convert_(v,q,v.Upper[q]):v.Upper[q])<0)){p.v=t.convert_(v,q,r,u);p.x=q;break}}}return p},z:0},win:{disable:function(){this.cancel=true},cancel:false,loaded:false,unload:false,hasRun:0,init:function(){var p=this;if(!p.hasRun){p.hasRun=1;if((/complete/i).test(document.readyState||"")){p.loaded=true;}else{j.ev.addEvent(window,"load",p.onLoad)}j.ev.addEvent(window,"unload",p.onUnload)}},loadPrvtHndlrs:[],loadPblcHndlrs:[],unloadHndlrs:[],onUnload:function(){var p=j.win;if(p.unload){return}p.unload=true;j.ev.removeEvent(window,"load",p.onLoad);j.ev.removeEvent(window,"unload",p.onUnload);j.ev.callArray(p.unloadHndlrs)},onLoad:function(){var p=j.win;if(p.loaded||p.unload||p.cancel){return}p.loaded=true;j.ev.callArray(p.loadPrvtHndlrs);j.ev.callArray(p.loadPblcHndlrs);}},DOM:{isEnabled:{objectTag:function(){var q=j.browser,p=q.isIE?0:1;if(q.ActiveXEnabled){p=1}return !!p},objectTagUsingActiveX:function(){var p=0;if(j.browser.ActiveXEnabled){p=1}return !!p},objectProperty:function(p){if(p&&p.tagName&&j.browser.isIE){if((/applet/i).test(p.tagName)){return(!this.objectTag()||j.isDefined(j.pd.getPROP(document.createElement("object"),"object"))?1:0)}return j.isDefined(j.pd.getPROP(document.createElement(p.tagName),"object"))?1:0}return 0}},HTML:[],div:null,divID:"plugindetect",divWidth:500,getDiv:function(){return this.div||document.getElementById(this.divID)||null},initDiv:function(){var q=this,p;if(!q.div){p=q.getDiv();if(p){q.div=p;}else{q.div=document.createElement("div");q.div.id=q.divID;q.setStyle(q.div,q.getStyle.div());q.insertDivInBody(q.div)}j.ev.fPush([q.onUnload,q],j.win.unloadHndlrs)}p=0},pluginSize:1,iframeWidth:40,iframeHeight:10,altHTML:"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",emptyNode:function(q){var p=this;if(q&&(/div|span/i).test(q.tagName||"")){if(j.browser.isIE){p.setStyle(q,["display","none"])}try{q.innerHTML=""}catch(r){}}},removeNode:function(p){try{if(p&&p.parentNode){p.parentNode.removeChild(p)}}catch(q){}},onUnload:function(u,t){var r,q,s,v,w=t.HTML,p=w.length;if(p){for(q=p-1;q>=0;q--){v=w[q];if(v){w[q]=0;t.emptyNode(v.span());t.removeNode(v.span());v.span=0;v.spanObj=0;v.doc=0;v.objectProperty=0}}}r=t.getDiv();t.emptyNode(r);t.removeNode(r);v=0;s=0;r=0;t.div=0},span:function(){var p=this;if(!p.spanObj){p.spanObj=p.doc.getElementById(p.spanId)}return p.spanObj||null},width:function(){var t=this,s=t.span(),q,r,p=-1;q=s&&j.isNum(s.scrollWidth)?s.scrollWidth:p;r=s&&j.isNum(s.offsetWidth)?s.offsetWidth:p;s=0;return r>0?r:(q>0?q:Math.max(r,q))},obj:function(){var p=this.span();return p?p.firstChild||null:null},readyState:function(){var p=this;return j.browser.isIE&&j.isDefined(j.pd.getPROP(p.span(),"readyState"))?j.pd.getPROP(p.obj(),"readyState"):j.UNDEFINED},objectProperty:function(){var r=this,q=r.DOM,p;if(q.isEnabled.objectProperty(r)){p=j.pd.getPROP(r.obj(),"object")}return p},onLoadHdlr:function(p,q){q.loaded=1},getTagStatus:function(q,A,E,D,t,H,v){var F=this;if(!q||!q.span()){return -2}var y=q.width(),r=q.obj()?1:0,s=q.readyState(),p=q.objectProperty();if(p){return 1.5}var u=/clsid\s*\:/i,C=E&&u.test(E.outerHTML||"")?E:(D&&u.test(D.outerHTML||"")?D:0),w=E&&!u.test(E.outerHTML||"")?E:(D&&!u.test(D.outerHTML||"")?D:0),z=q&&u.test(q.outerHTML||"")?C:w;if(!A||!A.span()||!z||!z.span()){return -2}var x=z.width(),B=A.width(),G=z.readyState();if(y<0||x<0||B<=F.pluginSize){return 0}if(v&&!q.pi&&j.isDefined(p)&&j.browser.isIE&&q.tagName==z.tagName&&q.time<=z.time&&y===x&&s===0&&G!==0){q.pi=1}if(x<B||!q.loaded||!A.loaded||!z.loaded){return q.pi?-0.1:0}if(y==B||!r){return q.pi?-0.5:-1}else{if(y==F.pluginSize&&r&&(!j.isNum(s)||s===4)){return 1}}return q.pi?-0.5:-1},setStyle:function(q,t){var s=q.style,p;if(s&&t){for(p=0;p<t.length;p=p+2){try{s[t[p]]=t[p+1]}catch(r){}}}q=0;s=0},getStyle:{iframe:function(){return this.span()},span:function(r){var q=j.DOM,p;p=r?this.plugin():([].concat(this.Default).concat(["display","inline","fontSize",(q.pluginSize+3)+"px","lineHeight",(q.pluginSize+3)+"px"]));return p},div:function(){var p=j.DOM;return[].concat(this.Default).concat(["display","block","width",p.divWidth+"px","height",(p.pluginSize+3)+"px","fontSize",(p.pluginSize+3)+"px","lineHeight",(p.pluginSize+3)+"px","position","absolute","right","9999px","top","-9999px"])},plugin:function(q){var p=j.DOM;return"background-color:transparent;background-image:none;vertical-align:baseline;outline-style:none;border-style:none;padding:0px;margin:0px;visibility:"+(q?"hidden;":"visible;")+"display:inline;font-size:"+(p.pluginSize+3)+"px;line-height:"+(p.pluginSize+3)+"px;"},Default:["backgroundColor","transparent","backgroundImage","none","verticalAlign","baseline","outlineStyle","none","borderStyle","none","padding","0px","margin","0px","visibility","visible"]},insertDivInBody:function(v,t){var u="pd33993399",q=null,s=t?window.top.document:window.document,p=s.getElementsByTagName("body")[0]||s.body;if(!p){try{s.write('<div id="'+u+'">.'+j.openTag+"/div>");q=s.getElementById(u)}catch(r){}}p=s.getElementsByTagName("body")[0]||s.body;if(p){p.insertBefore(v,p.firstChild);if(q){p.removeChild(q)}}v=0},iframe:{onLoad:function(p,q){j.ev.callArray(p);},insert:function(s,v){var q=this,w=j.DOM,p,r=document.createElement("iframe"),x,t;w.setStyle(r,w.getStyle.iframe());r.width=w.iframeWidth;r.height=w.iframeHeight;w.initDiv();p=w.getDiv();p.appendChild(r);try{q.doc(r).open()}catch(u){}r[j.uniqueName()]=[];x=j.ev.handlerOnce(j.isNum(s)&&s>0?j.ev.handlerWait(s,q.onLoad,r[j.uniqueName()],v):j.ev.handler(q.onLoad,r[j.uniqueName()],v));j.ev.addEvent(r,"load",x);if(!r.onload){r.onload=x}t=q.win(r);j.ev.addEvent(t,"load",x);if(t&&!t.onload){t.onload=x}return r},addHandler:function(q,p){if(q){j.ev.fPush(p,q[j.uniqueName()])}},close:function(p){try{this.doc(p).close()}catch(q){}},write:function(q,u){var t=this.doc(q),p=-1,s;try{s=new Date().getTime();t.write(u);p=new Date().getTime()-s}catch(r){}return p},win:function(p){try{return p.contentWindow}catch(q){}return null},doc:function(p){var r;try{r=p.contentWindow.document}catch(q){}try{if(!r){r=p.contentDocument}}catch(q){}return r||null}},insert:function(t,s,u,p,z,y,v){var E=this,G,F,D,C,B,w;if(!v){E.initDiv();v=E.getDiv()}if(v){if((/div/i).test(v.tagName)){C=v.ownerDocument}if((/iframe/i).test(v.tagName)){C=E.iframe.doc(v)}}if(C&&C.createElement){}else{C=document}if(!j.isDefined(p)){p=""}if(j.isString(t)&&(/[^\s]/).test(t)){t=t.toLowerCase().replace(/\s/g,"");G=j.openTag+t+" ";G+='style="'+E.getStyle.plugin(y)+'" ';var r=1,q=1;for(B=0;B<s.length;B=B+2){if(/[^\s]/.test(s[B+1])){G+=s[B]+'="'+s[B+1]+'" '}if((/width/i).test(s[B])){r=0}if((/height/i).test(s[B])){q=0}}G+=(r?'width="'+E.pluginSize+'" ':"")+(q?'height="'+E.pluginSize+'" ':"");if(t=="embed"||t=="img"){G+=" />"}else{G+=">";for(B=0;B<u.length;B=B+2){if(/[^\s]/.test(u[B+1])){G+=j.openTag+'param name="'+u[B]+'" value="'+u[B+1]+'" />'}}G+=p+j.openTag+"/"+t+">"}}else{t="";G=p}F={spanId:"",spanObj:null,span:E.span,loaded:null,tagName:t,outerHTML:G,DOM:E,time:new Date().getTime(),insertDomDelay:-1,width:E.width,obj:E.obj,readyState:E.readyState,objectProperty:E.objectProperty,doc:C};if(v&&v.parentNode){if((/div|iframe/i).test(v.tagName)&&z&&z.BIHndlrs&&z.BIHndlrs.length){j.ev.callArray(z.BIHndlrs);}if((/iframe/i).test(v.tagName)){E.iframe.addHandler(v,[E.onLoadHdlr,F]);F.loaded=0;F.spanId=j.name+"Span"+E.HTML.length;D='<span id="'+F.spanId+'" style="'+E.getStyle.span(1)+'">'+G+"</span>";F.time=new Date().getTime();w=E.iframe.write(v,D);if(w>=0){F.insertDomDelay=w}}else{if((/div/i).test(v.tagName)){D=C.createElement("span");E.setStyle(D,E.getStyle.span());v.appendChild(D);try{F.time=new Date().getTime();D.innerHTML=G;F.insertDomDelay=new Date().getTime()-F.time}catch(A){}F.spanObj=D}}}D=0;v=0;E.HTML.push(F);return F}},file:{any:"fileStorageAny999",valid:"fileStorageValid999",save:function(s,t,r){var q=this,p;if(s&&j.isDefined(r)){if(!s[q.any]){s[q.any]=[]}if(!s[q.valid]){s[q.valid]=[]}s[q.any].push(r);p=q.split(t,r);if(p){s[q.valid].push(p)}}},getValidLength:function(p){return p&&p[this.valid]?p[this.valid].length:0},getAnyLength:function(p){return p&&p[this.any]?p[this.any].length:0},getValid:function(r,p){var q=this;return r&&r[q.valid]?q.get(r[q.valid],p):null},getAny:function(r,p){var q=this;return r&&r[q.any]?q.get(r[q.any],p):null},get:function(s,p){var r=s.length-1,q=j.isNum(p)?p:r;return(q<0||q>r)?null:s[q]},split:function(t,q){var s=null,p,r;t=t?t.replace(".","\\."):"";r=new RegExp("^(.*[^\\/])("+t+"\\s*)$");if(j.isString(q)&&r.test(q)){p=(RegExp.$1).split("/");s={name:p[p.length-1],ext:RegExp.$2,full:q};p[p.length-1]="";s.path=p.join("/")}return s}},Plugins:{}};j.init.library();var i={setPluginStatus:function(q,p,s){var r=this;r.version=p?j.formatNum(p,3):null;r.installed=r.version?1:(s?(s>0?0.7:-0.1):(q?0:-1));r.getVersionDone=r.installed==0.7||r.installed==-0.1||r.nav.done===0?0:1;},getVersion:function(s,t){var u=this,p=null,r=0,q;t=j.browser.isIE?0:t;if((!r||j.dbug)&&u.nav.query(t).installed){r=1}if((!p||j.dbug)&&u.nav.query(t).version){p=u.nav.version}q=!p?u.codebase.isMin(s):0;if(q){u.setPluginStatus(0,0,q);return}if(!p||j.dbug){q=u.codebase.search();if(q){r=1;p=q}}if((!r||j.dbug)&&u.axo.query().installed){r=1}if((!p||j.dbug)&&u.axo.query().version){p=u.axo.version}u.setPluginStatus(r,p)},nav:{done:null,installed:0,version:null,result:[0,0],mimeType:["video/quicktime","application/x-quicktimeplayer","image/x-macpaint","image/x-quicktime","application/x-rtsp","application/x-sdp","application/sdp","audio/vnd.qcelp","video/sd-video","audio/mpeg","video/mp4","video/3gpp2","application/x-mpeg","audio/x-m4b","audio/x-aac","video/flc"],find:"QuickTime.*Plug-?in",find2:"QuickTime.*Plug-?in",find3filename:"QuickTime|QT",avoid:"Totem|VLC|RealPlayer|Helix|MPlayer|Windows\\s*Media\\s*Player",plugins:"QuickTime Plug-in",detect:function(s){var t=this,r,q,p={installed:0,version:null,plugin:null};r=j.pd.findNavPlugin({find:t.find,find2:s?0:t.find2,avoid:s?0:t.avoid,mimes:t.mimeType,plugins:t.plugins});if(r){p.plugin=r;p.installed=1;q=new RegExp(t.find,"i");if(r.name&&q.test(r.name+"")){p.version=j.getNum(r.name+"")}}return p},query:function(r){var q=this,t,s;r=r?1:0;if(q.done===null){if(j.hasMimeType(q.mimeType)){s=q.detect(1);if(s.installed){t=q.detect(0);q.result=[t,t.installed?t:s]}var x=q.result[0],v=q.result[1],w=new RegExp(q.avoid,"i"),u=new RegExp(q.find3filename,"i"),p;x=x?x.plugin:0;v=v?v.plugin:0;if(!x&&v&&v.name&&(!v.description||(/^[\s]*$/).test(v.description+""))&&!w.test(v.name+"")){p=(v.filename||"")+"";if((/^.*[\\\/]([^\\\/]*)$/).test(p)){p=RegExp.$1;}if(p&&u.test(p)&&!w.test(p)){q.result[0]=q.result[1]}}}q.done=q.result[0]===q.result[1]?1:0;}if(q.result[r]){q.installed=q.result[r].installed;q.version=q.result[r].version}return q}},codebase:{classID:"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B",isMin:function(r){var s=this,q,p=0;s.$$=i;if(j.isStrNum(r)){q=r.split(j.splitNumRegx);if(q.length>3&&parseInt(q[3],10)>0){q[3]="9999"}r=q.join(",");p=j.codebase.isMin(s,r)}return p},search:function(){this.$$=i;return j.codebase.search(this)},DIGITMAX:[[12,11,11],[7,60],[7,11,11],0,[7,11,11]],DIGITMIN:[5,0,0,0],Upper:["999","7,60","7,50","7,6","7,5"],Lower:["7,60","7,50","7,6","7,5","0"],convert:[1,function(r,q){return q?[r[0],r[1]+r[2],r[3],"0"]:[r[0],r[1].charAt(0),r[1].charAt(1),r[2]]},1,0,1]},axo:{hasRun:0,installed:0,version:null,progID:["QuickTimeCheckObject.QuickTimeCheck","QuickTimeCheckObject.QuickTimeCheck.1"],progID0:"QuickTime.QuickTime",query:function(){var r=this,t,p,q,s=r.hasRun||!j.browser.ActiveXEnabled;r.hasRun=1;if(s){return r}for(p=0;p<r.progID.length;p++){t=j.getAXO(r.progID[p]);if(t){r.installed=1;q=j.pd.getPROP(t,"QuickTimeVersion");if(q&&q.toString){q=q.toString(16);r.version=parseInt(q.charAt(0)||"0",16)+"."+parseInt(q.charAt(1)||"0",16)+"."+parseInt(q.charAt(2)||"0",16);if(!j.dbug){break}}}}return r}}};j.addPlugin("quicktime",i);var a={Property_names:[],Property_values:[],Property_values_lock:[],JAVATOJSBRIDGE:0,JSTOJAVABRIDGE:1,mimeType:["application/x-java-applet","application/x-java-vm","application/x-java-bean"],mimeType_dummy:"application/dummymimejavaapplet",classID:"clsid:8AD9C840-044E-11D1-B3E9-00805F499D93",classID_dummy:"clsid:8AD9C840-044E-11D1-B3E9-BA9876543210",navigator:{init:function(){var q=this,p=a;q.mimeObj=j.hasMimeType(p.mimeType);if(q.mimeObj){q.pluginObj=q.mimeObj.enabledPlugin}},a:(function(){try{return window.navigator.javaEnabled()}catch(p){}return 1})(),javaEnabled:function(){return !!this.a},mimeObj:0,pluginObj:0},OTF:null,info:{pluginObj:null,getPluginObj:function(){var p=this;if(p.pluginObj===null){p.pluginObj=a.navMime.pluginObj||a.navigator.pluginObj||0}return p.pluginObj},getNavPluginName:function(){var p=this.getPluginObj();return p?p.name||"":""},getNavPluginDescription:function(){var p=this.getPluginObj();return p?p.description||"":""},Plugin2Status:0,setPlugin2Status:function(p){if(j.isNum(p)){this.Plugin2Status=p}},getPlugin2Status:function(){var u=this,r,s,p,t,q;if(u.Plugin2Status===0){s=/Next.*Generation.*Java.*Plug-?in|Java.*Plug-?in\s*2\s/i;p=/Classic.*Java.*Plug-?in/i;t=u.getNavPluginDescription();q=u.getNavPluginName();if(s.test(t)||s.test(q)){u.setPlugin2Status(1);}else{if(p.test(t)||p.test(q)){u.setPlugin2Status(-1);}else{if(j.browser.isIE&&(/Sun|Oracle/i).test(u.getVendor())){r=u.isMinJre4Plugin2();if(r>0){u.setPlugin2Status(1);}else{if(r<0){u.setPlugin2Status(-1);}}}}}}return u.Plugin2Status},isMinJre4Plugin2:function(p){var t=a,u="",r,s,q=t.applet.getResult()[0];if(j.OS==1){u="1,6,0,10"}else{if(j.OS==2){u="1,6,0,12"}else{if(j.OS==3){u="1,6,0,10"}else{u="1,6,0,10"}}}if(!p){p=(q&&!t.applet.isRange(q)?q:0)||t.DTK.version||t.version;r=t.applet.codebase;s=t.WebStart.codebase;p=p||s.version||r.version||(r.min&&u?(r.isMin(u,true)>0?u:"0,0,0,0"):0);}p=j.formatNum(j.getNum(p));return p?(j.compareNums(p,u)>=0?1:-1):0},BrowserForbidsPlugin2:function(){var p=j.browser;if(j.OS>=20){return 0}if((p.isGecko&&j.compareNums(p.verGecko,"1,9,0,0")<0)||(p.isOpera&&j.compareNums(p.verOpera,"10,50,0,0")<0)){return 1}return 0},BrowserRequiresPlugin2:function(){var p=j.browser;if(j.OS>=20){return 0}if((p.isGecko&&j.compareNums(p.verGecko,"1,9,2,0")>=0)||p.isChrome||(j.OS==1&&p.isOpera&&j.compareNums(p.verOpera,"10,60,0,0")>=0)){return 1}return 0},VENDORS:["Sun Microsystems Inc.","Apple Computer, Inc.","Oracle Corporation","IBM Corporation"],VENDORS_reg:[/Sun/i,/Apple/i,/Oracle/i,/IBM/i],getNavVendor:function(){var t=this,q,r=t.getNavPluginName(),s=t.getNavPluginDescription(),p="";if(r||s){for(q=0;q<t.VENDORS.length;q++){if(t.VENDORS_reg[q].test(r)||t.VENDORS_reg[q].test(s)){p=t.VENDORS[q];break}}}return p},OracleMin:"1,7,0,0",OracleOrSun:function(p){var q=this;return q.VENDORS[j.compareNums(j.formatNum(p),q.OracleMin)<0?0:2]},OracleOrApple:function(p){var q=this;return q.VENDORS[j.compareNums(j.formatNum(p),q.OracleMin)<0?1:2]},getVendor:function(){var t=this,s=a,u=s.vendor||s.applet.getResult()[1]||"",q,r,p;if(!u){p=s.DTK.version;q=s.applet.codebase;r=s.WebStart.codebase;p=p||r.version||q.version||(q.min?(q.isMin(t.OracleMin,true)>0?t.OracleMin:"0,0,0,0"):0);if(p){u=t.OracleOrSun(p)}else{u=t.getNavVendor()||"";if(u){}else{if(s.version){if(j.OS==2){u=t.OracleOrApple(s.version)}else{if(j.OS==1||j.OS==3){u=t.OracleOrSun(s.version)}}}}}}return u},isPlugin2InstalledEnabled:function(){var u=this,t=a,p=-1,s=t.installed,w=u.getPlugin2Status(),v=u.BrowserRequiresPlugin2(),r=u.BrowserForbidsPlugin2(),q=u.isMinJre4Plugin2();if(s!==null&&s>=-0.1){if(w>=3){p=1}else{if(w<=-3){}else{if(w==2){p=1}else{if(w==-2){}else{if(v&&w>=0&&q>0){p=1}else{if(r&&w<=0&&q<0){}else{if(v){p=1}else{if(r){}else{if(w>0){p=1}else{if(w<0){}else{if(q<0){}else{p=0}}}}}}}}}}}}return p},result:{getDeploymentToolkitObj:function(){var p=a,r=p.info,q=p.DTK;q.query(1);r.updateResult();return q.status&&q.HTML?q.HTML.obj():q.status}},updateResult:function(){var r=this,q=a,p=q.applet,w,y=q.installed,v=q.DTK,u=p.results,z=r.result;z.DeployTK_versions=[].concat(j.isArray(v.VERSIONS)?v.VERSIONS:[]);z.vendor=r.getVendor();z.isPlugin2=r.isPlugin2InstalledEnabled();z.OTF=q.OTF<3?0:(q.OTF==3?1:2);z.JavaAppletObj=null;for(w=0;w<u.length;w++){if(u[w][0]&&p.HTML[w]&&p.HTML[w].obj()){z.JavaAppletObj=p.HTML[w].obj();break}}var t=[null,null,null,null];for(w=0;w<u.length;w++){if(u[w][0]){t[w]=1}else{if(u[w][0]!==null){if(q.NOTF){q.NOTF.isAppletActive(w)}if(p.active[w]>0){t[w]=0}else{if(p.allowed[w]>=1&&q.OTF!=3&&(p.isDisabled.single(w)||y==-0.2||y==-1||p.active[w]<0||(w==3&&(/Microsoft/i).test(z.vendor)))){t[w]=-1}}}else{if(w==3&&u[0][0]){t[w]=0}else{if(p.isDisabled.single(w)){t[w]=-1}}}}}z.objectTag=t[1];z.appletTag=t[2];z.objectTagActiveX=t[3];z.name=r.getNavPluginName();z.description=r.getNavPluginDescription();z.All_versions=[].concat((z.DeployTK_versions.length?z.DeployTK_versions:(j.isString(q.version)?[q.version]:[])));var s=z.All_versions;for(w=0;w<s.length;w++){s[w]=j.formatNum(j.getNum(s[w]))}return z}},getInfo:function(){var p=this.info;p.updateResult();return p.result},getVerifyTagsDefault:function(){return[1,this.applet.isDisabled.VerifyTagsDefault_1()?0:1,1]},getVersion:function(x,u,w){var q=this,s,p=q.applet,v=q.verify,y=q.navigator,t=null,z=null,r=null;if(q.getVersionDone===null){q.OTF=0;y.init();if(v){v.init()}}p.setVerifyTagsArray(w);j.file.save(q,".jar",u);if(q.getVersionDone===0){if(p.should_Insert_Query_Any()){s=p.insert_Query_Any(x);q.setPluginStatus(s[0],s[1],t,x)}return}if((!t||j.dbug)&&q.navMime.query().version){t=q.navMime.version}if((!t||j.dbug)&&q.navPlugin.query().version){t=q.navPlugin.version}if((!t||j.dbug)&&q.DTK.query().version){t=q.DTK.version}if((!t||j.dbug)&&q.WebStart.query().version){t=q.WebStart.version}if(q.nonAppletDetectionOk(t)){r=t}q.setPluginStatus(r,z,t,x);if(p.should_Insert_Query_Any()){s=p.insert_Query_Any(x);if(s[0]){r=s[0];z=s[1]}}q.setPluginStatus(r,z,t,x)},nonAppletDetectionOk:function(q){var t=this,p=t.navigator,r=j.browser,s=1;if(!q||!p.javaEnabled()||(!r.isIE&&!p.mimeObj)){s=0}return s},setPluginStatus:function(v,w,p,u){var t=this,s,q=0,r=t.applet;p=p||t.version0;s=r.isRange(v);if(s){if(r.setRange(s,u)==v){q=s}v=0}if(t.OTF<3){t.installed=q?(q>0?0.7:-0.1):(v?1:(p?-0.2:-1))}if(t.OTF==2&&t.NOTF&&!t.applet.getResult()[0]){t.installed=p?-0.2:-1}if(t.OTF==3&&t.installed!=-0.5&&t.installed!=0.5){t.installed=(t.NOTF.isJavaActive(1)>=1?0.5:-0.5)}if(t.OTF==4&&(t.installed==-0.5||t.installed==0.5)){if(v){t.installed=1}else{if(q){t.installed=q>0?0.7:-0.1}else{if(t.NOTF.isJavaActive(1)>=1){if(p){t.installed=1;v=p}else{t.installed=0}}else{if(p){t.installed=-0.2}else{t.installed=-1}}}}}if(p){t.version0=j.formatNum(j.getNum(p))}if(v&&!q){t.version=j.formatNum(j.getNum(v))}if(w&&j.isString(w)){t.vendor=w}if(!t.vendor){t.vendor=""}if(t.verify&&t.verify.isEnabled()){t.getVersionDone=0}else{if(t.getVersionDone!=1){if(t.OTF<2){t.getVersionDone=0}else{t.getVersionDone=t.applet.can_Insert_Query_Any()?0:1}}}},WebStart:{hasRun:0,version:"",codebase:{classID:"clsid:5852F5ED-8BF4-11D4-A245-0080C6F74284",isMin:function(q,p){this.$$=a;return j.codebase.isMin(this,q,p)},search:function(p){this.$$=a;return j.codebase.search(this,p)},DIGITMAX:[[12,4,2048],[5,4,1024]],DIGITMIN:[5,0,0,0],Upper:["999","6"],Lower:["6","0"],convert:[function(r,q){return q?[parseInt(r[0],10)>1?"99":r[1],r[2],r[3]+"0","0"]:["1",r[0],r[1],r[2].substring(0,r[2].length-1||1)]},1]},isDisabled:function(){var p=this;if(!j.browser.isIE||p.hasRun){return 1}if(j.dbug){return 0}if(!j.DOM.isEnabled.objectTagUsingActiveX()||p.codebase.isMin("1,7,0,0",true)<=0){return 1}return 0},query:function(){var r=this,p=null,q=r.isDisabled();r.hasRun=1;if(q){return r}p=r.codebase.search();if(p){r.version=p}return r}},DTK:{hasRun:0,status:null,VERSIONS:[],version:"",HTML:null,Plugin2Status:null,classID:["clsid:CAFEEFAC-DEC7-0000-0001-ABCDEFFEDCBA","clsid:CAFEEFAC-DEC7-0000-0000-ABCDEFFEDCBA"],mimeType:["application/java-deployment-toolkit","application/npruntime-scriptable-plugin;DeploymentToolkit"],isDisabled:function(p){var q=this;if(q.HTML){return 1}if(p||j.dbug){return 0}if(q.hasRun||!j.DOM.isEnabled.objectTagUsingActiveX()){return 1}return 0},query:function(B){var z=this,t=a,A,v,p=j.DOM.altHTML,u={},q,s=null,w=null,r=z.isDisabled(B);z.hasRun=1;if(r){return z}z.status=0;if(j.DOM.isEnabled.objectTagUsingActiveX()){for(A=0;A<z.classID.length;A++){z.HTML=j.DOM.insert("object",["classid",z.classID[A]],[],p);s=z.HTML.obj();if(j.pd.getPROP(s,"jvms")){break}else{}}}else{v=j.hasMimeType(z.mimeType);if(v&&v.type){z.HTML=j.DOM.insert("object",["type",v.type],[],p);s=z.HTML.obj()}}if(s){try{if(Math.abs(t.info.getPlugin2Status())<2){z.Plugin2Status=s.isPlugin2()}}catch(y){}if(z.Plugin2Status!==null){if(z.Plugin2Status){t.info.setPlugin2Status(2)}else{if(j.DOM.isEnabled.objectTagUsingActiveX()||t.info.getPlugin2Status()<=0){t.info.setPlugin2Status(-2)}}}try{q=j.pd.getPROP(s,"jvms");if(q){w=q.getLength();if(j.isNum(w)){z.status=w>0?1:-1;for(A=0;A<w;A++){v=j.getNum(q.get(w-1-A).version);if(v){z.VERSIONS.push(v);u["a"+j.formatNum(v)]=1}}}}}catch(y){}if(z.VERSIONS.length){z.version=j.formatNum(z.VERSIONS[0])}}return z}},navMime:{hasRun:0,mimetype:"",version:"",mimeObj:0,pluginObj:0,regexJPI:/^\s*application\/x-java-applet;jpi-version\s*=\s*(\d.*)$/i,isDisabled:function(){var p=this,q=a;if(p.hasRun||!q.navigator.mimeObj){return 1}return 0},update:function(s){var p=this,r=s?s.enabledPlugin:0,q=s&&p.regexJPI.test(s.type||"")?j.formatNum(j.getNum(RegExp.$1)):0;if(q&&r&&(r.description||r.name)){if(j.compareNums(q,p.version||j.formatNum("0"))>0){p.version=q;p.mimeObj=s;p.pluginObj=r;p.mimetype=s.type;}}},query:function(){var t=this,s=a,w,v,B,A,z,r,q=navigator.mimeTypes,p=t.isDisabled();t.hasRun=1;if(p){return t}r=q.length;if(j.isNum(r)){for(w=0;w<r;w++){B=0;try{B=q[w]}catch(u){}t.update(B)}}if(!t.version||j.dbug){z=j.isArray(s.mimeType)?s.mimeType:[s.mimeType];for(w=0;w<z.length;w++){B=0;try{B=q[z[w]]}catch(u){}A=B?B.enabledPlugin:0;r=A?A.length:null;if(j.isNum(r)){for(v=0;v<r;v++){B=0;try{B=A[v]}catch(u){}t.update(B)}}}}return t}},navPlugin:{hasRun:0,version:"",getPlatformNum:function(){var q=a,p=0,r=/Java.*TM.*Platform[^\d]*(\d+)[\.,_]?(\d*)\s*U?(?:pdate)?\s*(\d*)/i,s=j.pd.findNavPlugin({find:r,mimes:q.mimeType,plugins:1});if(s&&(r.test(s.name||"")||r.test(s.description||""))&&parseInt(RegExp.$1,10)>=5){p="1,"+RegExp.$1+","+(RegExp.$2?RegExp.$2:"0")+","+(RegExp.$3?RegExp.$3:"0");}return p},getPluginNum:function(){var s=this,q=a,p=0,u,t,r,w,v=0;r=/Java[^\d]*Plug-in/i;w=j.pd.findNavPlugin({find:r,num:1,mimes:q.mimeType,plugins:1,dbug:v});if(w){u=s.checkPluginNum(w.description,r);t=s.checkPluginNum(w.name,r);p=u&&t?(j.compareNums(u,t)>0?u:t):(u||t)}if(!p){r=/Java.*\d.*Plug-in/i;w=j.pd.findNavPlugin({find:r,mimes:q.mimeType,plugins:1,dbug:v});if(w){u=s.checkPluginNum(w.description,r);t=s.checkPluginNum(w.name,r);p=u&&t?(j.compareNums(u,t)>0?u:t):(u||t)}}return p},checkPluginNum:function(s,r){var p,q;p=r.test(s)?j.formatNum(j.getNum(s)):0;if(p&&j.compareNums(p,j.formatNum("10"))>=0){q=p.split(j.splitNumRegx);p=j.formatNum("1,"+(parseInt(q[0],10)-3)+",0,"+q[1])}if(p&&(j.compareNums(p,j.formatNum("1,3"))<0||j.compareNums(p,j.formatNum("2"))>=0)){p=0}return p},query:function(){var t=this,s=a,r,p=0,q=t.hasRun||!s.navigator.mimeObj;t.hasRun=1;if(q){return t}if(!p||j.dbug){r=t.getPlatformNum();if(r){p=r}}if(!p||j.dbug){r=t.getPluginNum();if(r){p=r}}if(p){t.version=j.formatNum(p)}return t}},applet:{codebase:{isMin:function(q,p){this.$$=a;return j.codebase.isMin(this,q,p)},search:function(p){this.$$=a;return j.codebase.search(this,p)},ParamTags:'<param name="code" value="A9999.class" /><param name="codebase_lookup" value="false" />',DIGITMAX:[[15,128],[6,0,512],0,[1,5,2,256],0,[1,4,1,1],[1,4,0,64],[1,3,2,32]],DIGITMIN:[1,0,0,0],Upper:["999","10","5,0,20","1,5,0,20","1,4,1,20","1,4,1,2","1,4,1","1,4"],Lower:["10","5,0,20","1,5,0,20","1,4,1,20","1,4,1,2","1,4,1","1,4","0"],convert:[function(r,q){return q?[parseInt(r[0],10)>1?"99":parseInt(r[1],10)+3+"",r[3],"0","0"]:["1",parseInt(r[0],10)-3+"","0",r[1]]},function(r,q){return q?[r[1],r[2],r[3]+"0","0"]:["1",r[0],r[1],r[2].substring(0,r[2].length-1||1)]},0,function(r,q){return q?[r[0],r[1],r[2],r[3]+"0"]:[r[0],r[1],r[2],r[3].substring(0,r[3].length-1||1)]},0,1,function(r,q){return q?[r[0],r[1],r[2],r[3]+"0"]:[r[0],r[1],r[2],r[3].substring(0,r[3].length-1||1)]},1]},results:[[null,null],[null,null],[null,null],[null,null],[null,null]],active:[0,0,0,0,0],IDforJAVAtoJS:[],IDforJStoJAVA:[],saveData:function(v,q,w,A,x,t){var s=a,r=s.applet,B=0,y=-1,p="",z="";try{y=parseInt(v+"",10)}catch(u){}try{p=j.getNum(w+"")}catch(u){}try{z=A+""}catch(u){}x=(x==="true"?true:(x==="false"?false:x));if(y<=0||y>=r.results.length||r.results[y][0]){}else{if((q&&!s.JSTOJAVABRIDGE)||(!q&&!s.JAVATOJSBRIDGE)){}else{if(!j.isStrNum(p)||(j.dbug&&s.OTF<3)){}else{r.results[y][0]=p;r.results[y][1]=z;r.results[y][2]=x;if(t){r.results[y][3]=t}if(x===true){s.info.setPlugin2Status(3)}if(x===false){s.info.setPlugin2Status(-3)}r.active[y]=2;if(q){r.IDforJStoJAVA.push(y)}else{r.IDforJAVAtoJS.push(y);if(!j.dbug&&s.JAVATOJSBRIDGE){s.JSTOJAVABRIDGE=0}}B=1}}}return B},getResult:function(){var q=this,s=q.results,p,r=[];for(p=s.length-1;p>=0;p--){r=s[p];if(r[0]){break}}r=[].concat(r);return r},DummySpanTagHTML:0,HTML:[0,0,0,0,0],DummyObjTagHTML:0,DummyObjTagHTML2:0,allowed:[1,1,1,1,1],VerifyTagsHas:function(q){var r=this,p;for(p=0;p<r.allowed.length;p++){if(r.allowed[p]===q){return 1}}return 0},saveAsVerifyTagsArray:function(r){var q=this,p;if(j.isArray(r)){for(p=1;p<q.allowed.length;p++){if(r.length>p-1&&j.isNum(r[p-1])){if(r[p-1]<0){r[p-1]=0}if(r[p-1]>3){r[p-1]=3}q.allowed[p]=r[p-1]}}q.allowed[0]=q.allowed[3];}},setVerifyTagsArray:function(r){var q=this,p=a;if(p.getVersionDone===null){q.saveAsVerifyTagsArray(p.getVerifyTagsDefault())}if(j.dbug){q.saveAsVerifyTagsArray([3,3,3])}else{if(r){q.saveAsVerifyTagsArray(r)}}},isDisabled:{single:function(q){var p=this;if(p.all()){return 1}if(q==1){return !j.DOM.isEnabled.objectTag()}if(q==2){return p.AppletTag()}if(q===0){return j.codebase.isDisabled()}if(q==3){return !j.DOM.isEnabled.objectTagUsingActiveX()}return 1},all_:null,all:function(){var r=this,t=a,q=t.navigator,p,s=j.browser;if(r.all_===null){if((s.isOpera&&j.compareNums(s.verOpera,"13,0,0,0")<0&&!q.javaEnabled())||(r.AppletTag()&&!j.DOM.isEnabled.objectTag())||(!q.mimeObj&&!s.isIE)){p=1}else{p=0}r.all_=p}return r.all_},AppletTag:function(){var q=a,p=q.navigator;return j.browser.isIE?!p.javaEnabled():0},VerifyTagsDefault_1:function(){var q=j.browser,p=1;if(q.isIE&&!q.ActiveXEnabled){p=0}if((q.isIE&&q.verIE<9)||(q.verGecko&&j.compareNums(q.verGecko,j.formatNum("2"))<0)||(q.isSafari&&(!q.verSafari||j.compareNums(q.verSafari,j.formatNum("4"))<0))||(q.isOpera&&j.compareNums(q.verOpera,j.formatNum("11"))<0)){p=0}return p}},can_Insert_Query:function(s){var q=this,r=q.results[0][0],p=q.getResult()[0];if(q.HTML[s]||(s===0&&r!==null&&!q.isRange(r))||(s===0&&p&&!q.isRange(p))){return 0}return !q.isDisabled.single(s)},can_Insert_Query_Any:function(){var q=this,p;for(p=0;p<q.results.length;p++){if(q.can_Insert_Query(p)){return 1}}return 0},should_Insert_Query:function(s){var r=this,t=r.allowed,q=a,p=r.getResult()[0];p=p&&(s>0||!r.isRange(p));if(!r.can_Insert_Query(s)||t[s]===0){return 0}if(t[s]==3||(t[s]==2.8&&!p)){return 1}if(!q.nonAppletDetectionOk(q.version0)){if(t[s]==2||(t[s]==1&&!p)){return 1}}return 0},should_Insert_Query_Any:function(){var q=this,p;for(p=0;p<q.allowed.length;p++){if(q.should_Insert_Query(p)){return 1}}return 0},query:function(s){var p=this,r=a,v=null,y=null,w=null,q,t=p.HTML[s];var x=r.NOTF.queryReadyState(s);if(x!=1){return}q=t.obj();try{v=q.getVersion()+"";y=q.getVendor()+"";q.statusbar(j.win.loaded?" ":" ");w=q.isPlugin2()}catch(u){}if(p.saveData(s,1,v,y,w)){}},isRange:function(p){return(/^[<>]/).test(p||"")?(p.charAt(0)==">"?1:-1):0},setRange:function(q,p){return(q?(q>0?">":"<"):"")+(j.isString(p)?p:"")},insertJavaTag:function(t,C,u,D,B){var z=a,w=0,G="A.class",q=j.file.getValid(z),s=q.name+q.ext,F=q.path;if(window.top[j.name]!==j){window.top[j.name]=j}var x=["archive",s,"code",G],A=(D?["width",D]:[]).concat(B?["height",B]:[]),y=["mayscript","true"],E=["scriptable","true","codebase_lookup","false"].concat(y),v=["plugindetect",t],p=z.navigator,r=!j.browser.isIE&&p.mimeObj&&p.mimeObj.type?p.mimeObj.type:z.mimeType[0];if(t==1){w=j.browser.isIE?j.DOM.insert("object",["type",r].concat(A),["codebase",F].concat(x).concat(E).concat(v),u,z,0,C):j.DOM.insert("object",["type",r].concat(A),["codebase",F].concat(x).concat(E).concat(v),u,z,0,C)}if(t==2){w=j.browser.isIE?j.DOM.insert("applet",["alt",u].concat(y).concat(x).concat(A),["codebase",F].concat(E).concat(v),u,z,0,C):j.DOM.insert("applet",["codebase",F,"alt",u].concat(y).concat(x).concat(A),[].concat(E).concat(v),u,z,0,C)}if(t==3){w=j.browser.isIE?j.DOM.insert("object",["classid",z.classID].concat(A),["codebase",F].concat(x).concat(E).concat(v),u,z,0,C):j.DOM.insert()}if(t==4){w=j.DOM.insert("embed",["codebase",F].concat(x).concat(["type",r]).concat(E).concat(A).concat(v),[],u,z,0,C)}if(w){w.tagID=t}else{w=j.DOM.insert()}return w},insertIframe:function(p){return j.DOM.iframe.insert(99,p)},insert_Query_Any:function(z){var q=this,r=a,B=j.DOM,v=q.results,A=q.HTML,p=B.altHTML,u,t,w=j.file.getValid(r);if(q.should_Insert_Query(0)){if(r.OTF<2){r.OTF=2}v[0]=[0,0];u=z?q.codebase.isMin(z,true):q.codebase.search(true);if(u){v[0][0]=z?q.setRange(u,z):u}q.active[0]=u?1.5:-1}if(!w){return q.getResult()}if(!q.DummySpanTagHTML){t=q.insertIframe("applet.DummySpanTagHTML");q.DummySpanTagHTML=B.insert("",[],[],p,0,0,t);B.iframe.close(t)}var s=[1,2],y;s=s.concat([3]);for(y=0;y<s.length;y++){if(q.should_Insert_Query(s[y])){if(r.OTF<2){r.OTF=2}v[s[y]]=[0,0];t=q.insertIframe("applet.HTML["+s[y]+"]");A[s[y]]=q.insertJavaTag(s[y],t,p);B.iframe.close(t);q.query(s[y])}}if(B.isEnabled.objectTag()){if(!q.DummyObjTagHTML&&(A[1]||A[2])){t=q.insertIframe("applet.DummyObjTagHTML");q.DummyObjTagHTML=B.insert("object",["type",r.mimeType_dummy],[],p,0,0,t);B.iframe.close(t)}if(!q.DummyObjTagHTML2&&A[3]){t=q.insertIframe("applet.DummyObjTagHTML2");q.DummyObjTagHTML2=B.insert("object",["classid",r.classID_dummy],[],p,0,0,t);B.iframe.close(t)}}r.NOTF.init();return q.getResult()}},NOTF:{count:0,count2:0,countMax:25,intervalLength:250,init:function(){var q=this,p=a;if(p.OTF<3&&q.shouldContinueQuery()){p.OTF=3;j.ev.setTimeout(q.onIntervalQuery,q.intervalLength);}},allHTMLloaded:function(){return this.allDummyHTMLloaded()&&this.allJavaHTMLloaded()?1:0},allJavaHTMLloaded:function(){var r=a.applet,q,p=r.HTML;for(q=0;q<p.length;q++){if(p[q]&&p[q].loaded!==null&&!p[q].loaded){return 0}}return 1},allDummyHTMLloaded:function(){var r=a.applet,q,p=[r.DummySpanTagHTML,r.DummyObjTagHTML,r.DummyObjTagHTML2];for(q=0;q<p.length;q++){if(p[q]&&p[q].loaded!==null&&!p[q].loaded){return 0}}return 1},queryReadyState:function(t){var y=this,s=a,p=s.applet,u=p.HTML[t],q=p.results[t],w,r,v,A=0,x=0;var D=10,B=5;if(q[0]){return 2}if(!u||!y.allHTMLloaded()){return 0}if(!u.qrs){u.qrs={result:null,count:y.count,count2:y.count}}var C=u.qrs;if(C.result==2||(C.result!==null&&y.count===C.count)){return C.result}C.count=y.count;if(C.count-C.count2>(s.JAVATOJSBRIDGE?D:0)+B){C.result=2;return 2}if(!s.JAVATOJSBRIDGE){return 1}r=u.obj();w=u.readyState();if((j.isNum(w)&&w!=4)||!r){C.result=0;return 0}try{v=r.dummyAppletProp()}catch(z){A=z;}if(q[0]){C.result=2;return 2}if(!s.JSTOJAVABRIDGE||C.count-C.count2<D){C.result=0;return 0}try{v=r.getVersion()}catch(z){x=z;}if(x){if(A&&A!==x&&A.name!==x.name){C.result=2;s.JSTOJAVABRIDGE=0}else{C.result=0}return C.result}C.result=1;return 1},shouldContinueQuery:function(){var t=this,s=a,r=s.applet,q,p;if(t.allHTMLloaded()){p=0;for(q=0;q<r.results.length;q++){if(r.HTML[q]&&t.queryReadyState(q)!=2){p=1;break}}if(!p){return p}}p=0;for(q=0;q<r.results.length;q++){if(r.HTML[q]){if(!r.results[q][0]&&(r.allowed[q]>=2||(r.allowed[q]==1&&!r.getResult()[0]))&&(!t.count||t.isAppletActive(q)>=0)){p=1}}}return p},isJavaActive:function(s){var u=this,r=a,p,q,t=-9;for(p=0;p<r.applet.HTML.length;p++){q=u.isAppletActive(p,s);if(q>t){t=q}}return t},isAppletActive:function(t,u){var v=this,q=a,A=q.navigator,p=q.applet,w=p.HTML[t],s=p.active,z,r=0,y,B=s[t];if(u||B>=1.5||!w||!w.span()){return B}y=j.DOM.getTagStatus(w,p.DummySpanTagHTML,p.DummyObjTagHTML,p.DummyObjTagHTML2,v.count);for(z=0;z<s.length;z++){if(s[z]>0){r=1}}if(y!=1){B=y}else{if(j.browser.isIE||(q.version0&&A.javaEnabled()&&A.mimeObj&&(w.tagName=="object"||r))){B=1}else{B=0}}s[t]=B;return B},onIntervalQuery:function(){var q=a.NOTF,p;q.count++;if(a.OTF==3){p=q.queryAllApplets();if(!q.shouldContinueQuery()){q.queryCompleted(p)}}if(a.OTF==3){j.ev.setTimeout(q.onIntervalQuery,q.intervalLength)}},queryAllApplets:function(){var t=this,s=a,r=s.applet,q,p;for(q=0;q<r.results.length;q++){r.query(q)}p=r.getResult();return p},queryCompleted:function(p){var r=this,q=a;if(q.OTF>=4){return}q.OTF=4;r.isJavaActive();q.setPluginStatus(p[0],p[1],0);j.ev.callArray(q.DoneHndlrs);}}};j.addPlugin("java",a);var m={getVersion:function(){var r=this,p=null,q;if((!q||j.dbug)&&r.nav.query().installed){q=1}if((!p||j.dbug)&&r.nav.query().version){p=r.nav.version}if((!q||j.dbug)&&r.axo.query().installed){q=1}if((!p||j.dbug)&&r.axo.query().version){p=r.axo.version}r.installed=p?1:(q?0:-1);r.version=j.formatNum(p)},nav:{hasRun:0,installed:0,version:null,mimeType:"application/x-devalvrx",query:function(){var s=this,p,r,q=s.hasRun||!j.hasMimeType(s.mimeType);s.hasRun=1;if(q){return s}r=j.pd.findNavPlugin({find:"DevalVR.*Plug-?in",mimes:s.mimeType,plugins:"DevalVR 3D Plugin"});if(r&&(/Plug-?in(.*)/i).test(r.description||"")){p=j.getNum(RegExp.$1)}if(r){s.installed=1}if(p){s.version=p}return s}},axo:{hasRun:0,installed:0,version:null,progID:["DevalVRXCtrl.DevalVRXCtrl","DevalVRXCtrl.DevalVRXCtrl.1"],classID:"clsid:5D2CF9D0-113A-476B-986F-288B54571614",query:function(){var s=this,v=m,q,p,u,r,t=s.hasRun;s.hasRun=1;if(t){return s}for(p=0;p<s.progID.length;p++){u=j.getAXO(s.progID[p]);if(u){s.installed=1;if(!j.dbug){break}}}if(u&&j.DOM.isEnabled.objectTagUsingActiveX()){r=j.pd.getPROP(j.DOM.insert("object",["classid",s.classID],["src",""],"",v).obj(),"pluginversion");if(r&&r.toString){q="00000000"+r.toString(16);q=q.substr(q.length-8,8);q=parseInt(q.substr(0,2)||"0",16)+","+parseInt(q.substr(2,2)||"0",16)+","+parseInt(q.substr(4,2)||"0",16)+","+parseInt(q.substr(6,2)||"0",16);if(q){s.version=q}}}return s}}};j.addPlugin("devalvr",m);var e={mimeType:"application/x-shockwave-flash",setPluginStatus:function(t,q,p){var s=this,r;s.installed=q?1:(t?0:-1);s.precision=p;s.version=j.formatNum(q);r=s.installed==-1||s.instance.version;r=r||s.axo.version;s.getVersionDone=r?1:0;},getPrecision:function(t){if(j.isString(t)){var q,s="\\d+",r="[\\._,]",p=[s,s,s,s];for(q=4;q>0;q--){if((new RegExp(p.slice(0,q).join(r))).test(t)){return q}}}return 0},getVersion:function(u,r){var s=this,q=null,t=0,p=0;if((!t||j.dbug)&&s.navPlugin.query().installed){t=1}if((!q||j.dbug)&&s.navPlugin.query().version){q=s.navPlugin.version;p=s.navPlugin.precision}if((!t||j.dbug)&&s.axo.query().installed){t=1}if((!q||j.dbug)&&s.axo.query().version){q=s.axo.version;p=s.axo.precision}if(((!t&&!q)||r||j.dbug)&&s.instance.query().version){t=1;q=s.instance.version;p=s.instance.precision}s.setPluginStatus(t,q,p)},navPlugin:{hasRun:0,installed:0,precision:0,version:null,getNum:function(q){if(!q){return null}var p=/[\d][\d\,\.\s]*[rRdD]{0,1}[\d\,]*/.exec(q);return p?p[0].replace(/[rRdD\.]/g,",").replace(/\s/g,""):null},query:function(){var s=this,q=e,p,t,r=s.hasRun||!j.hasMimeType(q.mimeType);s.hasRun=1;if(r){return s}t=j.pd.findNavPlugin({find:"Shockwave.*Flash",mimes:q.mimeType,plugins:["Shockwave Flash"]});if(t){s.installed=1;if(t.description){p=s.getNum(t.description)}}if(p){p=j.getPluginFileVersion(t,p)}if(p&&/(\d+[_,]\d+[_,]\d+[_,]\d+)[^\d]+$/.test(t.filename)){p=j.getPluginFileVersion({filename:RegExp.$1,name:t.name,description:t.description},p,0,"filename")}if(p){s.version=p;s.precision=q.getPrecision(p)}return s}},axo:{hasRun:0,installed:0,precision:0,version:null,progID:"ShockwaveFlash.ShockwaveFlash",classID:"clsid:D27CDB6E-AE6D-11CF-96B8-444553540000",query:function(){var r=this,q,p,u,s=r.hasRun;r.hasRun=1;if(s){return r}for(p=0;p<10;p++){u=j.getAXO(r.progID+(p?"."+p:""));if(u){r.installed=1;q=0;try{q=j.getNum(u.GetVariable("$version")+"");}catch(t){}if(q){r.version=q;r.precision=e.getPrecision(q);if(!j.dbug){break}}}}return r}},instance:{hasRun:0,precision:0,version:null,HTML:null,HTML2:null,isEnabled:function(){var q=this,r=e,p=1;if(q.hasRun||j.DOM.isEnabled.objectTagUsingActiveX()||!j.DOM.isEnabled.objectTag()||!j.hasMimeType(r.mimeType)){p=0}return p},query:function(){var p=this,r=e,s,q=p.isEnabled();p.hasRun=1;if(q){p.HTML=j.DOM.insert("object",["type",r.mimeType],["play","false","menu","false"],"",r);try{s=p.HTML.obj().GetVariable("$version")+"";p.version=j.getNum(s);}catch(t){}if(!p.version||j.dbug){p.HTML2=j.DOM.insert("embed",["type",r.mimeType,"play","false","menu","false"],[],"",r);try{s=p.HTML2.obj().GetVariable("$version")+"";p.version=j.getNum(s);}catch(t){}}p.precision=r.getPrecision(p.version);}return p}},getInfo:function(){var q=e,p={version:q.version,precision:q.precision,flashObjUsed:(q.instance.HTML2&&q.instance.HTML2.obj())||(q.instance.HTML&&q.instance.HTML.obj())?true:false};p.flashObjUsed=p.flashObjUsed||(q.axo.version?true:false);return p}};j.addPlugin("flash",e);var k={getVersion:function(){var r=this,p=null,q;if((!q||j.dbug)&&r.nav.query().installed){q=1}if((!p||j.dbug)&&r.nav.query().version){p=r.nav.version}if((!q||j.dbug)&&r.axo.query().installed){q=1}if((!p||j.dbug)&&r.axo.query().version){p=r.axo.version}r.installed=p?1:(q?0:-1);r.version=j.formatNum(p)},nav:{hasRun:0,installed:0,version:null,mimeType:"application/x-director",query:function(){var s=this,p,r,q=s.hasRun||!j.hasMimeType(s.mimeType);s.hasRun=1;if(q){return s}r=j.pd.findNavPlugin({find:"Shockwave\\s*for\\s*Director",mimes:s.mimeType,plugins:"Shockwave for Director"});if(r&&r.description){p=j.getNum(r.description+"")}if(p){p=j.getPluginFileVersion(r,p)}if(r){s.installed=1}if(p){s.version=p}return s}},axo:{hasRun:0,installed:null,version:null,progID:["SWCtl.SWCtl","SWCtl.SWCtl.1","SWCtl.SWCtl.7","SWCtl.SWCtl.8","SWCtl.SWCtl.11","SWCtl.SWCtl.12"],classID:"clsid:166B1BCA-3F9C-11CF-8075-444553540000",query:function(){var t=this,v,p,q,w,s,r=!t.hasRun;t.hasRun=1;if(r){for(p=0;p<t.progID.length;p++){v=j.getAXO(t.progID[p]);if(v){t.installed=1;w="";try{w=v.ShockwaveVersion("")+"";}catch(u){}if((/(\d[\d\.\,]*)(?:\s*r\s*(\d+))?/i).test(w)){s=RegExp.$2;q=j.formatNum(RegExp.$1);if(s){q=q.split(j.splitNumRegx);q[3]=s;q=q.join(",")}}if(q){t.version=q;if(!j.dbug){break}}}}}return t}}};j.addPlugin("shockwave",k);var o={setPluginStatus:function(p,r){var q=this;if(p){q.version=j.formatNum(p)}q.installed=q.version?1:(r?0:-1);q.getVersionDone=q.installed===0?0:1;},getVersion:function(t,q){var r=this,s,p=null;if((!s||j.dbug)&&r.nav.query().installed){s=1}if((!s||j.dbug)&&r.axo.query().installed){s=1}if((!p||j.dbug)&&r.axo.query().version){p=r.axo.version}if(((!s&&!p)||q||j.dbug)&&r.FirefoxPlugin.query().version){s=1;p=r.FirefoxPlugin.version}r.setPluginStatus(p,s)},mimeType:["application/x-ms-wmp","application/asx","application/x-mplayer2","video/x-ms-asf","video/x-ms-wm","video/x-ms-asf-plugin"],find:["Microsoft.*Windows\\s*Media\\s*Player.*Firefox.*Plug-?in","Windows\\s*Media\\s*Player\\s*Plug-?in\\s*Dynamic\\s*Link\\s*Library","Flip4Mac.*Windows\\s*Media.*Plug-?in|Flip4Mac.*WMV.*Plug-?in"],avoid:"Totem|VLC|RealPlayer|Helix",plugins:["Microsoft"+String.fromCharCode(174)+" Windows Media Player Firefox Plugin","Windows Media Player Plug-in Dynamic Link Library"],nav:{hasRun:0,installed:0,query:function(){var s=this,p=o,r,q=s.hasRun||!j.hasMimeType(p.mimeType);s.hasRun=1;if(q){return s}r=j.pd.findNavPlugin({find:p.find.join("|"),avoid:p.avoid,mimes:p.mimeType,plugins:p.plugins});if(r){s.installed=1}return s}},FirefoxPlugin:{hasRun:0,version:null,isDisabled:function(){var p=this,r=o,q=j.browser;if(p.hasRun||(q.isGecko&&j.compareNums(q.verGecko,j.formatNum("1.8"))<0)||(q.isOpera&&j.compareNums(q.verOpera,j.formatNum("10"))<0)||j.DOM.isEnabled.objectTagUsingActiveX()||!j.hasMimeType(r.mimeType)||!j.pd.findNavPlugin({find:r.find[0],avoid:r.avoid,mimes:r.mimeType,plugins:r.plugins[0]})){return 1}return 0},query:function(){var q=this,r=o,p,s=q.isDisabled();q.hasRun=1;if(s){return q}p=j.pd.getPROP(j.DOM.insert("object",["type",j.hasMimeType(r.mimeType).type,"data",""],["src",""],"",r).obj(),"versionInfo");if(p){q.version=j.getNum(p)}return q}},axo:{hasRun:0,installed:null,version:null,progID:["WMPlayer.OCX","WMPlayer.OCX.7"],classID:"clsid:6BF52A52-394A-11D3-B153-00C04F79FAA6",query:function(){var s=this,t,p,q,r=!s.hasRun;s.hasRun=1;if(r){for(p=0;p<s.progID.length;p++){t=j.getAXO(s.progID[p]);if(t){s.installed=1;q=j.pd.getPROP(t,"versionInfo",0);if(q){q=j.getNum(q)}if(q){s.version=q;if(!j.dbug){break}}}}}return s}},result:0,getInfo:function(){var q=this,p=q.installed;if(!q.result){q.result={ActiveXPlugin:!!(q.axo.version),FirefoxPlugin:!!((p===0||p==1)&&j.pd.findNavPlugin({find:q.find[0],avoid:q.avoid,mimes:q.mimeType,plugins:q.plugins[0]})),DllPlugin:!!((p===0||p==1)&&j.pd.findNavPlugin({find:q.find[1],avoid:q.avoid,mimes:q.mimeType,plugins:q.plugins[1]})),Flip4macPlugin:!!((p===0||p==1)&&j.pd.findNavPlugin({find:q.find[2],avoid:q.avoid,mimes:q.mimeType,plugins:1}))};q.result.Scriptable=!!(p==1||q.result.FirefoxPlugin)}return q.result}};j.addPlugin("windowsmediaplayer",o);var h={getVersion:function(){var r=this,p=null,q=0;if((!q||j.dbug)&&r.nav.query().installed){q=1}if((!p||j.dbug)&&r.nav.query().version){p=r.nav.version}if((!q||j.dbug)&&r.axo.query().installed){q=1}if((!p||j.dbug)&&r.axo.query().version){p=r.axo.version}r.version=j.formatNum(p);r.installed=p?1:(q?0:-1)},nav:{hasRun:0,installed:0,version:null,mimeType:["application/x-silverlight","application/x-silverlight-2"],query:function(){var t=this,p,q,s,r=t.hasRun||!j.hasMimeType(t.mimeType);t.hasRun=1;if(r){return t}s=j.pd.findNavPlugin({find:"Silverlight.*Plug-?in",mimes:t.mimeType,plugins:"Silverlight Plug-In"});if(s){t.installed=1}if(s&&s.description){q=j.formatNum(j.getNum(s.description+""))}if(q){p=q.split(j.splitNumRegx);if(parseInt(p[0],10)<2&&parseInt(p[2],10)>=30226){p[0]="2"}q=p.join(",")}if(q){t.version=q}return t}},axo:{hasRun:0,installed:0,version:null,progID:"AgControl.AgControl",maxdigit:[20,10,10,100,100,10],mindigit:[0,0,0,0,0,0],IsVersionSupported:function(s,q){var p=this;try{return p.testVersion?j.compareNums(j.formatNum(p.testVersion.join(",")),j.formatNum(q.join(",")))>=0:s.IsVersionSupported(p.format(q))}catch(r){}return 0},format:function(q){var p=this;return(q[0]+"."+q[1]+"."+q[2]+p.make2digits(q[3])+p.make2digits(q[4])+"."+q[5])},make2digits:function(p){return(p<10?"0":"")+p+""},query:function(){var r=this,q,v,s=r.hasRun;r.hasRun=1;if(s){return r}v=j.getAXO(r.progID);if(v){r.installed=1}if(v&&r.IsVersionSupported(v,r.mindigit)){var p=[].concat(r.mindigit),u,t=0;for(q=0;q<r.maxdigit.length;q++){u=0;while(r.maxdigit[q]-r.mindigit[q]>1&&u<20){u++;t++;p[q]=Math.round((r.maxdigit[q]+r.mindigit[q])/2);if(r.IsVersionSupported(v,p)){r.mindigit[q]=p[q]}else{r.maxdigit[q]=p[q]}}p[q]=r.mindigit[q]}r.version=r.format(p);}return r}}};j.addPlugin("silverlight",h);var f={compareNums:function(s,r){var A=s.split(j.splitNumRegx),y=r.split(j.splitNumRegx),w,q,p,v,u,z;for(w=0;w<Math.min(A.length,y.length);w++){z=/([\d]+)([a-z]?)/.test(A[w]);q=parseInt(RegExp.$1,10);v=(w==2&&RegExp.$2.length>0)?RegExp.$2.charCodeAt(0):-1;z=/([\d]+)([a-z]?)/.test(y[w]);p=parseInt(RegExp.$1,10);u=(w==2&&RegExp.$2.length>0)?RegExp.$2.charCodeAt(0):-1;if(q!=p){return(q>p?1:-1)}if(w==2&&v!=u){return(v>u?1:-1)}}return 0},setPluginStatus:function(r,p,s){var q=this;q.installed=p?1:(s?(s>0?0.7:-0.1):(r?0:-1));if(p){q.version=j.formatNum(p)}q.getVersionDone=q.installed==1||q.installed==-1||q.instance.hasRun?1:0;},getVersion:function(t,q){var u=this,s,p=null,r;if((!s||j.dbug)&&u.nav.query().installed){s=1}if((!p||j.dbug)&&u.nav.query().version){p=u.nav.version}if((!s||j.dbug)&&u.axo.query().installed){s=1}if((!p||j.dbug)&&u.axo.query().version){p=u.axo.version}if(!p||j.dbug){r=u.codebase.isMin(t);if(r){u.setPluginStatus(0,0,r);return}}if(!p||j.dbug){r=u.codebase.search();if(r){s=1;p=r}}if((!p&&q)||j.dbug){r=u.instance.query().version;if(r){s=1;p=r}}u.setPluginStatus(s,p,0)},nav:{hasRun:0,installed:0,version:null,mimeType:["application/x-vlc-plugin","application/x-google-vlc-plugin","application/mpeg4-muxcodetable","application/x-matroska","application/xspf+xml","video/divx","video/webm","video/x-mpeg","video/x-msvideo","video/ogg","audio/x-flac","audio/amr","audio/amr"],find:"VLC.*Plug-?in",find2:"VLC|VideoLAN",avoid:"Totem|Helix",plugins:["VLC Web Plugin","VLC Multimedia Plug-in","VLC Multimedia Plugin","VLC multimedia plugin"],query:function(){var s=this,p,r,q=s.hasRun||!j.hasMimeType(s.mimeType);s.hasRun=1;if(q){return s}r=j.pd.findNavPlugin({find:s.find,avoid:s.avoid,mimes:s.mimeType,plugins:s.plugins});if(r){s.installed=1;if(r.description){p=j.getNum(r.description+"","[\\d][\\d\\.]*[a-z]*")}p=j.getPluginFileVersion(r,p);if(p){s.version=p}}return s}},instance:{hasRun:0,installed:0,version:null,mimeType:"application/x-vlc-plugin",HTML:0,isDisabled:function(){var q=this,p=1;if(q.hasRun){}else{if(j.dbug){p=0}else{if(f.nav.installed&&j.hasMimeType(q.mimeType)){p=0}}}return p},query:function(){var p=this,s=j.DOM.altHTML,r=null,u=0,q=p.isDisabled();p.hasRun=1;if(q){return p}p.HTML=j.DOM.insert("object",["type",p.mimeType],["autoplay","no","loop","no","volume","0"],s,f);u=p.HTML.obj();if(u){try{if(!r){r=j.getNum(u.VersionInfo)}}catch(t){}try{if(!r){r=j.getNum(u.versionInfo())}}catch(t){}}if(r){p.version=r;p.installed=1}return p}},axo:{hasRun:0,installed:0,version:null,progID:"VideoLAN.VLCPlugin",query:function(){var q=this,s,p,r=q.hasRun;q.hasRun=1;if(r){return q}s=j.getAXO(q.progID);if(s){q.installed=1;p=j.getNum(j.pd.getPROP(s,"VersionInfo"),"[\\d][\\d\\.]*[a-z]*");if(p){q.version=p}}return q}},codebase:{classID:"clsid:9BE31822-FDAD-461B-AD51-BE1D1C159921",isMin:function(p){this.$$=f;return j.codebase.isMin(this,p)},search:function(){this.$$=f;return j.codebase.search(this)},DIGITMAX:[[11,11,16]],DIGITMIN:[0,0,0,0],Upper:["999"],Lower:["0"],convert:[1]}};j.addPlugin("vlc",f);var c={OTF:null,setPluginStatus:function(){var p=this,B=p.OTF,v=p.nav.detected,x=p.nav.version,z=p.nav.precision,C=z,u=x,s=v>0;var H=p.axo.detected,r=p.axo.version,w=p.axo.precision,D=p.doc.detected,G=p.doc.version,t=p.doc.precision,E=p.doc2.detected,F=p.doc2.version,y=p.doc2.precision;u=F||u||r||G;C=y||C||w||t;s=E>0||s||H>0||D>0;u=u||null;p.version=j.formatNum(u);p.precision=C;var q=-1;if(B==3){q=p.version?0.5:-0.5}else{if(u){q=1}else{if(s){q=0}else{if(H==-0.5||D==-0.5){q=-0.15}else{if(j.browser.isIE&&(!j.browser.ActiveXEnabled||j.browser.ActiveXFilteringEnabled)){q=-1.5}}}}}p.installed=q;if(p.getVersionDone!=1){var A=1;if((p.verify&&p.verify.isEnabled())||p.installed==0.5||p.installed==-0.5){A=0}else{if(p.doc2.isDisabled()==1){A=0}}p.getVersionDone=A}},getVersion:function(s,r){var p=this,q=0,t=p.verify;if(p.getVersionDone===null){p.OTF=0;if(t){t.init()}}j.file.save(p,".pdf",r);if(p.getVersionDone===0){p.doc2.insertHTMLQuery();p.setPluginStatus();return}if((!q||j.dbug)&&p.nav.query().version){q=1}if((!q||j.dbug)&&p.axo.query().version){q=1}if((!q||j.dbug)&&p.doc.query().version){q=1}if(1){p.doc2.insertHTMLQuery()}p.setPluginStatus()},getPrecision:function(v,u,t){if(j.isString(v)){u=u||"";t=t||"";var q,s="\\d+",r="[\\.]",p=[s,s,s,s];for(q=4;q>0;q--){if((new RegExp(u+p.slice(0,q).join(r)+t)).test(v)){return q}}}return 0},nav:{detected:0,version:null,precision:0,mimeType:["application/pdf","application/vnd.adobe.pdfxml"],find:"Adobe.*PDF.*Plug-?in|Adobe.*Acrobat.*Plug-?in|Adobe.*Reader.*Plug-?in",plugins:["Adobe Acrobat","Adobe Acrobat and Reader Plug-in","Adobe Reader Plugin"],query:function(){var r=this,q,p=null;if(r.detected||!j.hasMimeType(r.mimeType)){return r}q=j.pd.findNavPlugin({find:r.find,mimes:r.mimeType,plugins:r.plugins});r.detected=q?1:-1;if(q){p=j.getNum(q.description)||j.getNum(q.name);p=j.getPluginFileVersion(q,p);if(!p){p=r.attempt3()}if(p){r.version=p;r.precision=c.getPrecision(p)}}return r},attempt3:function(){var p=null;if(j.OS==1){if(j.hasMimeType("application/vnd.adobe.pdfxml")){p="9"}else{if(j.hasMimeType("application/vnd.adobe.x-mars")){p="8"}else{if(j.hasMimeType("application/vnd.adobe.xfdf")){p="6"}}}}return p}},activexQuery:function(w){var u="",t,q,s,r,p={precision:0,version:null};try{if(w){u=w.GetVersions()+"";}}catch(v){}if(u&&j.isString(u)){t=/\=\s*[\d\.]+/g;r=u.match(t);if(r){for(q=0;q<r.length;q++){s=j.formatNum(j.getNum(r[q]));if(s&&(!p.version||j.compareNums(s,p.version)>0)){p.version=s}}p.precision=c.getPrecision(u,"\\=\\s*")}}return p},axo:{detected:0,version:null,precision:0,progID:["AcroPDF.PDF","AcroPDF.PDF.1","PDF.PdfCtrl","PDF.PdfCtrl.5","PDF.PdfCtrl.1"],progID_dummy:"AcroDUMMY.DUMMY",query:function(){var t=this,q=c,u,v,s,r,p,w;if(t.detected){return t}t.detected=-1;v=j.getAXO(t.progID_dummy);if(!v){w=j.errObj}for(p=0;p<t.progID.length;p++){v=j.getAXO(t.progID[p]);if(v){t.detected=1;u=q.activexQuery(v);s=u.version;r=u.precision;if(!j.dbug&&s){break}}else{if(w&&j.errObj&&w!==j.errObj&&w.message!==j.errObj.message){t.detected=-0.5}}}if(s){t.version=s}if(r){t.precision=r}return t}},doc:{detected:0,version:null,precision:0,classID:"clsid:CA8A9780-280D-11CF-A24D-444553540000",classID_dummy:"clsid:CA8A9780-280D-11CF-A24D-BA9876543210",DummySpanTagHTML:0,HTML:0,DummyObjTagHTML1:0,DummyObjTagHTML2:0,isDisabled:function(){var q=this,p=0;if(q.HTML){p=1}else{if(j.dbug){}else{if(!j.DOM.isEnabled.objectTagUsingActiveX()){p=1}}}return p},query:function(){var y=this,v=c,p=j.DOM.altHTML,r=1,s,x,w,t,u=1,q;if(y.isDisabled()){return y}s=j.DOM.iframe.insert(99,"Adobe Reader");y.DummySpanTagHTML=j.DOM.insert("",[],[],p,v,u,s);y.HTML=j.DOM.insert("object",["classid",y.classID],[],p,v,u,s);y.DummyObjTagHTML2=j.DOM.insert("object",["classid",y.classID_dummy],[],p,v,u,s);j.DOM.iframe.close(s);q=j.DOM.getTagStatus(y.HTML,y.DummySpanTagHTML,y.DummyObjTagHTML1,y.DummyObjTagHTML2,0,0,r);x=v.activexQuery(y.HTML.obj());w=x.version;t=x.precision;y.detected=q>0||w?1:(q==-0.1||q==-0.5?-0.5:-1);if(w){y.version=w}if(t){y.precision=t}return y}},doc2:{detected:0,version:null,precision:0,classID:"clsid:CA8A9780-280D-11CF-A24D-444553540000",mimeType:"application/pdf",HTML:0,count:0,count2:0,time2:0,intervalLength:25,maxCount:350,isDisabled:function(){var r=this,v=c,u=v.axo,p=v.nav,x=v.doc,w,t,q=0,s;if(r.HTML){q=2}else{if(j.dbug){}else{if(!j.DOM.isEnabled.objectTagUsingActiveX()){q=2}else{w=(p?p.version:0)||(u?u.version:0)||(x?x.version:0)||0;t=(p?p.precision:0)||(u?u.precision:0)||(x?x.precision:0)||0;if(!w||!t||t>2||j.compareNums(j.formatNum(w),j.formatNum("11"))<0){q=2}}}}if(q<2){s=j.file.getValid(v);if(!s||!s.full){q=1}}return q},handlerSet:0,onMessage:function(){var p=this;return function(q){if(p.version){return}p.detected=1;if(j.isArray(q)){q=q[0]}q=j.getNum(q+"");if(q){if((/^(\d+)[.,_]?$/).test(q)){q=RegExp.$1+",0,0,0";p.precision=3}else{if((/^(\d+)[.,_](\d)(\d\d)$/).test(q)||(/^(\d+)[.,_](\d\d\d)(\d\d\d\d\d)$/).test(q)){q=RegExp.$1+","+RegExp.$2+","+RegExp.$3+",0";p.precision=3}else{if((/^(\d+)[.,_](\d\d\d)(\d\d\d\d\d)(\d+)$/).test(q)){q=RegExp.$1+","+RegExp.$2+","+RegExp.$3+","+RegExp.$4;p.precision=4}else{if((/^(\d+)[.,_](\d)(\d)$/).test(q)){q=RegExp.$1+","+RegExp.$2+","+RegExp.$3+",0";p.precision=3}else{if((/^(\d+)[.,_](\d)$/).test(q)){q=RegExp.$1+","+RegExp.$2+",0,0";p.precision=3}}}}}p.version=j.formatNum(q);c.setPluginStatus()}}},isDefinedMsgHandler:function(q,r){try{return q?q.messageHandler!==r:0}catch(p){}return 1},queryObject:function(){var r=this,s=r.HTML,q=s?s.obj():0;if(!q){return}if(!r.handlerSet&&r.isDefinedMsgHandler(q)){try{q.messageHandler={onMessage:r.onMessage()}}catch(p){}r.handlerSet=1;r.count2=r.count;r.time2=(new Date()).getTime()}if(!r.detected){if(r.count>3&&!r.handlerSet){r.detected=-1}else{if(r.time2&&r.count-r.count2>=r.maxCount&&(new Date()).getTime()-r.time2>=r.intervalLength*r.maxCount){r.detected=-0.5}}}if(r.detected){if(r.detected!=-1){}}},insertHTMLQuery:function(){var u=this,p=c,r=j.DOM.altHTML,q,s,t=0;if(u.isDisabled()){return u}if(p.OTF<2){p.OTF=2}q=j.file.getValid(p).full;s=j.DOM.iframe.insert(0,"Adobe Reader");j.DOM.iframe.write(s,'<script type="text/javascript"><\/script>');u.HTML=j.DOM.insert("object",["data",q].concat(j.browser.isIE?["classid",u.classID]:["type",u.mimeType]),["src",q],r,p,t,s);j.DOM.iframe.addHandler(s,u.onIntervalQuery);if(p.OTF<3&&u.HTML){p.OTF=3;}j.DOM.iframe.close(s);return u},onIntervalQuery:function(){var p=c,q=p.doc2;q.count++;if(p.OTF==3){q.queryObject();if(q.detected){q.queryCompleted()}}if(p.OTF==3){j.ev.setTimeout(q.onIntervalQuery,q.intervalLength)}},queryCompleted:function(){var q=this,p=c;if(p.OTF==4){return}p.OTF=4;p.setPluginStatus();j.ev.callArray(p.DoneHndlrs);},z:0},getInfo:function(){var q=this;q.setPluginStatus();var p={OTF:(q.OTF<3?0:(q.OTF==3?1:2)),DummyPDFused:false,version:q.version,precision:q.precision};if(q.doc2.detected==1||q.doc2.detected==-0.5){p.DummyPDFused=true}return p}};j.addPlugin("adobereader",c);var l={OTF:null,detectIE3P:0,setPluginStatus:function(){var p=this,q=p.OTF,u=p.doc.result,t=p.mime.result,s=u>0||t>0;var r=p.axo.result;s=s||r>0;p.version=null;if(q==3){p.installed=-0.5}else{s=s?0:-1;if(s==-1){s=r==-0.5||u==-0.5?-0.15:(j.browser.isIE&&(!j.browser.ActiveXEnabled||j.browser.ActiveXFilteringEnabled||!p.detectIE3P)?-1.5:-1)}p.installed=s}if(p.verify&&p.verify.isEnabled()){p.getVersionDone=0}else{if(p.getVersionDone!=1){p.getVersionDone=(p.installed==-0.5||(p.installed==-1&&p.doc.isDisabled1()<2&&p.doc.isDisabled2()<2))?0:1}}},getVersion:function(s,r,t){var p=this,q=false,v=p.doc,u=p.verify;if(j.isDefined(t)){p.detectIE3P=t?1:0}if(p.getVersionDone===null){p.OTF=0;if(u){u.init()}}j.file.save(p,".pdf",r);if(p.getVersionDone===0){if(u&&u.isEnabled()&&j.isNum(p.installed)&&p.installed>=0){return}if(v.insertHTMLQuery()>0){q=true}p.setPluginStatus();return}if((!q||j.dbug)&&p.mime.query()>0){q=true}if((!q||j.dbug)&&p.axo.query()>0){q=true}if((!q||j.dbug)&&v.insertHTMLQuery()>0){q=true}p.setPluginStatus()},mime:{mimeType:"application/pdf",result:0,query:function(){var p=this;if(!p.result){p.result=j.hasMimeType(p.mimeType)?1:-1;}return p.result}},axo:{result:0,progID:["AcroPDF.PDF","AcroPDF.PDF.1","PDF.PdfCtrl","PDF.PdfCtrl.5","PDF.PdfCtrl.1"],progID_dummy:"AcroDUMMY.DUMMY",prodID3rd:["NitroPDF.IE.ActiveDoc","PDFXCviewIEPlugin.CoPDFXCviewIEPlugin","PDFXCviewIEPlugin.CoPDFXCviewIEPlugin.1","FoxitReader.FoxitReaderCtl","FoxitReader.FoxitReaderCtl.1","FOXITREADEROCX.FoxitReaderOCXCtrl","FOXITREADEROCX.FoxitReaderOCXCtrl.1"],query:function(){var r=this,q=l,p,s;if(!r.result){r.result=-1;if(!j.getAXO(r.progID_dummy)){s=j.errObj}for(p=0;p<r.progID.length;p++){if(j.getAXO(r.progID[p])){r.result=1;if(!j.dbug){break}}else{if(s&&j.errObj&&s!==j.errObj&&s.message!==j.errObj.message){r.result=-0.5}}}if((r.result<-0.5&&q.detectIE3P)||j.dbug){for(p=0;p<r.prodID3rd.length;p++){if(j.getAXO(r.prodID3rd[p])){r.result=1;if(!j.dbug){break}}}}}return r.result}},doc:{result:-1,result1:-1,result2:-1,classID:"clsid:CA8A9780-280D-11CF-A24D-444553540000",classID_dummy:"clsid:CA8A9780-280D-11CF-A24D-BA9876543210",mimeType:"application/pdf",mimeType_dummy:"application/dummymimepdf",DummySpanTagHTML:0,HTML1:0,HTML2:0,DummyObjTagHTML1:0,insertHTMLQuery:function(){var p=this;p.insertHTMLQuery1();p.insertHTMLQuery2();return p.queryObject()},queryObject:function(s){var t=this,r=t.queryObject1(s),q=t.queryObject2(s),p=r>0||q<0?r:(r<-0.5||q>0?q:(r==-0.1?r:0));if(j.dbug){p=r==-0.1?r:(!r||!q?0:p)}t.result=p;return p},avoidBrowser:function(){var p=j.browser;if((p.isGecko&&j.compareNums(p.verGecko,j.formatNum("10"))<=0&&j.OS<=4)||(p.isOpera&&j.compareNums(p.verOpera,j.formatNum("11"))<=0&&j.OS<=4)||(p.isChrome&&j.compareNums(p.verChrome,j.formatNum("10"))<0&&j.OS<=4)){return 1}return 0},hasDummyPDF:function(){var p=j.file.getValid(l);if(!p||!p.full){return 0}return 1},isDisabled1:function(){var q=this,p=0;if(q.HTML1||!j.DOM.isEnabled.objectTag()){p=2}else{if(j.dbug||j.hasMimeType(q.mimeType)){}else{if(q.avoidBrowser()){p=2}}}if(p<2&&!q.hasDummyPDF()){p=1}return p},isDisabled2:function(){var r=this,q=0,p=j.browser;if(r.HTML2){q=2}else{if(j.dbug){}else{if(p.isIE){q=2}}}if(q<2&&!r.hasDummyPDF()){q=1}return q},insertHTMLQuery1:function(){var u=this,p=l,r,s,t=1,q=j.DOM.altHTML;if(u.isDisabled1()){return u.result1}u.result1=0;if(p.OTF<2){p.OTF=2}r=j.file.getValid(p).full;s=j.DOM.iframe.insert(99,"PDFReader");u.DummySpanTagHTML=j.DOM.insert("",[],[],q,p,t,s);u.HTML1=j.DOM.insert("object",(j.browser.isIE&&!p.detectIE3P?["classid",u.classID]:["type",u.mimeType]).concat(["data",r]),["src",r],q,p,t,s);u.DummyObjTagHTML1=j.DOM.insert("object",(j.browser.isIE&&!p.detectIE3P?["classid",u.classID_dummy]:["type",u.mimeType_dummy]),[],q,p,t,s);j.DOM.iframe.close(s);u.queryObject1();if(j.browser.isIE&&u.result===0){u.HTML1.span().innerHTML=u.HTML1.outerHTML;u.DummyObjTagHTML1.span().innerHTML=u.DummyObjTagHTML1.outerHTML}p.NOTF.init()},insertHTMLQuery2:function(){var t=this,p=l,q=j.DOM.altHTML,s=1,r;if(t.isDisabled2()){return t.result2}t.result2=0;if(p.OTF<2){p.OTF=2}r=j.DOM.iframe.insert(99,"PDFReader2");t.HTML2=j.DOM.insert("img",["alt",q,"src",j.file.getValid(p).full],[],q,p,s,r);j.ev.addEvent(t.HTML2.obj(),"load",j.ev.handler(t.onImgLoaded,t));j.DOM.iframe.close(r);p.NOTF.init()},onImgLoaded:function(p){p.imgLoaded=1},queryObject1:function(r){var t=this,p=l,q=0,s=1;q=j.DOM.getTagStatus(t.HTML1,t.DummySpanTagHTML,t.DummyObjTagHTML1,0,null,null,s);t.result1=q;return q},queryObject2:function(r){var s=this,p=l,q;if(s.HTML2.loaded){s.result2=s.imgLoaded?1:-1}q=s.result2;return q}},NOTF:{count:0,intervalLength:250,init:function(){var r=this,p=l,q=p.doc;if(p.OTF<3&&(q.HTML1||q.HTML2)){p.OTF=3;j.ev.setTimeout(r.onIntervalQuery,r.intervalLength);}},onIntervalQuery:function(){var q=l.doc,r=l.NOTF,p;r.count++;if(l.OTF==3){p=q.queryObject(r.count);if(p>0||p<-0.1){r.queryCompleted()}}if(l.OTF==3){j.ev.setTimeout(r.onIntervalQuery,r.intervalLength)}},queryCompleted:function(){var q=this,p=l;if(p.OTF==4){return}p.OTF=4;p.setPluginStatus();j.ev.callArray(p.DoneHndlrs);}},getInfo:function(){var q=this,p={OTF:(q.OTF<3?0:(q.OTF==3?1:2)),DummyPDFused:(q.doc.result>0?true:false)};return p}};j.addPlugin("pdfreader",l);var n={mimeType:["audio/x-pn-realaudio-plugin","audio/x-pn-realaudio"],classID:"clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA",setPluginStatus:function(r,p){var s=this,q;if(p){s.version=j.formatNum(j.getNum(p))}s.installed=s.version?1:(r?0:-1);q=s.installed==-1||s.instance.version;q=q||s.axo.version;s.getVersionDone=q?1:0;},navObj:{hasRun:0,installed:null,version:null,find:"RealPlayer.*Plug-?in",avoid:"Totem|QuickTime|Helix|VLC|Download",plugins:["RealPlayer(tm) G2 LiveConnect-Enabled Plug-In (32-bit) ","RealPlayer(tm) G2 LiveConnect-Enabled Plug-In (64-bit) ","RealPlayer Plugin"],query:function(){var q=this,s=n,r,p=!q.hasRun&&j.hasMimeType(s.mimeType);q.hasRun=1;if(p){r=j.pd.findNavPlugin({find:q.find,avoid:q.avoid,mimes:s.mimeType,plugins:q.plugins});q.installed=r?1:0;r=j.getPluginFileVersion(r);if(r&&j.compareNums(j.formatNum(r),j.formatNum("15"))>=0){q.version=r}}return q}},JS:{hasRun:0,version:null,regStr:"RealPlayer.*Version.*Plug-?in",mimetype:"application/vnd.rn-realplayer-javascript",q1:[[11,0,0],[999],[663],[663],[663],[660],[468],[468],[468],[468],[468],[468],[431],[431],[431],[372],[180],[180],[172],[172],[167],[114],[0]],q3:[[6,0],[12,99],[12,69],[12,69],[12,69],[12,69],[12,69],[12,69],[12,69],[12,69],[12,69],[12,69],[12,46],[12,46],[12,46],[11,3006],[11,2806],[11,2806],[11,2804],[11,2804],[11,2799],[11,2749],[11,2700]],compare:function(t,s){var r,q=t.length,v=s.length,p,u;for(r=0;r<Math.max(q,v);r++){p=r<q?t[r]:0;u=r<v?s[r]:0;if(p>u){return 1}if(p<u){return -1}}return 0},convertNum:function(t,q,w){var v=this,u,s,p,r=null;if(!t||!(u=j.formatNum(t))){return r}u=u.split(j.splitNumRegx);for(p=0;p<u.length;p++){u[p]=parseInt(u[p],10)}if(v.compare(u.slice(0,Math.min(q[0].length,u.length)),q[0])!==0){return r}s=u.length>q[0].length?u.slice(q[0].length):[];if(v.compare(s,q[1])>0||v.compare(s,q[q.length-1])<0){return r}for(p=q.length-1;p>=1;p--){if(p==1){break}if(v.compare(q[p],s)===0&&v.compare(q[p],q[p-1])===0){break}if(v.compare(s,q[p])>=0&&v.compare(s,q[p-1])<0){break}}return w[0].join(".")+"."+w[p].join(".")},isEnabled:function(){var p=this;return !p.hasRun&&j.OS==1&&j.hasMimeType(p.mimetype)?1:0},query:function(){var u=this,t,r,s,p=u.isEnabled();u.hasRun=1;if(p){r=j.pd.findNavPlugin({find:u.regStr,mimes:u.mimetype});if(r){t=j.formatNum(j.getNum(r.description))}if(t){var q=t.split(j.splitNumRegx);s=1;if(u.compare(q,[6,0,12,200])<0){s=-1}else{if(u.compare(q,[6,0,12,1739])<=0&&u.compare(q,[6,0,12,857])>=0){s=-1}}if(s<0){r=u.convertNum(t,u.q3,u.q1);u.version=r?r:t}}}return u}},instance:{hasRun:0,version:null,HTML:null,isEnabled:function(){var q=this,r=n,p=1;if(!j.DOM.isEnabled.objectTag()){p=0}else{if(j.dbug){}else{if(q.hasRun||j.DOM.isEnabled.objectTagUsingActiveX()||!j.hasMimeType(r.mimeType)||(j.browser.isGecko&&j.compareNums(j.browser.verGecko,j.formatNum("1,8"))<0)||(j.browser.isOpera&&j.compareNums(j.browser.verOpera,j.formatNum("10"))<0)){p=0}}}return p},query:function(){var p=this,t=n,s,q=p.isEnabled();p.hasRun=1;if(q){p.HTML=j.DOM.insert("object",["type",t.mimeType[0]],["src","","autostart","false","imagestatus","false","controls","stopbutton"],"",t);s=p.HTML.obj();try{p.version=j.getNum(s.GetVersionInfo())}catch(r){}j.DOM.setStyle(s,["display","none"]);}return p}},axo:{hasRun:0,installed:null,version:null,progID:["rmocx.RealPlayer G2 Control","rmocx.RealPlayer G2 Control.1","RealPlayer.RealPlayer(tm) ActiveX Control (32-bit)","RealVideo.RealVideo(tm) ActiveX Control (32-bit)","RealPlayer"],query:function(){var r=this,t,p,q;if(!r.hasRun){r.hasRun=1;for(p=0;p<r.progID.length;p++){t=j.getAXO(r.progID[p]);if(t){r.installed=1;q=0;try{q=t.GetVersionInfo()+""}catch(s){}if(q){r.version=q;if(!j.dbug){break}}}}}return r}},getVersion:function(s,q){var t=this,p=null,r=0;if((!r||j.dbug)&&t.axo.query().installed){r=1}if((!p||j.dbug)&&t.axo.query().version){p=t.axo.version}if((!r||j.dbug)&&t.navObj.query().installed){r=1}if((!p||j.dbug)&&t.navObj.query().version){p=t.navObj.version}if((!p||j.dbug)&&t.JS.query().version){r=1;p=t.JS.version}if(((!r&&!p)||q||j.dbug)&&t.instance.query().version){r=1;p=t.instance.version}t.setPluginStatus(r,p)}};j.addPlugin("realplayer",n);var g={setPluginStatus:function(r,q,s){var p=this;p.version=j.formatNum(q);p.installed=q?1:(r?0:(s?-3:-1))},getVersion:function(t,r){var q=this,s=null,p=null;q.getVersionDone=0;if(r&&j.isString(r)&&(/[^\s]+/).test(r)){r=r.replace(/\s/g,"")}else{q.setPluginStatus(0,0,1);return}if(!q.obj){q.obj=document.createElement("div");try{q.obj.style.behavior="url(#default#clientcaps)"}catch(u){}}try{p=q.obj.getComponentVersion(r,"componentid").replace(/,/g,".")}catch(u){}try{if(!p){s=q.obj.isComponentInstalled(r,"componentid")?1:0}}catch(u){}q.setPluginStatus(s,p)}};j.addPlugin("iecomponent",g);var d={storage:{},codebase:{isMin:function(p){this.$$=d;return j.codebase.isMin(this,p)},search:function(){this.$$=d;return j.codebase.search(this)},classID:"",DIGITMAX:[[100,100,100,0]],DIGITMIN:[0,0,0,0],Upper:["99999"],Lower:["0"],convert:[1]},clone:function(u,r){var v=this,q,p,s=0,t=20;if(j.isNum(u)||j.isString(u)||u===null||j.isFunc(u)||u===j||u===j.Plugins||u===v){return u}else{if(u.window||u.firstChild||u.appendChild){return u}else{if(j.isArray(u)){p=[]}else{if(u){p={}}}}}for(q in u){if(j.hasOwn(u,q)){s++;p[q]=v.clone(u[q],q)}}return p},setPluginStatus:function(s,p,q){var r=this;r.getVersionDone=0;r.version=j.formatNum(p);r.installed=p?1:(s?(s>0?0.7:-0.1):(q?-3:-1))},getVersion:function(t,u,y){var z=this,q=null,v=null,w,s,r,p="";if(j.codebase.isDisabled()){z.setPluginStatus(0,0);return}if(u&&j.isString(u)&&(/[^\s]+/).test(u)){u=u.replace(/\s/g,"");p=u.replace(/[\:\-\/]/g,"$")}else{z.setPluginStatus(0,0,1);return}if(j.isArray(y)){if(!y.length){y.push(0)}for(w=0;w<y.length;w++){if(!j.isDefined(y[w])){y[w]=0}if(!j.isNum(y[w])||y[w]<0||y[w]>99999999){z.setPluginStatus(0,0,1);return}}if(p&&z.storage[p]){s=z.storage[p].codebase;r=0;for(w=0;w<Math.max(y.length,s.DIGITMAX[0].length);w++){if((w<y.length?y[w]:0)>(w<s.DIGITMAX[0].length?s.DIGITMAX[0][w]:0)){r=1;break}}if(r&&s.version){r=s.version.split(j.splitNumRegx);for(w=0;w<Math.max(r.length,s.DIGITMAX[0].length);w++){if((w<r.length?r[w]:0)===(w<s.DIGITMAX[0].length?s.DIGITMAX[0][w]:0)){z.storage[p]=null;break}}}}}else{y=[0]}if(p&&!z.storage[p]){z.storage[p]={codebase:z.clone(z.codebase)};z.storage[p].codebase.classID=u;if(j.isArray(y)&&y.length){z.storage[p].codebase.DIGITMAX=[[].concat(y)]}}if(t){q=z.storage[p].codebase.isMin(t);v=z.storage[p].codebase.version}else{q=0;v=z.storage[p].codebase.search()}z.setPluginStatus(q,v)}};j.addPlugin("activex",d);var b={OTF:null,setPluginStatus:function(){var q=this,r=q.doc.result,p=q.OTF;q.version=null;if(p==3){q.installed=-0.5}else{q.installed=r>0?0:-1}if(q.verify&&q.verify.isEnabled()){q.getVersionDone=0}else{if(q.getVersionDone!=1){q.getVersionDone=(q.installed==-0.5||(q.installed==-1&&q.doc.isDisabled()<2))?0:1}}},getVersion:function(r,q){var s=this,p=false,u=s.verify,t=s.doc;if(s.getVersionDone===null){s.OTF=0;if(u){u.init()}}j.file.save(s,".pdf",q);if(s.getVersionDone===0){if(u&&u.isEnabled()&&j.isNum(s.installed)&&s.installed>=0){return}}if((!p||j.dbug)&&t.insertHTMLQuery()>0){p=true}s.setPluginStatus()},doc:{result:0,mimeType:"application/pdf",mimeType_dummy:"application/dummymimepdf",DummySpanTagHTML:0,HTML:0,DummyObjTagHTML1:0,isDisabled:function(){var t=this,s=b,r=0,p=j.browser,q;if(s.OTF>=2||!j.DOM.isEnabled.objectTag()||j.DOM.isEnabled.objectTagUsingActiveX()){r=2}else{if(j.dbug){}else{if(!p.isGecko||j.compareNums(p.verGecko,j.formatNum("10"))<0||(j.compareNums(p.verGecko,j.formatNum("19"))<0&&j.hasMimeType(t.mimeType))){r=2}}}if(r<2){q=j.file.getValid(s);if(!q||!q.full){r=1}}return r},tabIndex:null,method:"",queryObject:function(r){var u=this,t=u.HTML?u.HTML.obj():0,v,q,p=j.dbug&&(u.HTML&&!u.HTML.loaded)?0:1;v=j.DOM.getTagStatus(u.HTML,u.DummySpanTagHTML,u.DummyObjTagHTML1,0);if((!u.result||j.dbug)&&v<-0.1){if(p){u.result=-1}u.method+="1,";}if((!u.result||j.dbug)&&v>0&&!j.hasMimeType(u.mimeType)){if(p){u.result=1}u.method+="2,";}try{q=t?t.tabIndex:null}catch(s){}if(!j.isNum(u.tabIndex)&&j.isNum(q)){u.tabIndex=q}if((!u.result||j.dbug)&&v>0){if(j.isNum(q)&&j.isNum(u.tabIndex)&&u.tabIndex!==q){if(p){u.result=1}u.method+="4,";}else{if(p){u.result=-1}u.method+="5,";}}return u.result},insertHTMLQuery:function(){var u=this,s=b,q,r,t=1,p=j.DOM.altHTML;if(u.isDisabled()){return u.result}if(s.OTF<2){s.OTF=2}q=j.file.getValid(s).full;r=j.DOM.iframe.insert(99,"PDFjs");u.DummySpanTagHTML=j.DOM.insert("",[],[],p,s,t,r);u.HTML=j.DOM.insert("object",["type",u.mimeType,"data",q],["src",q],p,s,t,r);u.DummyObjTagHTML1=j.DOM.insert("object",["type",u.mimeType_dummy],[],p,s,t,r);j.DOM.iframe.close(r);u.queryObject();if(u.result&&!j.dbug){return u.result}s.NOTF.init();return u.result}},NOTF:{count:0,intervalLength:250,init:function(){var r=this,p=b,q=p.doc;if(p.OTF<3&&q.HTML){p.OTF=3;j.ev.setTimeout(r.onIntervalQuery,r.intervalLength);}},onIntervalQuery:function(){var p=b.doc,q=b.NOTF;q.count++;if(b.OTF==3){p.queryObject(q.count);if(p.result){q.queryCompleted()}}if(b.OTF==3){j.ev.setTimeout(q.onIntervalQuery,q.intervalLength)}},queryCompleted:function(){var q=this,p=b;if(p.OTF==4){return}p.OTF=4;p.setPluginStatus();j.ev.callArray(p.DoneHndlrs);}}};j.addPlugin("pdfjs",b);})();

(function( drdetector, undefined ) {
  var results = document.getElementById('results');
  var detector_url = window.location.href ;
  var jar_file = '';
  var empty_pdf = '';
//    results.textContent = '';
  var fingerprints = {'plugins':{}};
  var sep = ';';
  var write_string = function(str) {

  }
  PluginDetect.getVersion(".");
  var getStatusMsg = function(res) {
      switch (res) {
          case 1:
          case 0:
          case -0.1:
              return ' installed and enabled';
          case -0.2:
              return ' installed but disabled';
          case -1:
              return ' not installed or disabled';
          case -3:
              return ' invalid argument';
          default:
              return ' unknown result';
      }
  }
  var getStatusObj = function(ver_string, res, save_obj) {
      if (! ver_string) {
          return save_obj;
      }

      save_obj['version'] = ver_string;

      switch (res) {
          case 1:
          case 0:
          case -0.1:
              save_obj['installed'] = 1;
              save_obj['enabled'] = 1;
              break;
          case -0.2:
              save_obj['installed'] = 1;
              break;
          case -1:
              break;
          default:
              console.log('unknown result '+res);
      }
      return save_obj;
  }
  var saveDetectedInfo = function(save_obj) {
      if (save_obj['installed'] == 0 && save_obj['enabled'] == 0) {
          return;
      }

      if (window.XMLHttpRequest) {
          xr = new XMLHttpRequest();
      } else {
          xr = new ActiveXObject("Microsoft.XMLHTTP");
      }

      xr.onreadystatechange = function() {
          if (xr.readyState == 4 && xr.status == 200) {
              //console.log('Saved detection');
          };
      }
      var post_str = 'key='+encodeURIComponent('1587863201.846683');
          post_str += '&canarytoken='+encodeURIComponent('03qn5y8y262g4i5629hgwmtel');
      for (var p in save_obj) {
          post_str+='&'+encodeURIComponent(p)+'='+encodeURIComponent(save_obj[p]);
      }
      xr.open("POST",detector_url,true);
      xr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
      xr.send(post_str);
  }

  var simpleDetect = function(pluginName) {
      var ver_string = PluginDetect.getVersion(pluginName, ".");
      var save_string = pluginName + ': ';
      var save_obj = {'name': pluginName, 'version': '', 'enabled': 0, 'installed': 0}
      if (ver_string) {
          var res = PluginDetect.isMinVersion(pluginName, ver_string);
          save_string += 'version '+ver_string+sep+ getStatusMsg(res);
          getStatusObj(ver_string, res, save_obj)
      } else {
          save_string += 'not installed';
      }
      write_string(save_string);
      saveDetectedInfo(save_obj);
      fingerprints[pluginName] = save_string;
  }

  var detectAdobeReader = function() {
      simpleDetect('AdobeReader');
  }

  var detectJS = function() {
      var save_obj = {'name': 'Javascript', 'version': '', 'enabled': 1, 'installed': 1};
      saveDetectedInfo(save_obj);
  }

  var extract_browser_version = function(browser) {
      try {
          var token_start = navigator.userAgent.indexOf(browser);
          var token_end = navigator.userAgent.indexOf(' ', token_start+1);
          if (token_end == -1) {
              token_end = navigator.userAgent.length;
          }
          var browser_token = navigator.userAgent.substring(token_start, token_end);
          return browser_token.split('/')[1];
      } catch (e) { return ''; }
  }

  var detectBrowser = function() {
      var save_obj = {'name': 'Browser', 'enabled': 1, 'installed': 1, 'browser': '', 'version': '', 'mimetypes': ''};

      var props = ['language', 'platform','vendor', 'userLanguage', 'browserLanguage', 'systemLanguage'];

      for (var i = 0; i < props.length; i++) {
          try {
              if (eval('navigator.'+props[i])) {
                  save_obj[props[i]] = eval('navigator.'+props[i]);
              }
          } catch (e) {};
      }

      switch (PluginDetect.OS) {
          case 1: save_obj['os'] = 'Windows';break;
          case 2: save_obj['os'] = 'Macintosh';break;
          case 3: save_obj['os'] = 'Linux';break;
          case 21.1: save_obj['os'] = 'iPhone';break;
          case 21.2: save_obj['os'] = 'iPod';break;
          case 21.3: save_obj['os'] = 'iPad';break;
          default: save_obj['os'] = 'Other';break;
      }

      if (PluginDetect.browser.isEdge) {
          save_obj['browser'] = 'Edge';
          save_obj['version'] = PluginDetect.browser.verEdgeHTML+'';//force string
      } else if (PluginDetect.browser.isIE) {
          save_obj['browser'] = 'IE';
          save_obj['version'] = PluginDetect.browser.verIE+'';//force string
          try {
            save_obj['ie_version'] = PluginDetect.browser.verIEtrue.replace(/,/g,'.');
          } catch (e) {
            save_obj['ie_version'] = save_obj['version'];
          }
          save_obj['doc_mode'] = PluginDetect.browser.docModeIE+'';
      } else if (PluginDetect.browser.isGecko) {
          if (navigator.userAgent.indexOf('SeaMonkey') > -1) {
              save_obj['browser'] = 'SeaMonkey';
              save_obj['version'] = extract_browser_version('SeaMonkey');
              save_obj['gecko_version'] = PluginDetect.browser.verGecko.replace(/,/g,'.');
          } else if (navigator.userAgent.indexOf('K-Meleon') > -1) {
              save_obj['browser'] = 'K-Meleon';
              save_obj['version'] = extract_browser_version('K-Meleon');
              save_obj['gecko_version'] = PluginDetect.browser.verGecko.replace(/,/g,'.');
          } else if (navigator.userAgent.indexOf('Firefox') > -1) {
              save_obj['browser'] = 'Firefox';
              save_obj['version'] = extract_browser_version('Firefox');
              save_obj['gecko_version'] = PluginDetect.browser.verGecko.replace(/,/g,'.');
          } else {
              save_obj['browser'] = 'Gecko';
              save_obj['version'] = PluginDetect.browser.verGecko;
          }
      } else if (PluginDetect.browser.isSafari) {
          save_obj['browser'] = 'Safari';
          save_obj['version'] = PluginDetect.browser.verSafari;
      } else if (PluginDetect.browser.isChrome) {
          save_obj['browser'] = 'Chrome';
          save_obj['version'] = PluginDetect.browser.verChrome;
      } else if (PluginDetect.browser.isOpera) {
          save_obj['browser'] = 'Opera';
          save_obj['version'] = PluginDetect.browser.verOpera;
      }
      save_obj['version'] = save_obj['version'].replace(/,/g,'.');

      if (navigator.mimeTypes) {
          for (var i = 0; i < navigator.mimeTypes.length; i++) {
              var mt = navigator.mimeTypes[i];
              save_obj['mimetypes'] += mt.description+';'+mt.suffixes+';'+mt.type+'|||';
          }
      }

      saveDetectedInfo(save_obj);
  }

  var detectActiveX = function() {
      var ver_string = PluginDetect.getVersion("activex","clsid:333C7BC4-460F-11D0-BC04-0080C7055A83", [20, 99, 9999, 99999]);
      var save_string = 'ActiveX: ';
      var save_obj = {'name': 'ActiveX', 'version': '', 'enabled': 0, 'installed': 0, 'IE': 0, 'activex_filtering': 0}
      if (ver_string) {
          save_obj['installed'] = 1;

          save_string += 'control instantiated';
          if (! PluginDetect.browser.isIE) {
              save_string += ', browser not IE';
          } else {
              save_obj['IE'] = 1;
              save_string += ', browser is IE';
              if (PluginDetect.browser.ActiveXEnabled) {
                  save_obj['enabled'] = 1;
                  save_string += ', ActiveX enabled';
              } else {
                  save_string += ', ActiveX disabled';
              }
              if (PluginDetect.browser.ActiveXFilteringEnabled) {
                  save_obj['activex_filtering'] = 1;
                  save_string += ', ActiveX filtering enabled';
              } else {
                  save_string += ', ActiveX filtering disabled';
              }
          }
      } else {
          save_string += 'not installed';
      }
      write_string(save_string);
      saveDetectedInfo(save_obj);
  }

  var detectDevalVR = function() {
      simpleDetect('DevalVR');
  }

  var detectFlash = function() {
      simpleDetect('Flash');
  }

  var detectQuickTime = function() {
      simpleDetect('QuickTime');
  }

  var detectRealPlayer = function() {
      simpleDetect('RealPlayer');
  }

  var detectShockwave = function() {
      simpleDetect('Shockwave');
  }

  var detectSilverlight = function() {
      simpleDetect('Silverlight');
  }

  var detectVLC = function() {
      simpleDetect('VLC');
  }

  var detectWMP = function() {
      simpleDetect('WindowsMediaPlayer');
  }

  var detectJava = function() {
      PluginDetect.onDetectionDone('Java', function (PluginDetect) {
          var ver_string = PluginDetect.getVersion('Java');
          var save_string = 'Java: ';
          var save_obj = {'name': 'Java', 'version': '', 'enabled': 0, 'installed': 0, 'vendor': '', 'description': '', 'other_versions': ''}
          if (ver_string) {
              var res = PluginDetect.isMinVersion('Java', ver_string);
              save_string += 'version '+ver_string+sep+getStatusMsg(res);
              save_obj = getStatusObj(ver_string, res, save_obj);
              var info = PluginDetect.getInfo('Java');
              if (info.All_versions.length > 1) {
                  save_string += sep+' other versions:';
                  for (var i=0; i< info.All_versions.length; i++) {
                      if (info.All_versions[i] != ver_string) {
                          save_string += ' '+info.All_versions[i];
                          save_obj['other_versions'] += info.All_versions[i] + ' ';
                      }
                  }
              }
              if (info.vendor) {
                  save_string += sep+' vendor: '+info.vendor;
                  save_obj['vendor'] = info.vendor;
              }
              if (info.description) {
                  save_string += sep+' description: '+info.description;
                  save_obj['description'] = info.description;
              }
          } else {
              save_string += 'not installed';
          }
          write_string(save_string);
          saveDetectedInfo(save_obj);
          fingerprints['Java'] = save_string;
      }, jar_file);
  }

  var AdobePlugin = {name:"AdobeReader", status:-3, version:null, done:0, id:1},
      PDFjsPlugin = {name:"PDFjs", status:-3, version:null, done:0, id:2};

  var completePDF = function($, plugin1, plugin2) {
      if ($.getVersion) plugin1.version = $.getVersion(plugin1.name);
      if ($.isMinVersion) plugin1.status = $.isMinVersion(plugin1.name, plugin1.version);
      plugin1.done=1;

      if (!plugin2.done) return;

      var adobe_save_string = 'AdobeReader: ';
      var adobe_save_obj = {'name': 'AdobeReader', 'version': '', 'enabled': 0, 'installed': 0 , 'secondary': 0}
      var pdfjs_save_string;
      var pdfjs_save_obj = {'name': 'PDFjs', 'version': '?', 'enabled': 0, 'installed': 0 }
      var adobe = plugin1.id==1 ? plugin1 : plugin2, pdfjs = plugin1.id==2 ? plugin1 : plugin2;

      if (adobe.version) {
          if ($.browser.isIE) {
              adobe_save_string += sep+' version number rounded down by IE';
              var tokens = adobe.version.split(".");
              if (tokens.length == 4 && tokens[1]=="0" && tokens[2]=="0" && tokens[3]=="0") {
                  adobe.version = tokens[0]+'.?.?.?';
              }
          } else if (navigator.userAgent.indexOf('K-Meleon') > -1) {
          //K-Meleon drops the last version component
              var tokens = adobe.version.split(".");
              if (tokens.length == 4 && tokens[3] == '0') {
                  adobe.version = tokens[0]+'.'+tokens[1]+'.'+tokens[2]+'.?';
              }
          }
          adobe_save_string += 'version '+adobe.version;
          adobe_save_obj['version'] = adobe.version;
          switch (adobe.status) {
              case 1:
              case 0:
              case -0.1:
                  adobe_save_obj['enabled'] = 1;
                  adobe_save_obj['installed'] = 1;
                  adobe_save_string += sep+' installed and enabled';break;
                  break;
              case -0.15:
                  adobe_save_obj['installed'] = 1;
                  break;
                  adobe_save_string += sep+' installed but Adobe Reader ActiveX is disabled';break;
              case -1:
                  adobe_save_string += sep+' not installed or enabled';break;
          }
      } else {
          adobe_save_string += ' not installed';
      }

      if (pdfjs.status >= 0) {
          if (adobe.version) {
              adobe_save_string += sep+' PDFjs takes precedence';
              adobe_save_obj['secondary'] = 1;
          }
          pdfjs_save_obj['installed'] = 1;
          pdfjs_save_obj['enabled'] = 1;
          pdfjs_save_string = 'PDFjs: installed and enabled';
      }

      write_string(adobe_save_string);
      saveDetectedInfo(adobe_save_obj);
      fingerprints['Adobereader'] = adobe_save_string;

      if (pdfjs_save_string) {
          write_string(pdfjs_save_string);
          saveDetectedInfo(pdfjs_save_obj);
          fingerprints['PDFjs'] = pdfjs_save_string;
      }
  };

  var detectPDF = function() {
      PluginDetect.onDetectionDone('AdobeReader', [completePDF, AdobePlugin, PDFjsPlugin], empty_pdf);
      PluginDetect.onDetectionDone('PDFjs', [completePDF, PDFjsPlugin, AdobePlugin], empty_pdf);
  }

  // Webrtc-ips licence: https://github.com/diafygi/webrtc-ips/blob/master/LICENSE
  //get the IP addresses associated with an account
  function getIPs(callback){
      var ip_info = {'name':'ip_info', 'ips':[]};
      var ip_dups = {};

      //compatibility for firefox and chrome
      var RTCPeerConnection = window.RTCPeerConnection
          || window.mozRTCPeerConnection
          || window.webkitRTCPeerConnection;
      var useWebKit = !!window.webkitRTCPeerConnection;

      //bypass naive webrtc blocking using an iframe
      if(!RTCPeerConnection){
          //NOTE: you need to have an iframe in the page right above the script tag
          //
          //<iframe id="iframe" sandbox="allow-same-origin" style="display: none"></iframe>
          //<script>...getIPs called in here...
          //
          var win = iframe.contentWindow;
          RTCPeerConnection = win.RTCPeerConnection
              || win.mozRTCPeerConnection
              || win.webkitRTCPeerConnection;
          useWebKit = !!win.webkitRTCPeerConnection;
      }

      //minimal requirements for data connection
      var mediaConstraints = {
          optional: [{RtpDataChannels: true}]
      };

      var servers = {iceServers: [{urls: "stun:stun.services.mozilla.com"}]};

      //construct a new RTCPeerConnection
      var pc = new RTCPeerConnection(servers, mediaConstraints);

      function handleCandidate(candidate){
          //match just the IP address
          var ip_regex = /([0-9]{1,3}(\.[0-9]{1,3}){3}|[a-f0-9]{1,4}(:[a-f0-9]{1,4}){7})/
          var ip_addr = ip_regex.exec(candidate)[1];
          //remove duplicates
          if(ip_dups[ip_addr] === undefined)
              callback(ip_addr);

          ip_dups[ip_addr] = true;
      }

      //listen for candidate events
      pc.onicecandidate = function(ice){

          //skip non-candidate events
          if(ice.candidate)
              handleCandidate(ice.candidate.candidate);
      };

      //create a bogus data channel
      pc.createDataChannel("");

      //create an offer sdp
      pc.createOffer(function(result){

          //trigger the stun server request
          pc.setLocalDescription(result, function(){}, function(){});

      }, function(){});

      //wait for a while to let everything done
      setTimeout(function(){
          //read candidate info from local description
          var lines = pc.localDescription.sdp.split('\n');

          lines.forEach(function(line){
              if(line.indexOf('a=candidate:') === 0)
                  handleCandidate(line);
          });
      }, 1000);
  }

  try {
    getIPs(function(ip){
        //local IPs
        if (ip.match(/^(192\.168\.|169\.254\.|10\.|172\.(1[6-9]|2\d|3[01]))/))
            saveDetectedInfo({'name':'WebRTC Leak', 'Local IP':[ip]});
        //IPv6 addresses
        else if (ip.match(/^[a-f0-9]{1,4}(:[a-f0-9]{1,4}){7}$/))
            saveDetectedInfo({'name':'WebRTC Leak', 'IPv6':[ip]});
        //assume the rest are public IPs
        else
            saveDetectedInfo({'name':'WebRTC Leak', 'Public IP':[ip]});
    });
  }
  catch (err) {
      // webrtc not supported, fail silently
  }

  drdetector.godetect = function(){
      //detectAdobeReader();
      detectBrowser();
      detectJS();
      detectActiveX();
      detectFlash();
      detectQuickTime();
      detectShockwave();
      detectSilverlight();
      detectWMP();
      detectPDF();

      //popups
      detectDevalVR();
      detectRealPlayer();
      detectVLC();
      detectJava();

      
      
      return;
      var iecomponent_version = PluginDetect.getVersion("iecomponent", "{89820200-ECBD-11CF-8B85-00AA005B4383}");
      results.textContent += 'iecomponent_version = '+ iecomponent_version + ' ';
      var java_version = PluginDetect.getVersion("java","/getJavaInfo.jar");
      results.textContent += 'java_version = '+ java_version + ' ';
      var pdfjs_version = PluginDetect.getVersion("pdfjs", "/empty.pdf");
      results.textContent += 'pdfjs_version = '+ pdfjs_version + ' ';
      var pdfreader_version = PluginDetect.getVersion("pdfreader", "/empty.pdf");
      results.textContent += 'pdfreader_version = '+ pdfreader_version + ' ';
  }
   PluginDetect.onWindowLoaded(drdetector.godetect);
}( window.drdetector = window.drdetector || {} ));</script></body></html>
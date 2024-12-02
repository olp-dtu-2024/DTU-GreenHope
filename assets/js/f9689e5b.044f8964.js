"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[69],{4670:(n,i,e)=>{e.r(i),e.d(i,{assets:()=>r,contentTitle:()=>h,default:()=>d,frontMatter:()=>t,metadata:()=>l,toc:()=>o});const l=JSON.parse('{"id":"plugin/carousel-nocobase","title":"Carousel NocoBase Plugin","description":"\ud83c\udf1f Gi\u1edbi Thi\u1ec7u","source":"@site/docs/plugin/carousel-nocobase.md","sourceDirName":"plugin","slug":"/plugin/carousel-nocobase","permalink":"/docs/plugin/carousel-nocobase","draft":false,"unlisted":false,"editUrl":"https://github.com/olp-dtu-2024/DTU-GreenHope/docs/plugin/carousel-nocobase.md","tags":[],"version":"current","frontMatter":{},"sidebar":"tutorialSidebar","previous":{"title":"\ud83d\udcb1 Transaction service","permalink":"/docs/services/transaction-service"},"next":{"title":"Kafka NocoBase Plugin","permalink":"/docs/plugin/kafka-nocobase"}}');var c=e(4848),s=e(8453);const t={},h="Carousel NocoBase Plugin",r={},o=[{value:"\ud83c\udf1f Gi\u1edbi Thi\u1ec7u",id:"-gi\u1edbi-thi\u1ec7u",level:2},{value:"\ud83c\udfc6 B\u1ed1i C\u1ea3nh",id:"-b\u1ed1i-c\u1ea3nh",level:3},{value:"\u2728 T\xednh N\u0103ng",id:"-t\xednh-n\u0103ng",level:2},{value:"\ud83d\ude80 C\xe0i \u0110\u1eb7t",id:"-c\xe0i-\u0111\u1eb7t",level:2},{value:"\ud83d\udccb Y\xeau C\u1ea7u Ti\xean Quy\u1ebft",id:"-y\xeau-c\u1ea7u-ti\xean-quy\u1ebft",level:2},{value:"\ud83d\udc65 T\xe1c Gi\u1ea3",id:"-t\xe1c-gi\u1ea3",level:2},{value:"\ud83d\udcc4 Gi\u1ea5y Ph\xe9p",id:"-gi\u1ea5y-ph\xe9p",level:2},{value:"\ud83e\udd1d \u0110\xf3ng G\xf3p",id:"-\u0111\xf3ng-g\xf3p",level:2},{value:"\ud83c\udd98 H\u1ed7 Tr\u1ee3",id:"-h\u1ed7-tr\u1ee3",level:2},{value:"\u26a0\ufe0f L\u01b0u \xdd",id:"\ufe0f-l\u01b0u-\xfd",level:2}];function u(n){const i={code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,s.R)(),...n.components};return(0,c.jsxs)(c.Fragment,{children:[(0,c.jsx)(i.header,{children:(0,c.jsx)(i.h1,{id:"carousel-nocobase-plugin",children:"Carousel NocoBase Plugin"})}),"\n",(0,c.jsx)(i.h2,{id:"-gi\u1edbi-thi\u1ec7u",children:"\ud83c\udf1f Gi\u1edbi Thi\u1ec7u"}),"\n",(0,c.jsx)(i.p,{children:"@olp-dtu-2024/carousel-nocobase l\xe0 m\u1ed9t plugin cho n\u1ec1n t\u1ea3ng NocoBase, cung c\u1ea5p tr\u1ea3i nghi\u1ec7m hi\u1ec3n th\u1ecb h\xecnh \u1ea3nh linh ho\u1ea1t v\u1edbi Carousel d\u1ef1a tr\xean Ant Design (antd). Plugin gi\xfap ng\u01b0\u1eddi d\xf9ng d\u1ec5 d\xe0ng t\u1ea1o v\xe0 qu\u1ea3n l\xfd c\xe1c slide show m\u1ed9t c\xe1ch tr\u1ef1c quan v\xe0 nhanh ch\xf3ng."}),"\n",(0,c.jsx)(i.h3,{id:"-b\u1ed1i-c\u1ea3nh",children:"\ud83c\udfc6 B\u1ed1i C\u1ea3nh"}),"\n",(0,c.jsx)(i.p,{children:"Plugin \u0111\u01b0\u1ee3c ph\xe1t tri\u1ec3n nh\u01b0 m\u1ed9t ph\u1ea7n c\u1ee7a cu\u1ed9c thi M\xe3 Ngu\u1ed3n M\u1edf n\u0103m 2024."}),"\n",(0,c.jsx)(i.h2,{id:"-t\xednh-n\u0103ng",children:"\u2728 T\xednh N\u0103ng"}),"\n",(0,c.jsxs)(i.ul,{children:["\n",(0,c.jsx)(i.li,{children:"\ud83d\uddbc\ufe0f T\xedch h\u1ee3p d\u1ec5 d\xe0ng Ant Design Carousel v\u1edbi NocoBase"}),"\n",(0,c.jsx)(i.li,{children:"\ud83d\udd00 H\u1ed7 tr\u1ee3 hi\u1ec3n th\u1ecb h\xecnh \u1ea3nh t\u1eeb c\xe1c ngu\u1ed3n d\u1eef li\u1ec7u kh\xe1c nhau"}),"\n",(0,c.jsx)(i.li,{children:"\ud83d\udd27 Qu\u1ea3n l\xfd v\xe0 t\xf9y ch\u1ec9nh carousel hi\u1ec7u qu\u1ea3"}),"\n",(0,c.jsx)(i.li,{children:"\ud83d\udd17 T\u01b0\u01a1ng th\xedch v\u1edbi phi\xean b\u1ea3n NocoBase 1.x"}),"\n"]}),"\n",(0,c.jsx)(i.h2,{id:"-c\xe0i-\u0111\u1eb7t",children:"\ud83d\ude80 C\xe0i \u0110\u1eb7t"}),"\n",(0,c.jsx)(i.p,{children:"S\u1eed D\u1ee5ng npm:"}),"\n",(0,c.jsx)(i.pre,{children:(0,c.jsx)(i.code,{children:"npm install @olp-dtu-2024/carousel-nocobase\n"})}),"\n",(0,c.jsx)(i.p,{children:"S\u1eed D\u1ee5ng yarn:"}),"\n",(0,c.jsx)(i.pre,{children:(0,c.jsx)(i.code,{children:"yarn add @olp-dtu-2024/carousel-nocobase\n"})}),"\n",(0,c.jsx)(i.h2,{id:"-y\xeau-c\u1ea7u-ti\xean-quy\u1ebft",children:"\ud83d\udccb Y\xeau C\u1ea7u Ti\xean Quy\u1ebft"}),"\n",(0,c.jsxs)(i.ul,{children:["\n",(0,c.jsx)(i.li,{children:"Node.js version 18.x tr\u1edf l\xean"}),"\n",(0,c.jsx)(i.li,{children:"NocoBase version m\u1edbi nh\u1ea5t"}),"\n",(0,c.jsx)(i.li,{children:"Ant Design phi\xean b\u1ea3n 4.x tr\u1edf l\xean"}),"\n"]}),"\n",(0,c.jsx)(i.h2,{id:"-t\xe1c-gi\u1ea3",children:"\ud83d\udc65 T\xe1c Gi\u1ea3"}),"\n",(0,c.jsxs)(i.ul,{children:["\n",(0,c.jsx)(i.li,{children:"L\xea Minh Tu\u1ea5n"}),"\n",(0,c.jsx)(i.li,{children:"Tr\u1ea7n Nguy\u1ec5n Duy Kh\xe1nh"}),"\n"]}),"\n",(0,c.jsx)(i.h2,{id:"-gi\u1ea5y-ph\xe9p",children:"\ud83d\udcc4 Gi\u1ea5y Ph\xe9p"}),"\n",(0,c.jsx)(i.p,{children:"D\u1ef1 \xe1n \u0111\u01b0\u1ee3c ph\xe2n ph\u1ed1i d\u01b0\u1edbi gi\u1ea5y ph\xe9p GNU General Public License v3.0"}),"\n",(0,c.jsx)(i.h2,{id:"-\u0111\xf3ng-g\xf3p",children:"\ud83e\udd1d \u0110\xf3ng G\xf3p"}),"\n",(0,c.jsx)(i.p,{children:"Ch\xfang t\xf4i r\u1ea5t hoan ngh\xeanh c\xe1c \u0111\xf3ng g\xf3p t\u1eeb c\u1ed9ng \u0111\u1ed3ng! Vui l\xf2ng:"}),"\n",(0,c.jsxs)(i.ul,{children:["\n",(0,c.jsx)(i.li,{children:"T\u1ea1o issue \u0111\u1ec3 b\xe1o c\xe1o l\u1ed7i"}),"\n",(0,c.jsx)(i.li,{children:"G\u1eedi pull request \u0111\u1ec3 \u0111\u1ec1 xu\u1ea5t c\u1ea3i ti\u1ebfn"}),"\n",(0,c.jsx)(i.li,{children:"Truy c\u1eadp GitHub Repository c\u1ee7a ch\xfang t\xf4i \u0111\u1ec3 bi\u1ebft th\xeam chi ti\u1ebft"}),"\n"]}),"\n",(0,c.jsx)(i.h2,{id:"-h\u1ed7-tr\u1ee3",children:"\ud83c\udd98 H\u1ed7 Tr\u1ee3"}),"\n",(0,c.jsx)(i.p,{children:"N\u1ebfu g\u1eb7p b\u1ea5t k\u1ef3 v\u1ea5n \u0111\u1ec1 n\xe0o, vui l\xf2ng:"}),"\n",(0,c.jsxs)(i.ul,{children:["\n",(0,c.jsx)(i.li,{children:"M\u1edf issue t\u1ea1i GitHub repository"}),"\n",(0,c.jsx)(i.li,{children:"Li\xean h\u1ec7 tr\u1ef1c ti\u1ebfp v\u1edbi nh\xf3m ph\xe1t tri\u1ec3n"}),"\n"]}),"\n",(0,c.jsx)(i.h2,{id:"\ufe0f-l\u01b0u-\xfd",children:"\u26a0\ufe0f L\u01b0u \xdd"}),"\n",(0,c.jsxs)(i.ul,{children:["\n",(0,c.jsx)(i.li,{children:"\u0110\u1ea3m b\u1ea3o t\u01b0\u01a1ng th\xedch v\u1edbi phi\xean b\u1ea3n NocoBase hi\u1ec7n t\u1ea1i"}),"\n",(0,c.jsx)(i.li,{children:"Ki\u1ec3m tra k\u1ebft n\u1ed1i v\xe0 c\u1ea5u h\xecnh tr\u01b0\u1edbc khi s\u1eed d\u1ee5ng"}),"\n"]}),"\n",(0,c.jsx)(i.p,{children:(0,c.jsx)(i.em,{children:'"\u0110\u01b0\u1ee3c ph\xe1t tri\u1ec3n v\u1edbi \u2764\ufe0f b\u1edfi Nh\xf3m DTU-GreenHope"'})})]})}function d(n={}){const{wrapper:i}={...(0,s.R)(),...n.components};return i?(0,c.jsx)(i,{...n,children:(0,c.jsx)(u,{...n})}):u(n)}},8453:(n,i,e)=>{e.d(i,{R:()=>t,x:()=>h});var l=e(6540);const c={},s=l.createContext(c);function t(n){const i=l.useContext(s);return l.useMemo((function(){return"function"==typeof n?n(i):{...i,...n}}),[i,n])}function h(n){let i;return i=n.disableParentContext?"function"==typeof n.components?n.components(c):n.components||c:t(n.components),l.createElement(s.Provider,{value:i},n.children)}}}]);
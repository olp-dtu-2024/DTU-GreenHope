"use strict";(self.webpackChunkdocumentation=self.webpackChunkdocumentation||[]).push([[185],{6762:(n,e,i)=>{i.r(e),i.d(e,{assets:()=>d,contentTitle:()=>r,default:()=>a,frontMatter:()=>s,metadata:()=>h,toc:()=>t});const h=JSON.parse('{"id":"services/reconition-service","title":"\ud83c\udf1f Recognition Service","description":"\ud83d\udcd8 Gi\u1edbi thi\u1ec7u","source":"@site/docs/services/reconition-service.md","sourceDirName":"services","slug":"/services/reconition-service","permalink":"/docs/services/reconition-service","draft":false,"unlisted":false,"editUrl":"https://github.com/olp-dtu-2024/DTU-GreenHope/docs/services/reconition-service.md","tags":[],"version":"current","frontMatter":{},"sidebar":"tutorialSidebar","previous":{"title":"\ud83d\udcf1 LCDP service","permalink":"/docs/services/lcdp-service"},"next":{"title":"\ud83d\udd0f Solidity service","permalink":"/docs/services/solidity-service"}}');var c=i(4848),l=i(8453);const s={},r="\ud83c\udf1f Recognition Service",d={},t=[{value:"\ud83d\udcd8 Gi\u1edbi thi\u1ec7u",id:"-gi\u1edbi-thi\u1ec7u",level:2},{value:"T\xednh n\u0103ng n\u1ed5i b\u1eadt:",id:"t\xednh-n\u0103ng-n\u1ed5i-b\u1eadt",level:3},{value:"\ud83c\udfdb\ufe0f Ki\u1ebfn tr\xfac",id:"\ufe0f-ki\u1ebfn-tr\xfac",level:2},{value:"\ud83d\ude80 API Layer (<code>app/api/</code>)",id:"-api-layer-appapi",level:3},{value:"\ud83e\udde9 Core Layer (<code>app/core/</code>)",id:"-core-layer-appcore",level:3},{value:"\ud83d\udce6 Models Layer (<code>app/models/</code>)",id:"-models-layer-appmodels",level:3},{value:"\ud83d\udee0\ufe0f Services Layer (<code>app/services/</code>)",id:"\ufe0f-services-layer-appservices",level:3},{value:"\ud83d\udd27 Utils Layer (<code>app/utils/</code>)",id:"-utils-layer-apputils",level:3},{value:"\ud83d\udd11 T\xednh n\u0103ng ch\xednh",id:"-t\xednh-n\u0103ng-ch\xednh",level:2},{value:"\ud83d\udc64 Nh\u1eadn Di\u1ec7n Khu\xf4n M\u1eb7t",id:"-nh\u1eadn-di\u1ec7n-khu\xf4n-m\u1eb7t",level:3},{value:"\ud83d\udcf7 Ph\xe1t Hi\u1ec7n \u0110\u1ed1i T\u01b0\u1ee3ng",id:"-ph\xe1t-hi\u1ec7n-\u0111\u1ed1i-t\u01b0\u1ee3ng",level:3},{value:"\ud83d\uddbc\ufe0f X\u1eed L\xfd H\xecnh \u1ea2nh",id:"\ufe0f-x\u1eed-l\xfd-h\xecnh-\u1ea3nh",level:3},{value:"\ud83d\udee0\ufe0f C\xf4ng Ngh\u1ec7 S\u1eed D\u1ee5ng",id:"\ufe0f-c\xf4ng-ngh\u1ec7-s\u1eed-d\u1ee5ng",level:2},{value:"\ud83d\udcda Framework &amp; Libraries",id:"-framework--libraries",level:3},{value:"\ud83c\udfd7\ufe0f H\u1ea1 T\u1ea7ng",id:"\ufe0f-h\u1ea1-t\u1ea7ng",level:3},{value:"\ud83d\udcc8 Kh\u1ea3 N\u0103ng M\u1edf R\u1ed9ng",id:"-kh\u1ea3-n\u0103ng-m\u1edf-r\u1ed9ng",level:3},{value:"\ud83d\udcdd License",id:"-license",level:3}];function o(n){const e={a:"a",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",strong:"strong",ul:"ul",...(0,l.R)(),...n.components};return(0,c.jsxs)(c.Fragment,{children:[(0,c.jsx)(e.header,{children:(0,c.jsx)(e.h1,{id:"-recognition-service",children:"\ud83c\udf1f Recognition Service"})}),"\n",(0,c.jsx)(e.h2,{id:"-gi\u1edbi-thi\u1ec7u",children:"\ud83d\udcd8 Gi\u1edbi thi\u1ec7u"}),"\n",(0,c.jsxs)(e.p,{children:[(0,c.jsx)(e.em,{children:(0,c.jsx)(e.strong,{children:(0,c.jsx)(e.a,{href:"https://hub.docker.com/repository/docker/auroraphtgrp/dtu-olp-recognition-service",children:"D\u1ecbch V\u1ee5 Nh\u1eadn Di\u1ec7n (Recognition Service)"})})})," l\xe0 m\u1ed9t gi\u1ea3i ph\xe1p microservice ti\xean ti\u1ebfn \u0111\u01b0\u1ee3c ph\xe1t tri\u1ec3n b\u1eb1ng Python, chuy\xean v\u1ec1 x\u1eed l\xfd v\xe0 ph\xe2n t\xedch h\xecnh \u1ea3nh th\xf4ng minh. H\u1ec7 th\u1ed1ng n\xe0y t\xedch h\u1ee3p c\xe1c c\xf4ng ngh\u1ec7 AI v\xe0 h\u1ecdc m\xe1y hi\u1ec7n \u0111\u1ea1i \u0111\u1ec3 cung c\u1ea5p kh\u1ea3 n\u0103ng nh\u1eadn di\u1ec7n ch\xednh x\xe1c v\xe0 linh ho\u1ea1t."]}),"\n",(0,c.jsx)(e.h3,{id:"t\xednh-n\u0103ng-n\u1ed5i-b\u1eadt",children:"T\xednh n\u0103ng n\u1ed5i b\u1eadt:"}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsxs)(e.li,{children:["\n",(0,c.jsxs)(e.p,{children:[(0,c.jsx)(e.strong,{children:"Nh\u1eadn di\u1ec7n khu\xf4n m\u1eb7t"}),": Ph\xe1t hi\u1ec7n v\xe0 x\xe1c \u0111\u1ecbnh khu\xf4n m\u1eb7t v\u1edbi \u0111\u1ed9 ch\xednh x\xe1c cao, h\u1ed7 tr\u1ee3 nhi\u1ec1u g\xf3c \u0111\u1ed9 v\xe0 \u0111i\u1ec1u ki\u1ec7n \xe1nh s\xe1ng kh\xe1c nhau"]}),"\n"]}),"\n",(0,c.jsxs)(e.li,{children:["\n",(0,c.jsxs)(e.p,{children:[(0,c.jsx)(e.strong,{children:"\u0110\u1ed1i chi\u1ebfu sinh tr\u1eafc h\u1ecdc"}),": So s\xe1nh v\xe0 x\xe1c th\u1ef1c khu\xf4n m\u1eb7t v\u1edbi d\u1eef li\u1ec7u trong h\u1ec7 th\u1ed1ng m\u1ed9t c\xe1ch nhanh ch\xf3ng v\xe0 \u0111\xe1ng tin c\u1eady"]}),"\n"]}),"\n",(0,c.jsxs)(e.li,{children:["\n",(0,c.jsxs)(e.p,{children:[(0,c.jsx)(e.strong,{children:"Nh\u1eadn di\u1ec7n \u0111\u1ed1i t\u01b0\u1ee3ng"}),": Kh\u1ea3 n\u0103ng ph\xe2n lo\u1ea1i v\xe0 nh\u1eadn d\u1ea1ng \u0111a d\u1ea1ng \u0111\u1ed1i t\u01b0\u1ee3ng trong h\xecnh \u1ea3nh"]}),"\n"]}),"\n",(0,c.jsxs)(e.li,{children:["\n",(0,c.jsxs)(e.p,{children:[(0,c.jsx)(e.strong,{children:"API RESTful"}),": Cung c\u1ea5p giao di\u1ec7n API \u0111\u01a1n gi\u1ea3n v\xe0 m\u1ea1nh m\u1ebd, d\u1ec5 d\xe0ng t\xedch h\u1ee3p v\xe0o c\xe1c h\u1ec7 th\u1ed1ng kh\xe1c"]}),"\n"]}),"\n"]}),"\n",(0,c.jsx)(e.p,{children:"\u0110\u01b0\u1ee3c thi\u1ebft k\u1ebf theo ki\u1ebfn tr\xfac microservice hi\u1ec7n \u0111\u1ea1i, d\u1ecbch v\u1ee5 \u0111\u1ea3m b\u1ea3o kh\u1ea3 n\u0103ng m\u1edf r\u1ed9ng cao v\xe0 hi\u1ec7u su\u1ea5t \u1ed5n \u0111\u1ecbnh, ph\xf9 h\u1ee3p cho c\xe1c \u1ee9ng d\u1ee5ng t\u1eeb quy m\xf4 nh\u1ecf \u0111\u1ebfn h\u1ec7 th\u1ed1ng doanh nghi\u1ec7p l\u1edbn."}),"\n",(0,c.jsx)(e.h2,{id:"\ufe0f-ki\u1ebfn-tr\xfac",children:"\ud83c\udfdb\ufe0f Ki\u1ebfn tr\xfac"}),"\n",(0,c.jsx)(e.p,{children:"Service \u0111\u01b0\u1ee3c thi\u1ebft k\u1ebf theo ki\u1ebfn tr\xfac layer, bao g\u1ed3m:"}),"\n",(0,c.jsxs)(e.h3,{id:"-api-layer-appapi",children:["\ud83d\ude80 API Layer (",(0,c.jsx)(e.code,{children:"app/api/"}),")"]}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"REST API endpoints nh\u1eadn request t\u1eeb client"}),"\n",(0,c.jsx)(e.li,{children:"Route handlers cho face recognition v\xe0 object detection"}),"\n",(0,c.jsx)(e.li,{children:"Request/response validation schemas"}),"\n",(0,c.jsx)(e.li,{children:"API documentation v\u1edbi Swagger/OpenAPI"}),"\n"]}),"\n",(0,c.jsxs)(e.h3,{id:"-core-layer-appcore",children:["\ud83e\udde9 Core Layer (",(0,c.jsx)(e.code,{children:"app/core/"}),")"]}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"C\u1ea5u h\xecnh service (config)"}),"\n",(0,c.jsx)(e.li,{children:"K\u1ebft n\u1ed1i c\u01a1 s\u1edf d\u1eef li\u1ec7u"}),"\n",(0,c.jsx)(e.li,{children:"Thi\u1ebft l\u1eadp logging"}),"\n",(0,c.jsx)(e.li,{children:"Constants v\xe0 enums"}),"\n"]}),"\n",(0,c.jsxs)(e.h3,{id:"-models-layer-appmodels",children:["\ud83d\udce6 Models Layer (",(0,c.jsx)(e.code,{children:"app/models/"}),")"]}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"Database models"}),"\n",(0,c.jsx)(e.li,{children:"Data transfer objects (DTOs)"}),"\n",(0,c.jsx)(e.li,{children:"Response schemas"}),"\n"]}),"\n",(0,c.jsxs)(e.h3,{id:"\ufe0f-services-layer-appservices",children:["\ud83d\udee0\ufe0f Services Layer (",(0,c.jsx)(e.code,{children:"app/services/"}),")"]}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"Business logic ch\xednh"}),"\n",(0,c.jsx)(e.li,{children:"Engine nh\u1eadn di\u1ec7n khu\xf4n m\u1eb7t"}),"\n",(0,c.jsx)(e.li,{children:"Engine ph\xe1t hi\u1ec7n \u0111\u1ed1i t\u01b0\u1ee3ng"}),"\n",(0,c.jsx)(e.li,{children:"Qu\u1ea3n l\xfd cache"}),"\n",(0,c.jsx)(e.li,{children:"T\u1ed1i \u01b0u h\xf3a hi\u1ec7u su\u1ea5t"}),"\n"]}),"\n",(0,c.jsxs)(e.h3,{id:"-utils-layer-apputils",children:["\ud83d\udd27 Utils Layer (",(0,c.jsx)(e.code,{children:"app/utils/"}),")"]}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"Helpers x\u1eed l\xfd h\xecnh \u1ea3nh"}),"\n",(0,c.jsx)(e.li,{children:"\u0110\u1ecbnh d\u1ea1ng d\u1eef li\u1ec7u"}),"\n",(0,c.jsx)(e.li,{children:"Ti\u1ec7n \xedch chung"}),"\n"]}),"\n",(0,c.jsx)(e.h2,{id:"-t\xednh-n\u0103ng-ch\xednh",children:"\ud83d\udd11 T\xednh n\u0103ng ch\xednh"}),"\n",(0,c.jsx)(e.h3,{id:"-nh\u1eadn-di\u1ec7n-khu\xf4n-m\u1eb7t",children:"\ud83d\udc64 Nh\u1eadn Di\u1ec7n Khu\xf4n M\u1eb7t"}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"Nh\u1eadn di\u1ec7n khu\xf4n m\u1eb7t trong \u1ea3nh"}),"\n",(0,c.jsx)(e.li,{children:"So s\xe1nh khu\xf4n m\u1eb7t v\xe0 scoring \u0111\u1ed9 t\u01b0\u01a1ng \u0111\u1ed3ng"}),"\n",(0,c.jsx)(e.li,{children:"L\u01b0u tr\u1eef v\xe0 truy xu\u1ea5t embedding khu\xf4n m\u1eb7t"}),"\n",(0,c.jsx)(e.li,{children:"Qu\u1ea3n l\xfd c\u01a1 s\u1edf d\u1eef li\u1ec7u khu\xf4n m\u1eb7t"}),"\n"]}),"\n",(0,c.jsx)(e.h3,{id:"-ph\xe1t-hi\u1ec7n-\u0111\u1ed1i-t\u01b0\u1ee3ng",children:"\ud83d\udcf7 Ph\xe1t Hi\u1ec7n \u0110\u1ed1i T\u01b0\u1ee3ng"}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"Ph\xe1t hi\u1ec7n \u0111\u1ed1i t\u01b0\u1ee3ng \u0111a l\u1edbp"}),"\n",(0,c.jsx)(e.li,{children:"D\u1ef1 \u0111o\xe1n bounding box"}),"\n",(0,c.jsx)(e.li,{children:"Ph\xe2n lo\u1ea1i \u0111\u1ed1i t\u01b0\u1ee3ng"}),"\n",(0,c.jsx)(e.li,{children:"T\xedch h\u1ee3p m\xf4 h\xecnh pre-trained"}),"\n"]}),"\n",(0,c.jsx)(e.h3,{id:"\ufe0f-x\u1eed-l\xfd-h\xecnh-\u1ea3nh",children:"\ud83d\uddbc\ufe0f X\u1eed L\xfd H\xecnh \u1ea2nh"}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"Ti\u1ec1n x\u1eed l\xfd h\xecnh \u1ea3nh (resize, normalize)"}),"\n",(0,c.jsx)(e.li,{children:"T\u1ed1i \u01b0u h\xf3a cho suy lu\u1eadn m\xf4 h\xecnh"}),"\n",(0,c.jsx)(e.li,{children:"Caching k\u1ebft qu\u1ea3"}),"\n",(0,c.jsx)(e.li,{children:"X\u1eed l\xfd batch"}),"\n"]}),"\n",(0,c.jsx)(e.h2,{id:"\ufe0f-c\xf4ng-ngh\u1ec7-s\u1eed-d\u1ee5ng",children:"\ud83d\udee0\ufe0f C\xf4ng Ngh\u1ec7 S\u1eed D\u1ee5ng"}),"\n",(0,c.jsx)(e.h3,{id:"-framework--libraries",children:"\ud83d\udcda Framework & Libraries"}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"FastAPI"}),"\n",(0,c.jsx)(e.li,{children:"face_recognition"}),"\n",(0,c.jsx)(e.li,{children:"OpenCV"}),"\n",(0,c.jsx)(e.li,{children:"PyTorch/TensorFlow"}),"\n"]}),"\n",(0,c.jsx)(e.h3,{id:"\ufe0f-h\u1ea1-t\u1ea7ng",children:"\ud83c\udfd7\ufe0f H\u1ea1 T\u1ea7ng"}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"Redis caching"}),"\n",(0,c.jsx)(e.li,{children:"C\u01a1 s\u1edf d\u1eef li\u1ec7u PostgreSQL"}),"\n",(0,c.jsx)(e.li,{children:"Docker containers"}),"\n",(0,c.jsx)(e.li,{children:"CI/CD pipeline"}),"\n"]}),"\n",(0,c.jsx)(e.h3,{id:"-kh\u1ea3-n\u0103ng-m\u1edf-r\u1ed9ng",children:"\ud83d\udcc8 Kh\u1ea3 N\u0103ng M\u1edf R\u1ed9ng"}),"\n",(0,c.jsxs)(e.ul,{children:["\n",(0,c.jsx)(e.li,{children:"Horizontal scaling"}),"\n",(0,c.jsx)(e.li,{children:"Load balancing"}),"\n",(0,c.jsx)(e.li,{children:"\u0110\u1ed9 s\u1eb5n s\xe0ng cao"}),"\n"]}),"\n",(0,c.jsx)(e.h3,{id:"-license",children:"\ud83d\udcdd License"}),"\n",(0,c.jsxs)(e.p,{children:["D\u1ef1 \xe1n n\xe0y \u0111\u01b0\u1ee3c c\u1ea5p ph\xe9p theo c\xe1c \u0111i\u1ec1u kho\u1ea3n c\u1ee7a gi\u1ea5y ph\xe9p GPL V3 ",(0,c.jsx)(e.a,{href:"https://github.com/olp-dtu-2024/DTU-GreenHope/blob/main/LICENSE",children:"GPL V3 License"})]})]})}function a(n={}){const{wrapper:e}={...(0,l.R)(),...n.components};return e?(0,c.jsx)(e,{...n,children:(0,c.jsx)(o,{...n})}):o(n)}},8453:(n,e,i)=>{i.d(e,{R:()=>s,x:()=>r});var h=i(6540);const c={},l=h.createContext(c);function s(n){const e=h.useContext(l);return h.useMemo((function(){return"function"==typeof n?n(e):{...e,...n}}),[e,n])}function r(n){let e;return e=n.disableParentContext?"function"==typeof n.components?n.components(c):n.components||c:s(n.components),h.createElement(l.Provider,{value:e},n.children)}}}]);
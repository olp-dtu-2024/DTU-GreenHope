/**
 * This file is part of the NocoBase (R) project.
 * Copyright (c) 2020-2024 NocoBase Co., Ltd.
 * Authors: NocoBase Team.
 *
 * This project is dual-licensed under AGPL-3.0 and NocoBase Commercial License.
 * For more information, please refer to: https://www.nocobase.com/agreement.
 */

(function(e,n){typeof exports=="object"&&typeof module!="undefined"?n(exports,require("@nocobase/client")):typeof define=="function"&&define.amd?define(["exports","@nocobase/client"],n):(e=typeof globalThis!="undefined"?globalThis:e||self,n(e["@dtu-olp-2024/vietqr-nocobase"]={},e["@nocobase/client"]))})(this,function(e,n){"use strict";var i=(e,n,o)=>new Promise((l,a)=>{var c=t=>{try{s(o.next(t))}catch(d){a(d)}},u=t=>{try{s(o.throw(t))}catch(d){a(d)}},s=t=>t.done?l(t.value):Promise.resolve(t.value).then(c,u);s((o=o.apply(e,n)).next())});class o extends n.Plugin{afterAdd(){return i(this,null,function*(){})}beforeLoad(){return i(this,null,function*(){})}load(){return i(this,null,function*(){console.log(this.app)})}}e.QrDonateClient=o,e.default=o,Object.defineProperties(e,{__esModule:{value:!0},[Symbol.toStringTag]:{value:"Module"}})});

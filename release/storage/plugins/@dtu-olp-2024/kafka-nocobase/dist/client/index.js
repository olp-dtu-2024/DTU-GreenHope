/**
 * This file is part of the NocoBase (R) project.
 * Copyright (c) 2020-2024 NocoBase Co., Ltd.
 * Authors: NocoBase Team.
 *
 * This project is dual-licensed under AGPL-3.0 and NocoBase Commercial License.
 * For more information, please refer to: https://www.nocobase.com/agreement.
 */

(function(e,o){typeof exports=="object"&&typeof module!="undefined"?o(exports,require("@nocobase/client")):typeof define=="function"&&define.amd?define(["exports","@nocobase/client"],o):(e=typeof globalThis!="undefined"?globalThis:e||self,o(e["@dtu-olp-2024/kafka-nocobase"]={},e["@nocobase/client"]))})(this,function(e,o){"use strict";var i=(e,o,n)=>new Promise((d,c)=>{var f=t=>{try{s(n.next(t))}catch(a){c(a)}},l=t=>{try{s(n.throw(t))}catch(a){c(a)}},s=t=>t.done?d(t.value):Promise.resolve(t.value).then(f,l);s((n=n.apply(e,o)).next())});class n extends o.Plugin{afterAdd(){return i(this,null,function*(){})}beforeLoad(){return i(this,null,function*(){})}load(){return i(this,null,function*(){console.log(this.app)})}}e.KafkaNocobaseClient=n,e.default=n,Object.defineProperties(e,{__esModule:{value:!0},[Symbol.toStringTag]:{value:"Module"}})});

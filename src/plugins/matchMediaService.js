!function(e,t){"function"==typeof define&&define.amd?define([],function(){return t(e)}):"object"==typeof exports?module.exports=t(e):e.MatchMediaService=t(e)}("undefined"!=typeof global?global:"undefined"!=typeof window?window:this,function(e){"use strict";var t;t={mediaQuery:"min-width",breakpoint:992,do:function(){console.log("Media is matched")},otherwiseDo:function(){console.log("Media is not matched")}};var n=function(){var e={},t=!1,o=0;"[object Boolean]"===Object.prototype.toString.call(arguments[0])&&(t=arguments[0],o++);for(var i=function(o){for(var i in o)o.hasOwnProperty(i)&&(t&&"[object Object]"===Object.prototype.toString.call(o[i])?e[i]=n(e[i],o[i]):e[i]=o[i])};o<arguments.length;o++){i(arguments[o])}return e};return function(o){var i,r={};return r.switch=function(){e.matchMedia("("+i.mediaQuery+": "+i.breakpoint+"px)").matches?i.do():i.otherwiseDo()},r.watch=function(){e.matchMedia("("+i.mediaQuery+": "+i.breakpoint+"px)").addListener(r.switch)},r.init=function(e){i=function(e){switch(e.breakpoint){case"sm":e.breakpoint=576;break;case"md":e.breakpoint=768;break;case"lg":e.breakpoint=992;break;case"xl":e.breakpoint=1200}return e}(i=n(t,e||{})),r.switch()},r.init(o),r}});
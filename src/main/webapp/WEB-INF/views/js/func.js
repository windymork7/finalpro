
nonce="YjMyOGJhYjEtYTdkOC00ODYyLTkwNWUtOTRkMDU0OTMxYTBm"
loadjs=function(){	
var h=function(){},c={},u={},f={};function o(e,n){if(e){var r=f[e];if(u[e]=n,r)for(;r.length;)r[0](e,n),r.splice(0,1)}}function l(e,n){e.call&&(e={success:e}),n.length?(e.error||h)(n):(e.success||h)(e)}function d(r,t,s,i){var c,o,e=document,n=s.async,u=(s.numRetries||0)+1,f=s.before||h,l=r.replace(/[\?|#].*$/,""),a=r.replace(/^(css|img)!/,"");i=i||0,/(^css!|\.css$)/.test(l)?((o=e.createElement("link")).rel="stylesheet",o.href=a,(c="hideFocus"in o)&&o.relList&&(c=0,o.rel="preload",o.as="style")):/(^img!|\.(png|gif|jpg|svg|webp)$)/.test(l)?(o=e.createElement("img")).src=a:((o=e.createElement("script")).src=r,o.async=void 0===n||n),!(o.onload=o.onerror=o.onbeforeload=function(e){var n=e.type[0];if(c)try{o.sheet.cssText.length||(n="e")}catch(e){18!=e.code&&(n="e")}if("e"==n){if((i+=1)<u)return d(r,t,s,i)}else if("preload"==o.rel&&"style"==o.as)return o.rel="stylesheet";t(r,n,e.defaultPrevented)})!==f(r,o)&&e.head.appendChild(o)}function r(e,n,r){var t,s;if(n&&n.trim&&(t=n),s=(t?r:n)||{},t){if(t in c)throw"LoadJS";c[t]=!0}function i(n,r){!function(e,t,n){var r,s,i=(e=e.push?e:[e]).length,c=i,o=[];for(r=function(e,n,r){if("e"==n&&o.push(e),"b"==n){if(!r)return;o.push(e)}--i||t(o)},s=0;s<c;s++)d(e[s],r,n)}(e,function(e){l(s,e),n&&l({success:n,error:r},e),o(t,e)},s)}if(s.returnPromise)return new Promise(i);i()}return r.ready=function(e,n){return function(e,r){e=e.push?e:[e];var n,t,s,i=[],c=e.length,o=c;for(n=function(e,n){n.length&&i.push(e),--o||r(i)};c--;)t=e[c],(s=u[t])?n(t,s):(f[t]=f[t]||[]).push(n)}(e,function(e){l(n,e)}),r},r.done=function(e){o(e,[])},r.reset=function(){c={},u={},f={}},r.isDefined=function(e){return e in c},r}();
var mainJsUri = '/assets/js/main.281e5b8.js';
var clipboardjsUri = '/assets/js/vendor/clipboard.min.61791f3.js';
var jqueryUri = 'https://code.jquery.com/jquery-3.5.1.slim.min.js';
var bootstrapUri = 'https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js';

loadjs([clipboardjsUri, mainJsUri], 'main', {
   before: function(path, el) {
       el.integrity = path === mainJsUri ? 'sha384-gDxGmEn0dEwp4oX+mUoICostwkLrK8MP/+CB4Gzvaaj41PYsfeQ4MdgiJpzEw23Y' : 'sha384-LxqnSPEB836Y+T4Gdc2WLcJM8iOUSm2PP4UHKccCaSJkuv1deQm8sjVjsVr/YEhg';
       el.crossOrigin = 'anonymous';
    },
    async: false
});
loadjs([jqueryUri, bootstrapUri], 'jquery', {
   before: function(path, el) {
       el.integrity = path === jqueryUri ? 'sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj' : 'sha384-LtrjvnR4Twt/qOuYxE721u19sVFLVSA4hf/rRt6PrZTmiPltdZcI7q7PXQBYTKyf';
       el.crossOrigin = 'anonymous';
    },
    async: false
});(function() {
    'use strict';

    function handleGaEvent(event) {
        if (typeof event.target !== 'undefined') {
            var action = event.target.getAttribute('data-ga-action');
            var category = event.target.getAttribute('data-ga-category');
            var label = event.target.getAttribute('data-ga-label');
            var value = parseInt(event.target.getAttribute('data-ga-value'), 10);

            if (window.ga && category && action) {
                window.ga('send', 'event', category, action, label, value, {});
            }
        }
    }

    /* eslint-disable */
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-32253110-1', 'bootstrapcdn.com');
    ga('set', 'anonymizeIp', true);
    ga('send', 'pageview');
    /* eslint-enable */

    window.addEventListener('click', handleGaEvent, false);
})();

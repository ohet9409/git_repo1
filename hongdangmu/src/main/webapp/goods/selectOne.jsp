<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
<script>window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"13b120e811","applicationID":"171395930","transactionName":"egtdTBNbXFUDQU0KCVQBHFkTQFlaClYRTRVRC0Q=","queueTime":0,"applicationTime":66,"agent":""}</script>
<script>window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1130.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script>
  <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <link rel="canonical" href="https://www.daangn.com/articles/37346489" />

  <title>필립스 32인치 모니터/TV 가... - 중고거래는 당근마켓!</title>
<meta name="description" content="32인치 IPS패널이구요 자체스피커 기능있어요 오른쪽구석에 날파리가 들어가서 죽어있어요... 그래서...">
<meta name="keywords" content="필립스, 32인치, 모니터, 가져가세요, 텔레비전">
<meta property="og:url" content="https://www.daangn.com/articles/37346489">
<meta property="og:title" content="필립스 32인치 모니터/TV 가... - 중고거래는 당근마켓!">
<meta property="og:description" content="32인치 IPS패널이구요 자체스피커 기능있어요

오른쪽구석에 날파리가 들어가서 죽어있어요...

그래서...">
<meta property="og:site_name" content="당근마켓">
<meta property="og:image" content="https://dnvefa72aowie.cloudfront.net/origin/article/201908/9058f7fc4e814a2bb6a21ca1d6b734405348ae437dccc1903477c6d90f9acb0b.jpg?q=95&amp;s=1440x1440&amp;t=inside">
<meta property="og:type" content="product">
<meta property="og:locale" content="ko_KR">
<meta property="fb:app_id" content="1463621440622064">
<meta name="twitter:card" content="product">
<meta name="twitter:site" content="@danggeunmarket">
<meta name="twitter:title" content="필립스 32인치 모니터/TV 가져가세요">
<meta name="twitter:description" content="32인치 IPS패널이구요 자체스피커 기능있어요

오른쪽구석에 날파리가 들어가서 죽어있어요...

그래서...">
<meta name="twitter:image" content="https://dnvefa72aowie.cloudfront.net/origin/article/201908/9058f7fc4e814a2bb6a21ca1d6b734405348ae437dccc1903477c6d90f9acb0b.jpg?q=95&amp;s=1440x1440&amp;t=inside">
<meta name="twitter:label1" content="가격">
<meta name="twitter:data1" content="10000원">
<meta name="twitter:label2" content="동네">
<meta name="twitter:data2" content="대전 서구 갈마1동">
<meta property="product:category" content="디지털/가전">
<meta property="product:condition" content="used">
<meta property="product:availability" content="instock">
<meta property="product:price:amount" content="10000">
<meta property="product:price:currency" content="KRW">
<meta property="product:sale_price:amount" content="10000">
<meta property="product:sale_price:currency" content="KRW">
<meta name="author" content="찌놔니">
<meta name="naver-site-verification" content="8273a462d4256dc90c43fbfa8ecbe29675ede28c">
  <link href="/images/icons/shortcut_icon.png" rel="shortcut icon" type="image/x-icon">
  <link rel="shortcut icon" type="image/x-icon" href="https://d1unjqcospf8gs.cloudfront.net/favicon.ico" />

    <link rel="stylesheet" media="all" href="https://d1unjqcospf8gs.cloudfront.net/assets/home/articles/show-f8e3b90a15d53094d2bbf38d1634d34bfd8121784e9eb560abd0bcd41ac16334.css" />
      <script src="https://d1unjqcospf8gs.cloudfront.net/assets/home/articles/show-31ff68adc112a395b5cacd0f2db90f644b82c62787b75f794b0b86310976e844.js"></script>

      <link rel="stylesheet" media="screen" href="https://d1unjqcospf8gs.cloudfront.net/assets/home/articles/flea_market-49a126514a2d98823e117acbef63b95d937a6edf4f28757d2213977512f0cbd3.css" />



  <link rel="apple-touch-icon" sizes="192x192" href="/images/icons/daangn_logo_192.png">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="03lBi7vjwnKXjCp1ko0EFr+1AfHbRF5uzfHmv8jBW1nVrSf9WrAtxoCmd7TUPXy+aTe+WjQUKw2+F0YyiPT3xg==" />
  <script>
    window.fbAsyncInit = function() {
      FB.init({
        appId      : '1463621440622064',
        xfbml      : true,
        version    : 'v2.4'
      });
    };

    (function(d, s, id){
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) {return;}
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  </script>
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-64551386-2', 'auto');
     ga('set', 'dimension2', 'false');  ga('send', 'pageview'); </script>
    <!-- Facebook Pixel Code -->
    <script>
      !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
              n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
        n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
              document,'script','//connect.facebook.net/en_US/fbevents.js');

      fbq('init', '992961397411651');
      fbq('track', "PageView");</script>
    <noscript><img height="1" width="1" style="display:none"
                   src="https://www.facebook.com/tr?id=992961397411651&ev=PageView&noscript=1"
    /></noscript>
    <!-- End Facebook Pixel Code -->
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-PJSK4QL');</script>
    <!-- End Google Tag Manager -->
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PJSK4QL"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<header id="fixed-bar">
  <div id="fixed-bar-wrap">
    <h1 id="fixed-bar-logo-title">
      <a href="https://www.daangn.com/">
        <span class="sr-only">당근마켓</span>
        <img class="fixed-logo" alt="당근마켓" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/logo-basic-00b7e471b721ce9db8b0758c05a84684413c8aef1ad54caa0f3fcbe7328c947f.svg" />
</a>    </h1>
    
    <section id="fixed-bar-search">
      <div class="search-input-wrap">
        <span class="sr-only">검색</span>
        <input type="text" name="header-search-input" id="header-search-input" class="fixed-search-input" placeholder="지역, 상품, 업체등을 검색해보세요." />
        <button id="header-search-button">
          <img class="fixed-search-icon" alt="Search" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/search-icon-db20a2e9e6b0fc922b44982d451cf1c967c86e8e8df270e71c300832a6f31f1a.svg" />
        </button>
      </div>
    </section>
    
    <section id="fixed-bar-download">
      <h3 class="hide">다운로드</h3>
      <a target="_blank" class="fixed-download-button" id="header-download-button-ios" href="https://itunes.apple.com/kr/app/pangyojangteo/id1018769995?l=ko&amp;ls=1&amp;mt=8">
        <img class="fixed-apple-store" alt="App Store" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/apple-store-790f526e762ae58ec39274857ea3434959b7bd40fc23ec1f33a21983f3d024ff.svg" />
        <div class="fixed-download-text">App Store</div>
</a>      <a target="_blank" class="fixed-download-button" id="header-download-button-android" href="https://play.google.com/store/apps/details?id=com.towneers.www">
        <img class="fixed-google-play" alt="Google Play" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/google-play-3c1802269ac6bedde598de4f2885286c18492748e5b58bd358254b26ee61e008.svg" />
        <div class="fixed-download-text">Google Play</div>
</a>    </section>
  </div>
</header>



<article id="content" data-id="37346489">
    <h1 class="hide">필립스 32인치 모니터/TV 가져가세요</h1>
      <section id="article-images">
        <h3 class="hide">이미지</h3>
        <div id="image-slider">
  <div class="slider-wrap">
    <div class="slider" data-article-id="37346489">
        <a href="/images?image_index=0&amp;object_id=37346489&amp;object_type=Article">
          <div>
            <div class="image-wrap" data-image-id="145009638" data-image-index="1">
              <img data-lazy="https://dnvefa72aowie.cloudfront.net/origin/article/201908/9058f7fc4e814a2bb6a21ca1d6b734405348ae437dccc1903477c6d90f9acb0b.jpg?q=95&amp;s=1440x1440&amp;t=inside"
                   class="landscape"
                   alt='필립스 32인치 모니터/TV 가져가세요의 사진 1' />
            </div>
          </div>
</a>    </div>
  </div>
</div>
      </section>

    <section id="article-profile">
        <a id="article-profile-link" href="/users/6807646">
          <h3 class="hide">프로필</h3>
          <div class="space-between">
            <div>
              <div id="article-profile-image">
                <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
              </div>
              <div id="article-profile-left">
                <div id="nickname">찌놔니</div>
                <div id="region-name">서구 갈마1동</div>
              </div>
            </div>
            <div id="article-profile-right">
              <dl id="temperature-wrap">
                <dt>매너온도</dt>
                <dd class="text-color-02">
                  36.2°
                </dd>
              </dl>
              <div class="meters">
                <div class="bar bar-color-02" style="width: 36%;"></div>
              </div>
              <div class="face face-02"></div>
            </div>
          </div>
</a>    </section>

    <section id="article-description">
        <h1 property="schema:name" id="article-title" style="margin-top:0px;">필립스 32인치 모니터/TV 가져가세요</h1>
        <p id="article-category">
          디지털/가전 ∙
          <time>6일 전</time>
        </p>
        <p property="schema:priceValidUntil" datatype="xsd:date" content="2021-08-16"></p>
        <p rel="schema:url" resource="https://www.daangn.com/37346489"></p>
        <p property="schema:priceCurrency" content="KRW"></p>
        <p id="article-price" property="schema:price" content="10000" style="font-size:18px; font-weight:bold;">
            10,000원
        </p>
        <div property="schema:description" id="article-detail">
            <p>32인치 IPS패널이구요 자체스피커 기능있어요</p>

<p>오른쪽구석에 날파리가 들어가서 죽어있어요...</p>

<p>그래서 싸게드립니다</p>

<p>사진으로 봐선 티가안납니다...보여달라고 하지말아주세요</p>
        </div>
        <p id="article-counts">
          채팅 230 ∙ 관심 53 ∙ 조회 5527
        </p>
    </section>
      <section id="article-comments">
        <h3>댓글 19 </h3>
        <div id="article-comments-list">
            <div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/4066525">묭이</a>
      </div>
        <div class="article-comment-region-name">서구 내동</div>
      <div class="article-comment-text"><p>판매됬나요?</p></div>
      <time class="article-comment-time">
        6일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/2771327">우라미</a>
      </div>
        <div class="article-comment-region-name">대덕구 중리동</div>
      <div class="article-comment-text"><p>제가 가지러갈께요.판매 안됐으면요.</p></div>
      <time class="article-comment-time">
        6일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/2033738">용전동</a>
      </div>
        <div class="article-comment-region-name">동구 용전동</div>
      <div class="article-comment-text"><p>예약이요</p></div>
      <time class="article-comment-time">
        6일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/2033738">용전동</a>
      </div>
        <div class="article-comment-region-name">동구 용전동</div>
      <div class="article-comment-text"><p>저한테파세요꼭필요합니다</p></div>
      <time class="article-comment-time">
        6일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/4066525">묭이</a>
      </div>
        <div class="article-comment-region-name">서구 내동</div>
      <div class="article-comment-text"><p>연락주세요~~가질러가겠습니다</p></div>
      <time class="article-comment-time">
        6일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/4088024">살림살자</a>
      </div>
        <div class="article-comment-region-name">서구 용문동</div>
      <div class="article-comment-text"><p>누가 사셨나요? 왜아직 예약중이  안뜨네요?</p></div>
      <time class="article-comment-time">
        6일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://dnvefa72aowie.cloudfront.net/origin/profile/201712/87e26093e007325ebbe619ff08e25a9be5b2fb25a9edfcc8f05f9ba5d250b420.jpg?q=82&amp;s=80x80&amp;t=crop" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/1467953">대전캠핑맨</a>
      </div>
        <div class="article-comment-region-name">중구 목동</div>
      <div class="article-comment-text"><p>애들이 장난치는거 같은데요 ㅎㅎ</p></div>
      <time class="article-comment-time">
        6일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/780483">수여니</a>
      </div>
        <div class="article-comment-region-name">서구 갈마동</div>
      <div class="article-comment-text"><p>만원인가요?</p></div>
      <time class="article-comment-time">
        6일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/3552470">카사노바</a>
      </div>
        <div class="article-comment-region-name">대덕구 법2동</div>
      <div class="article-comment-text"><p>이거 뻥이란다 ㅋ</p></div>
      <time class="article-comment-time">
        6일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/4725769">어쩌다</a>
      </div>
        <div class="article-comment-region-name">유성구 전민동</div>
      <div class="article-comment-text"><p>판매인 관종이네
<br />채팅 140개가 넘는데 예약중도 표시 안 하네
<br />판매 할 생각 없는듯</p></div>
      <time class="article-comment-time">
        6일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://dnvefa72aowie.cloudfront.net/origin/profile/201901/146eff8a7333b7e03523d5561437745227e389f1ce8fc493879821dc9b431457.jpg?q=82&amp;s=80x80&amp;t=crop" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/3400995">황금이</a>
      </div>
        <div class="article-comment-region-name">유성구 장대동</div>
      <div class="article-comment-text"><p>채팅도 안읽어요</p></div>
      <time class="article-comment-time">
        5일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://dnvefa72aowie.cloudfront.net/origin/profile/201907/12a93d65a675a20f24a6c02cc664c920d25b2a9ac52aa1799437195fda485020.jpg?q=82&amp;s=80x80&amp;t=crop" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/5745455">원태연</a>
      </div>
        <div class="article-comment-region-name">유성구 전민동</div>
      <div class="article-comment-text"><p>제가이만원에살께요</p></div>
      <time class="article-comment-time">
        5일 전
      </time>
    </div>
</div>
  <div class="article-comment">
    <div class="article-child-comment"></div>
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://dnvefa72aowie.cloudfront.net/origin/profile/201811/43868f0425490c8486d8ba40308825fa65763a5d5fa06bae9d830af302c2ea4e.jpg?q=82&amp;s=80x80&amp;t=crop" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/998622">루피</a>
      </div>
        <div class="article-comment-region-name">유성구 관평동</div>
      <div class="article-comment-text"><p>갑자기 가격올리고 이러는거 아니라 봅니다...이런글은 개인챗하세요...물흐리지말고</p></div>
      <time class="article-comment-time">
        5일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-child-comment"></div>
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://dnvefa72aowie.cloudfront.net/origin/profile/201907/12a93d65a675a20f24a6c02cc664c920d25b2a9ac52aa1799437195fda485020.jpg?q=82&amp;s=80x80&amp;t=crop" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/5745455">원태연</a>
      </div>
        <div class="article-comment-region-name">유성구 전민동</div>
      <div class="article-comment-text"><p>이거 가격제안할수있어요 가격제안된다길래 가격을제안했는데 그렇게 문제가되나요?</p></div>
      <time class="article-comment-time">
        5일 전
      </time>
    </div>
</div>

<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/4253583">떠리</a>
      </div>
        <div class="article-comment-region-name">서구 둔산3동</div>
      <div class="article-comment-text"><p>30만원에살께요</p></div>
      <time class="article-comment-time">
        5일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/230714">옷사야징</a>
      </div>
        <div class="article-comment-region-name">서구 관저2동</div>
      <div class="article-comment-text"><p>ㅇㄷ</p></div>
      <time class="article-comment-time">
        5일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/4253583">떠리</a>
      </div>
        <div class="article-comment-region-name">서구 둔산3동</div>
      <div class="article-comment-text"><p>50콜!</p></div>
      <time class="article-comment-time">
        4일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://dnvefa72aowie.cloudfront.net/origin/profile/201907/bbc8dc001383d35d6bc2dc46eb3cb7f4a192fc17cc9b11d45eda02d6dc6e0f97.jpg?q=82&amp;s=80x80&amp;t=crop" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/144676">MINS</a>
      </div>
        <div class="article-comment-region-name">서구 갈마동</div>
      <div class="article-comment-text"><p>날파리하나에 시세 8만짜리를 7만깍아 1만에? ㅋㅋ  아님 관종이던지</p></div>
      <time class="article-comment-time">
        4일 전
      </time>
    </div>
</div>
<div class="article-comment">
    <div class="article-comment-wrap">
      <div class="article-comment-profile">
        <img alt="찌놔니" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c61615521a556c55347cb716eaf6b3685766da99b85cbf1242ecc1476195f25a.png" />
      </div>
      <div class="article-comment-nickname">
            <a href="/users/4848468">능이</a>
      </div>
        <div class="article-comment-region-name">서구 월평1동</div>
      <div class="article-comment-text"><p>ㅍㅎㅎ ~~</p></div>
      <time class="article-comment-time">
        4일 전
      </time>
    </div>
</div>

        </div>
        <hr class="hr-border" />
      </section>
</article>



<section id="article-detail-related">
  <h3>이 상품과 함께 봤어요</h3>
  <section class="cards-wrap">
    <article class="card ">
  <a class="card-link ga-click" data-event-label="32884511" data-event-category="show_article_from" data-event-action="related" href="/articles/32884511">
    <div class="card-photo">
        <img alt="LG TV(대형) (부속품-실행X)" src="https://dnvefa72aowie.cloudfront.net/origin/article/201906/431b55e1c8fb166ae059adf6780a014c08a5f23e91331dcb15952284e2ba1581.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">LG TV(대형) (부속품-실행X)</h2>
      <div class="card-region-name">
        대전 서구 관저동
      </div>
      <div class="card-price ">
        250,000원
      </div>
        <div class="card-counts">
          <span>
            관심 1
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 3
          </span>
        </div>
    </div>
</a></article><article class="card ">
  <a class="card-link ga-click" data-event-label="28119207" data-event-category="show_article_from" data-event-action="related" href="/articles/28119207">
    <div class="card-photo">
        <img alt="불스와이퍼 가격다운합니다" src="https://dnvefa72aowie.cloudfront.net/origin/article/201904/605cd42e562867359bc4bfe44cdbfd074dc09d528cc74fd0e41e996e61d2fe27.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">불스와이퍼 가격다운합니다</h2>
      <div class="card-region-name">
        대전 중구 태평2동
      </div>
      <div class="card-price ">
        8,000원
      </div>
        <div class="card-counts">
          <span>
            관심 8
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 1
          </span>
        </div>
    </div>
</a></article><article class="card ">
  <a class="card-link ga-click" data-event-label="36407883" data-event-category="show_article_from" data-event-action="related" href="/articles/36407883">
    <div class="card-photo">
        <img alt="전자사전" src="https://dnvefa72aowie.cloudfront.net/origin/article/201908/2e3f1e48b8e3f3fa439fb7ed7ad2165c068e6ee2db7b43f68b70f05b473a4ee7.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">전자사전</h2>
      <div class="card-region-name">
        대전 중구 태평1동
      </div>
      <div class="card-price ">
        10,000원
      </div>
        <div class="card-counts">
          <span>
            관심 0
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 0
          </span>
        </div>
    </div>
</a></article><article class="card ">
  <a class="card-link ga-click" data-event-label="36953490" data-event-category="show_article_from" data-event-action="related" href="/articles/36953490">
    <div class="card-photo">
        <img alt="애프터샥 골전도 블루투스 어어폰 팝니다." src="https://dnvefa72aowie.cloudfront.net/origin/article/201908/14b03678b7bfdbde3ee3e1f86c718d3bfdcf1df3403165b92f9643ec09cfd936.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">애프터샥 골전도 블루투스 어어폰 팝니다.</h2>
      <div class="card-region-name">
        대전 중구 대흥동
      </div>
      <div class="card-price ">
        149,000원
      </div>
        <div class="card-counts">
          <span>
            관심 1
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 1
          </span>
        </div>
    </div>
</a></article><article class="card ">
  <a class="card-link ga-click" data-event-label="37343531" data-event-category="show_article_from" data-event-action="related" href="/articles/37343531">
    <div class="card-photo">
        <img alt="런닝머신 사놓구 2주일도 안쓴거 팔아봐요." src="https://dnvefa72aowie.cloudfront.net/origin/article/201908/93f23b7c851c332f6ae8fc988f0ecc4bd3aeae48a5f9660e425d360389a23c35.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">런닝머신 사놓구 2주일도 안쓴거 팔아봐요.</h2>
      <div class="card-region-name">
        대전 서구 월평동
      </div>
      <div class="card-price blank-price">
        -
      </div>
        <div class="card-counts">
          <span>
            관심 17
          </span>
          ∙
          <span>
            댓글 3
          </span>
          ∙
          <span>
            채팅 30
          </span>
        </div>
    </div>
</a></article><article class="card ">
  <a class="card-link ga-click" data-event-label="36237033" data-event-category="show_article_from" data-event-action="related" href="/articles/36237033">
    <div class="card-photo">
        <img alt="aux스테레오3.5  연장케이블5m.오디오음성케이블.옥스" src="https://dnvefa72aowie.cloudfront.net/origin/article/201908/5a462154421d1e2d06b7b18227bd39429b4ba086dd852f6b78914d1d75d8b909.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">aux스테레오3.5  연장케이블5m.오디오음성케이블.옥스</h2>
      <div class="card-region-name">
        대전 서구 괴정동
      </div>
      <div class="card-price ">
        2,000원
      </div>
        <div class="card-counts">
          <span>
            관심 8
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 0
          </span>
        </div>
    </div>
</a></article>
  </section>
</section>

<section id="article-detail-hot-more">
  <h3>당근마켓 인기중고</h3>
  <div id="hot-more-link"><a href="/hot_articles">더 구경하기</a></div>
  <section class="cards-wrap">
    <article class="card ">
  <a class="card-link ga-click" data-event-label="37931878" data-event-category="show_article_from" data-event-action="hot_region" href="/articles/37931878">
    <div class="card-photo">
        <img alt="전신거울" src="https://dnvefa72aowie.cloudfront.net/origin/article/201908/58592d5f5ae3c1739eebf5b2bc80c21e4a7ff48055532d04344d356463fa23ef.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">전신거울</h2>
      <div class="card-region-name">
        강원도 원주시 무실동
      </div>
      <div class="card-price ">
        무료나눔
      </div>
        <div class="card-counts">
          <span>
            관심 5
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 12
          </span>
        </div>
    </div>
</a></article><article class="card ">
  <a class="card-link ga-click" data-event-label="37936471" data-event-category="show_article_from" data-event-action="hot_region" href="/articles/37936471">
    <div class="card-photo">
        <img alt="필요하신분 무료로드립니다" src="https://dnvefa72aowie.cloudfront.net/origin/article/201908/1f0dbb049399247f7f60a59e6c1ea98b2227dac3b16a52acf3dba22f5283ab04.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">필요하신분 무료로드립니다</h2>
      <div class="card-region-name">
        강원도 춘천시 퇴계동
      </div>
      <div class="card-price ">
        무료나눔
      </div>
        <div class="card-counts">
          <span>
            관심 1
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 10
          </span>
        </div>
    </div>
</a></article><article class="card ">
  <a class="card-link ga-click" data-event-label="37933864" data-event-category="show_article_from" data-event-action="hot_region" href="/articles/37933864">
    <div class="card-photo">
        <img alt="장식장 그릇장 책장" src="https://dnvefa72aowie.cloudfront.net/origin/article/201908/B083CA4F95C7F830366FEEDF28858BF9A39E9811FEAD83760160D508599F0AE7.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">장식장 그릇장 책장</h2>
      <div class="card-region-name">
        제주 제주시 노형동
      </div>
      <div class="card-price ">
        2원
      </div>
        <div class="card-counts">
          <span>
            관심 7
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 19
          </span>
        </div>
    </div>
</a></article><article class="card ">
  <a class="card-link ga-click" data-event-label="37319821" data-event-category="show_article_from" data-event-action="hot_region" href="/articles/37319821">
    <div class="card-photo">
        <img alt="이케아 옷장 판매합니다-이사 급처분, 마지막 가격내림" src="https://dnvefa72aowie.cloudfront.net/origin/article/201908/2A25B2E4BA0A3F1D57A9394ED3A675042D19EF95F241BFE9B8ADB613244535CF.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">이케아 옷장 판매합니다-이사 급처분, 마지막 가격내림</h2>
      <div class="card-region-name">
        서울 송파구 잠실본동
      </div>
      <div class="card-price blank-price">
        -
      </div>
        <div class="card-counts">
          <span>
            관심 40
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 4
          </span>
        </div>
    </div>
</a></article><article class="card ">
  <a class="card-link ga-click" data-event-label="37430641" data-event-category="show_article_from" data-event-action="hot_region" href="/articles/37430641">
    <div class="card-photo">
        <img alt="애플 맥북 에어 풀박스( 환불 가능 )" src="https://dnvefa72aowie.cloudfront.net/origin/article/201908/49A08EA53F473900EA405F09FA5E2306FD7EF7F69B614DF77A978CC5C8F0B1BD.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">애플 맥북 에어 풀박스( 환불 가능 )</h2>
      <div class="card-region-name">
        서울 성북구 돈암동
      </div>
      <div class="card-price ">
        650,000원
      </div>
        <div class="card-counts">
          <span>
            관심 45
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 29
          </span>
        </div>
    </div>
</a></article><article class="card ">
  <a class="card-link ga-click" data-event-label="37912831" data-event-category="show_article_from" data-event-action="hot_region" href="/articles/37912831">
    <div class="card-photo">
        <img alt="삼성 냉장고" src="https://dnvefa72aowie.cloudfront.net/origin/article/201908/947bbccf729ed191bb302b7740ad8228671c975c94d3f0d0f8f510c96b7f6031.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">삼성 냉장고</h2>
      <div class="card-region-name">
        경기도 남양주시 별내동
      </div>
      <div class="card-price ">
        50,000원
      </div>
        <div class="card-counts">
          <span>
            관심 6
          </span>
          ∙
          <span>
            댓글 0
          </span>
          ∙
          <span>
            채팅 15
          </span>
        </div>
    </div>
</a></article>
  </section>
</section>

<footer id="footer">
  <ul class="footer-list">
    <li class="footer-list-item"><a target="_blank" href="http://policy.daangn.com/terms.html">이용약관</a></li>
    <li class="footer-list-item"><a target="_blank" href="http://policy.daangn.com/privacy.html">개인정보 취급방침</a></li>
    <li class="footer-list-item"><a target="_blank" href="https://policy.daangn.com/location.html">위치기반서비스 이용약관</a></li>
    <li class="footer-list-item text-bold"><a target="_blank" href="https://ad.daangn.com/">광고주센터</a></li>
    <li class="footer-list-item"><a target="_blank" href="http://team.daangn.com">ABOUT US</a></li>
  </ul>
  <ul class="footer-list" id="footer-address-list">
    <li class="footer-list-item">사업자 등록번호 : 375-87-00088</li>
    <li class="footer-list-item"><address>서울특별시 강남구 테헤란로4길 14 미림타워 14층</address></li>
    <li class="footer-list-item"><a href="mailto:team@daangn.com">team@daangn.com</a></li>
  </ul>
  <p id="ceo">
    (주)당근마켓  대표 김재현, 김용현
  </p>
  <div id="copyright">
    Copyright © Danggeun Market Inc. All rights reserved.
  </div>
  <div id="social">
    <ul class="footer-list">
      <li class="footer-list-item"><a target="_blank" class="footer-facebook" href="https://www.facebook.com/daangn">facebook</a></li>
      <li class="footer-list-item"><a target="_blank" class="footer-instagram" href="https://www.instagram.com/daangn.m/">instagram</a></li>
    </ul>
  </div>
</footer>


<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "Organization",
  "name": "당근마켓",
  "url": "https://www.daangn.com",
  "sameAs": [
     "https://www.facebook.com/daangn",
     "https://www.instagram.com/daangn.m",
     "https://itunes.apple.com/kr/app/id1018769995",
     "https://play.google.com/store/apps/details?id=com.towneers.www"
   ]
}
</script>

</body>
</html>

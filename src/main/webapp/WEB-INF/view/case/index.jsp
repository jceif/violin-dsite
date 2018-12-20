<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />
    <title>三一互联网-三一互联网</title>

    <meta name="description" content="三一互联网—你身边的科技服务，致力于帮您更好的维护。" />
    <meta name="keywords" content="三一互联网,三一互联网,三一互联网,三一互联网科技,三一互联网科技" />

    <link href="${ctx}/assets/templets/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="${ctx}/assets/templets/css/docs.min.css" type="text/css" rel="stylesheet" />
    <link href="${ctx}/assets/templets/scss/index.min.css" type="text/css" rel="stylesheet" />
    <script src="${ctx}/assets/templets/banner/js/jquery.min.js"></script>
    <link href="${ctx}/assets/templets/css/mislider.css" rel="stylesheet">
    <link href="${ctx}/assets/templets/css/mislider-skin-cameo.css" rel="stylesheet">


    <style type="text/css">
        .main_image li {
            float: left;
            width: 100%;
        }


        .shoujibeij {
            background-image: url(${ctx}/assets/templets/img/shoujitu.png);
            background-position: center;
            background-size: cover;
            height: 660px;
            width: 315px;
            display: inline-block;
        }

        .kePublic-rightdiv {
            color: rgba(255, 255, 255, .9);
        }


        .kePublic-cont-info {
            margin-top: 28px;
            font-size: 16px;
            color: rgba(255,255,255,.9);
        }

        .sj-show-jkjc, .sj-show-qygl, .sj-show-tjsj, .sj-show-yzzx, .sj-show-zljh {
            background-repeat: no-repeat;
            background-size: 64px 64px;
            width: 64px;
            height: 64px;
        }

        .sj-show-jkjc {
            background-image: url(${ctx}/assets/templets/img/sj-show-jkjc.svg);
        }

        .ssj-show-qygl {
            background-image: url(${ctx}/assets/templets/img/sj-show-qygl.svg);
        }

        .sj-show-yzzx {
            background-image: url(${ctx}/assets/templets/img/sj-show-yzzx.svg);
        }

        .sj-show-zljh {
            background-image: url(${ctx}/assets/templets/img/sj-show-zljh.svg);
        }

        .iOS-icon {
            background-image: url(${ctx}/assets/templets/img/iOS-icon.svg);
        }

        .andio-icon {
            background-image: url(${ctx}/assets/templets/img/andio-icon.svg);
        }

        /* m-banner */


        .mb-news {
            padding: 0 15px;
            line-height: 1.8;
            position: absolute;
            left: 417px;
            top: 150px;
        }

            .mb-news h4 {
                word-break: break-all;
                word-wrap: break-word;
            }

                .mb-news h4 a {
                    font-size: 18px;
                    color: #8c3608;
                    line-height: 1.6;
                    word-break: break-all;
                    word-wrap: break-word;
                }

            .mb-news p {
                font-size: 14px;
                color: #444;
                margin-top: 15px;
                overflow: hidden;
            }

            .mb-news h4 a:hover {
                text-decoration: underline;
            }

        .mb-img {
            width: 315px;
        }

        .mb-ibox {
            width: 444px;
            height: 660px;
            position: relative;
            overflow: hidden;
        }

            .mb-ibox div {
                display: block;
                overflow: hidden;
                position: absolute;
                top: 180px;
                left: 31px;
                z-index: 10;
            }

            .mb-ibox a {
                position: absolute;
                width: 100%;
                height: 100%;
                z-index: 5;
                left: 0;
                top: 0;
            }

                .mb-ibox a:first-child {
                    z-index: 6;
                }

                .mb-ibox a.move {
                    z-index: 7;
                }

                .mb-ibox a.cur {
                    z-index: 8;
                }

        .mb-inav {
            z-index: 10 !important;
        }
    </style>
    <!-- 有手机背景的css start -->
    <style type="text/css">
        .main_image li {
            float: left;
            width: 100%;
        }


            .main_image li a {
                display: block;
                width: 100%;
            }

        div.flicking_con {
            position: absolute;
            top: 25px;
            text-align: center;
            margin: 0 0 0 0;
            left: 0;
            width: 100%;
        }


            div.flicking_con .item-text {
                padding: 0;
                display: none;
                color: #fff;
            }

                div.flicking_con .item-text h4 {
                    color: #fff;
                    width: 100%;
                    overflow: hidden;
                    text-overflow: ellipsis;
                    white-space: nowrap;
                    margin-bottom: 15px;
                }

        .main_visual .flicking_con div.on {
            display: block;
        }

        .kePublic-cont-text {
            font-size: 12px;
            margin-top: 15px;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            word-wrap: break-word;
        }
    </style>
    <!-- 有手机背景的css end -->
    <link href="${ctx}/assets/templets/css/animate.min.css" type="text/css" rel="stylesheet">
    <style type="text/css">
        .po-bg {
            background-color: #f2f2f2;
            width: 255px;
            height: 454px;
            position: absolute;
            top: 180px;
            left: 31px;
        }

        .delay_1 {
            -webkit-animation-delay: 200ms;
            -o-animation-delay: 200ms;
            animation-delay: 200ms;
        }

        .delay_2 {
            -webkit-animation-delay: 400ms;
            -o-animation-delay: 400ms;
            animation-delay: 400ms;
        }

        .delay_3 {
            -webkit-animation-delay: 600ms;
            -o-animation-delay: 600ms;
            animation-delay: 600ms;
        }

        .animateUpDown {
            -webkit-animation-name: animateUpDown;
            -o-animation-name: animateUpDown;
            animation-name: animateUpDown;
            -webkit-animation-duration: 900ms;
            -o-animation-duration: 900ms;
            animation-duration: 900ms;
        }

        @-webkit-keyframes animateUpDown {
            0% {
                opacity: 0;
                -webkit-transform: translateY(100%);
                transform: translateY(100%);
            }

            40% {
                -webkit-transform: translateY(-20%);
                transform: translateY(-20%);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateY(0%);
                transform: translateY(0%);
            }
        }

        @-o-keyframes animateUpDown {
            0% {
                opacity: 0;
                -webkit-transform: translateY(100%);
                -o-transform: translateY(100%);
                transform: translateY(100%);
            }

            40% {
                -webkit-transform: translateY(-20%);
                -o-transform: translateY(-20%);
                transform: translateY(-20%);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateY(0%);
                -o-transform: translateY(0%);
                transform: translateY(0%);
            }
        }

        @keyframes animateUpDown {
            0% {
                opacity: 0;
                -webkit-transform: translateY(100%);
                -o-transform: translateY(100%);
                transform: translateY(100%);
            }

            40% {
                -webkit-transform: translateY(-20%);
                -o-transform: translateY(-20%);
                transform: translateY(-20%);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateY(0%);
                -o-transform: translateY(0%);
                transform: translateY(0%);
            }
        }

        .animateUp {
            -webkit-animation-name: animateUp;
            -o-animation-name: animateUp;
            animation-name: animateUp;
            -webkit-animation-duration: 500ms;
            -o-animation-duration: 500ms;
            animation-duration: 500ms;
            -webkit-animation-timing-function: cubic-bezier(.39, .575, .565, 1);
            -o-animation-timing-function: cubic-bezier(.39, .575, .565, 1);
            animation-timing-function: cubic-bezier(.39, .575, .565, 1);
        }

        @-webkit-keyframes animateUp {
            from {
                opacity: 0;
                -webkit-transform: translateY(50px);
                transform: translateY(50px);
            }

            to {
                opacity: 1;
                -webkit-transform: translateY(0%);
                transform: translateY(0%);
            }
        }

        @-o-keyframes animateUp {
            from {
                opacity: 0;
                -webkit-transform: translateY(50px);
                -o-transform: translateY(50px);
                transform: translateY(50px);
            }

            to {
                opacity: 1;
                -webkit-transform: translateY(0%);
                -o-transform: translateY(0%);
                transform: translateY(0%);
            }
        }

        @keyframes animateUp {
            from {
                opacity: 0;
                -webkit-transform: translateY(50px);
                -o-transform: translateY(50px);
                transform: translateY(50px);
            }

            to {
                opacity: 1;
                -webkit-transform: translateY(0%);
                -o-transform: translateY(0%);
                transform: translateY(0%);
            }
        }


        .cur .ShowBgUp {
            -webkit-animation-name: ShowBgUp;
            -o-animation-name: ShowBgUp;
            animation-name: ShowBgUp;
            -webkit-animation-duration: 1400ms;
            -o-animation-duration: 1400ms;
            animation-duration: 1400ms;
            -webkit-animation-timing-function: cubic-bezier(.39, .575, .565, 1);
            -o-animation-timing-function: cubic-bezier(.39, .575, .565, 1);
            animation-timing-function: cubic-bezier(.39, .575, .565, 1);
        }

        @-webkit-keyframes ShowBgUp {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @-o-keyframes ShowBgUp {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes ShowBgUp {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .move .ShowBgUp {
            opacity: 1;
            z-index: 9;
        }

        .cur .ShowBgUp {
            z-index: 10;
        }

        #banner .banner-item:nth-child(1) .banner-img {
            background-image: url(${ctx}/assets/templets/banner/img/health-banner1.jpg);
        }

        #banner .banner-item:nth-child(2) .banner-img {
            background-image: url(${ctx}/assets/templets/banner/img/health-banner2.jpg);
        }

        @media (-webkit-min-device-pixel-ratio:2) {
            #banner .banner-item:nth-child(1) .banner-img {
                background-image: url(${ctx}/assets/templets/banner/img/health-banner1-2x.jpg) !important;
            }

            #banner .banner-item:nth-child(2) .banner-img {
                background-image: url(${ctx}/assets/templets/banner/img/health-banner2-2x.jpg) !important;
            }
        }

        @media (max-width: 767px) {
            #banner .banner-item:nth-child(1) .banner-img {
                background-image: url(${ctx}/assets/templets/banner/img/health-banner1-app.jpg) !important;
            }

            #banner .banner-item:nth-child(2) .banner-img {
                background-image: url(${ctx}/assets/templets/banner/img/health-banner2-app.jpg) !important;
            }
        }
        .banner .banner-item .banner-text > div{
            margin-top:15%\9;/*兼容IE6 IE7 IE8*/
        }
         .original-shape{
            margin:auto;
            margin-top: 18%\9;
        }
    </style>
</head>
<body>
    <link rel="shortcut icon" href="favicon1.html" type="image/x-icon" />
<nav class="navbar navbar-default navbar-fixed-top u-navbar">
        <div class="container">
		<div class="row">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed">
                    <span class="sr-only">Toggle navigation</span>
					<span class="icon-bar icon-bar1"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar icon-bar2"></span>
                </button>
                <a class="navbar-brand" href="../index.html">
                    <figure class="ac-logo-icon pc-none"></figure>
                    <div class="logo-pc-div app-none">
                        <figure class="ac-familybrowser-icon"></figure>
                    </div>
                </a>
            </div>
            <div class="navbar-collapse collapse navbar-right" style="height: auto;">
                <!-- Main navigation -->
                <ul class="nav navbar-nav">



<li><a href="../index.html">关于我们</a></li>
      	<li class='click'><a href='index.html'>三一案例</a><p class='line-top'></p></li>

<li><a href="../corevalue/index.html">三一价值</a></li>
      	

<li><a href="../contactus/index.html">联系我们</a></li>
      	
                </ul>

               
            </div>
</div>
        </div>
    </nav>
    <!--rev slider start-->
    <!-- banner begin -->
    <link rel="stylesheet" type="text/css" href="${ctx}/assets/templets/banner/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/assets/templets/banner/css/banner.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/assets/templets/banner/css/style.css">

    <div id="banner" class="banner">
        <div class="banner-item animated" data-classin="fadeIn" data-classout="fadeOut delay10" data-time="400" data-thumb="/templets/default/banner/img/health-banner1-2x-small.jpg">
            <div class="banner-img"></div>
            <div class="banner-text vbox box-h-center box-v-center">
                <div>
                    <div class="animated" data-classin="fadeInDown delay5 duration5" data-classout="fadeOutUp delay duration5">
                        科技助力技术创新，实现更高协同价值
                    </div>
                    <div data-role="entext" class="animated" data-classin="fadeInUp delay7 duration5" data-classout="fadeOutDown delay duration5">
                        三 一 金 服
                    </div>

                </div>
            </div>
        </div>
        <div class="banner-item animated" data-classin="fadeIn" data-classout="fadeOut delay10" data-time="400" data-thumb="/templets/default/banner/img/health-banner2-2x-small.jpg">
            <div class="banner-img"></div>
            <div class="banner-text vbox box-h-center box-v-center">
                <div>
                    <div class="animated" data-classin="fadeInDown delay5 duration5" data-classout="fadeOutUp delay duration5">
                        选择三一金服，选择你所拥有
                    </div>
                    <div class="animated" data-margin="margin" data-classin="fadeInRight delay6 duration5" data-classout="fadeOutLeft delay duration5">
                        获得更优质的体系
                    </div>
                    <div data-role="entext" class="animated" data-classin="fadeInUp delay7 duration5" data-classout="fadeOutDown delay duration5">
                        三 一 金 服
                    </div>

                </div>
            </div>
        </div>
        <div class="banner-tool">
        </div>
        <div class="banner-prev">
        </div>
        <div class="banner-next">
        </div>
    </div>


    <!--scripts and plugins -->
    <!--must need plugin jquery-->
    <script src="${ctx}/assets/templets/banner/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${ctx}/assets/templets/banner/js/banner.js"></script>
    <script type="text/javascript">
        $("#banner").THBanner({ timer: 6000 });
    </script>
    <!-- banner end -->
    <div class="container">
        <div class="title-comm-tuhuan">
            <h3 class="welinain">以专业技术为您保驾护航</h3>
            <p class="line lineheight"></p>
            <p>三一互联网用专业的力量传递的意义，用先进的理念服务于客户</p>
        </div>
    </div>
    <div class="i-item-con itme-con">
        <div class="container">
            <div class="row">
                <div id="wrapper">
                    <figure style="position: relative">
                        <div class="mis-stage">
                            <ol class="mis-slider">
                                <li class="mis-slide">
                                    <a href="javascript:;" class="mis-container">
                                        <figure>
                                            <img src="${ctx}/assets/templets/img/garden01.jpg" alt="Pink Water Lillies">
                                            <figcaption>
                                                <p>综合全面评估</p>
                                                <div>基于现有业务与历史状况，综合评估</div>
                                            </figcaption>
                                        </figure>
                                    </a>
                                </li>
                                <li class="mis-slide">
                                    <a href="javascript:;" class="mis-container">
                                        <figure>
                                            <img src="${ctx}/assets/templets/img/garden02.jpg" alt="Pond with Lillies">
                                            <figcaption>
                                                <p>先进的技术储备</p>
                                                <div>专业技术人员倾力研发，专业定制</div>
                                            </figcaption>
                                        </figure>
                                    </a>
                                </li>

                                <li class="mis-slide">
                                    <a href="javascript:;" class="mis-container">
                                        <figure>
                                            <img src="${ctx}/assets/templets/img/garden05.jpg" alt="Shrine">
                                            <figcaption>
                                                <p>不一样的服务理念</p>
                                                <div>选择三一，就选择不同的经历</div>
                                            </figcaption>
                                        </figure>
                                    </a>
                                </li>

                            </ol>
                        </div>
                    </figure>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="title-comm-tuhuan" style="font-size: 16px;    padding: 0 20px;">
                <p class="mb8">在创新的时代下，三一金服立足创新型服务，联合各类卓越机构，深度挖掘优质、安全且多元的产品，为客户提供专业且定制化的智能服务，并努力打造更契合客户自身需求的管理方案</p>
                <p>三一服务</p>
                <p class="line-tuhuan lineheight"></p>

            </div>
            <div class="tuhuan-item-comm">
                <div class="col-xs-6" style="padding: 0;">
                    <img src="${ctx}/assets/templets/img/tuhuan1_l2x.jpg" class="img-responsive" />
                </div>
                <div class="col-xs-6" style="padding: 0;">
                    <img src="${ctx}/assets/templets/img/tuhuan1_r2x.jpg" class="img-responsive" />
                </div>
                <figure class="zljh-logo-icon ac-figure-icon"></figure>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="title-comm-tuhuan" style="font-size: 16px;    padding: 0 20px;">
                <p class="mb8">三一金服，持续的为您服务</p>
                <p></p>
                <p class="line-tuhuan lineheight"></p>
                <p class="tuhuan-text">更专业的技术</p>
            </div>
            <div class="tuhuan-item-comm">
                <div class="col-xs-6" style="padding: 0;">
                    <img src="${ctx}/assets/templets/img/tuhuan3_l2x.jpg" class="img-responsive" />
                </div>
                <div class="col-xs-6" style="padding: 0;">
                    <img src="${ctx}/assets/templets/img/tuhuan4_r2x.jpg" class="img-responsive" />
                </div>
                <figure class="hzsj-logo-icon ac-figure-icon"></figure>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="title-comm-tuhuan" style="font-size: 16px; padding: 0 20px;">
                <p class="mb8">平台先后荣获了等诸多荣誉</p>
                <p>“北邮科技园科技创新研究基地”、“中国互联网行业优秀示范企业”、“中国诚信守诺企业”</p>
                <p class="line-tuhuan lineheight"></p>
                <p class="tuhuan-text">等诸多荣誉</p>
            </div>
            <div class="tuhuan-item-comm">
                <div class="col-xs-6" style="padding: 0;">
                    <img src="${ctx}/assets/templets/img/tuhuan5_l2x.jpg" class="img-responsive" />
                </div>
                <div class="col-xs-6" style="padding: 0;">
                    <img src="${ctx}/assets/templets/img/tuhuan6_r2x.jpg" class="img-responsive" />
                </div>
                <div>
                    <figure class="hzgl-logo-icon ac-figure-icon"></figure>
                </div>
            </div>
        </div>
    </div>



    <div class="container">
        <div class="title-comm">



        </div>

    </div>
    <!-- footer begin -->
<footer>
    <div class="container">
        <div class="row">
            <div class="ac-gf-footer-legal">
                <div class="footer-legal-links">

                </div>
                <div class="footer-beizhu">Copyright &copy; 2018 三一互联网</div>
            </div>

        </div>
    </div>
</footer>
<div class="footer_app" style="display: none;"> Copyright &copy; 2018 三一互联网 </div>





<!--底部蒙层end-->
<script type="text/javascript">
    $(function() {
        $(".navbar-toggle").click(function () {
			$(this).toggleClass("click");
			$(".bg-div").toggleClass("hide");
			$("body").toggleClass("body-static");
			$(".navbar-form a").toggleClass("active");
			$(".navbar-collapse").slideToggle();
		});
		$(".bg-div").click(function () {
			$(".navbar-toggle").trigger("click");
		});

		var top = ($(window).height() - $(".modal-content").height()) / 2;
		$(".model-down").click(function () {
			$(".modal-content").css({ position: 'absolute', 'top': top});
		});
         $(".model-down-1").click(function () {
			$(".modal-content").css({ position: 'absolute', 'top': top});
		});

         $(".weixin-logo-icon").mouseleave(function () {
             $(this).prev().find(".popover").removeClass("hover");
         }).mouseenter(function () {
             $(this).prev().find(".popover").addClass("hover");
         });
         $(".shouji-logo-icon").mouseleave(function () {
             $(this).prev().find(".popover").removeClass("hover");
         }).mouseenter(function () {
             $(this).prev().find(".popover").addClass("hover");
         });

		var navAgent = navigator.userAgent.toLowerCase();
		if(navAgent.indexOf("thjk-app-ios") > -1 || navAgent.indexOf("thdoctor-app-ios") > -1 || navAgent.indexOf("thjk-app-android") > -1 || navAgent.indexOf("thdoctor-app-android") > -1){
			$(".navbar-form.navbar-right").hide();
			$(".nav > li:last-child a").css({"border-bottom":"0"});
		}

		$(".navbar-nav > li.click a").removeAttr("href");
    });
</script>
    <script type="text/javascript">

        function _IsIOS() {
            var ua = navigator.userAgent.toLowerCase();
            if (ua.indexOf("iphone") > -1) {
                return true;
            } else {
                return false;
            }
        }
        function _IsAndroid() {
            var ua = navigator.userAgent.toLowerCase();
            if (ua.indexOf("android") > -1) {
                return true;
            } else {
                return false;
            }
        }
        if (_IsIOS()) {
            $(".andio-icon").parent().hide();
            $(".iOS-icon").parent().show();
        }
        if (_IsAndroid()) {
            $(".andio-icon").parent().show();
            $(".iOS-icon").parent().hide();
        }
    </script>
    <script type="text/javascript" src="${ctx}/assets/templets/javascript/bootstrap.min.js"></script>

    <!--手机背景 图片切换 js -->
    <script type="text/javascript" src="${ctx}/assets/templets/javascript/jquery.event.drag-1.5.min.js"></script>
    <script type="text/javascript" src="${ctx}/assets/templets/javascript/jquery.touchSlider.js"></script>
    <script src="${ctx}/assets/templets/javascript/script.js" type="text/javascript"></script>
    <!--手机背景 图片切换 js/ -->
    <script>
        jQuery(function ($) {
            var slider = $('.mis-stage').miSlider({
                //  The height of the stage in px. Options: false or positive integer. false = height is calculated using maximum slide heights. Default: false
                stageHeight: 292,
                //  Number of slides visible at one time. Options: false or positive integer. false = Fit as many as possible.  Default: 1
                slidesOnStage: false,
                //  The location of the current slide on the stage. Options: 'left', 'right', 'center'. Defualt: 'left'
                slidePosition: 'center',
                //  The slide to start on. Options: 'beg', 'mid', 'end' or slide number starting at 1 - '1','2','3', etc. Defualt: 'beg'
                slideStart: 'mid',
                //  The relative percentage scaling factor of the current slide - other slides are scaled down. Options: positive number 100 or higher. 100 = No scaling. Defualt: 100
                slideScaling: 150,
                //  The vertical offset of the slide center as a percentage of slide height. Options:  positive or negative number. Neg value = up. Pos value = down. 0 = No offset. Default: 0
                offsetV: -5,
                //  Center slide contents vertically - Boolean. Default: false
                centerV: true,
                //  Opacity of the prev and next button navigation when not transitioning. Options: Number between 0 and 1. 0 (transparent) - 1 (opaque). Default: .5
                navButtonsOpacity: 1
            });
        });
    </script>
    <!-- 有手机背景的js start -->
    <script type="text/javascript">
        $(document).ready(function () {

            $dragBln = false;

            $(".main_image").touchSlider({
                flexible: true,
                speed: 200,
                btn_prev: $("#btn_prev"),
                btn_next: $("#btn_next"),
                paging: $(".flicking_con .item-text"),
                counter: function (e) {
                    $(".flicking_con .item-text").removeClass("on").eq(e.current - 1).addClass("on");
                }
            });

            $(".main_image").bind("mousedown", function () {
                $dragBln = false;
            });

            $(".main_image").bind("dragstart", function () {
                $dragBln = true;
            });

            $(".main_image a").click(function () {
                if ($dragBln) {
                    return false;
                }
            });

            timer = setInterval(function () {
                $("#btn_next").click();
            }, 5000);

            $(".main_visual").hover(function () {
                clearInterval(timer);
            }, function () {
                timer = setInterval(function () {
                    $("#btn_next").click();
                }, 5000);
            });

            $(".main_image").bind("touchstart", function () {
                clearInterval(timer);
            }).bind("touchend", function () {
                timer = setInterval(function () {
                    $("#btn_next").click();
                }, 5000);
            });

        });
    </script>
    <!-- 有手机背景的js end -->
    <script src="${ctx}/assets/templets/javascript/mislider.js"></script>
</body>


</html>
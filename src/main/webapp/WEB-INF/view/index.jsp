<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no"/>
    <title>关于我们-三一互联网服务</title>
    <meta name="description" content="三一互联网,三一互联网平台,三一互联网网站,三一互联网官网,三一互联网官方网站,三一互联网首页"/>
    <meta name="keywords" content="三一互联网,三一互联网平台,三一互联网网站,三一互联网官网,三一互联网官方网站,三一互联网首页"/>

    <link href="${ctx}/assets/templets/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="${ctx}/assets/templets/scss/style.min.css" type="text/css" rel="stylesheet"/>
    <link href="${ctx}/assets/templets/css/startcom.css" type="text/css" rel="stylesheet"/>
    <link href="${ctx}/assets/templets/scss/index.min.css" type="text/css" rel="stylesheet"/>
    <!--手机背景 图片切换 js -->
    <script type="text/javascript" src="${ctx}/assets/templets/javascript/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${ctx}/assets/templets/javascript/jquery.touchSlider.js"></script>
    <script src="${ctx}/assets/templets/javascript/script-about.js" type="text/javascript"></script><!--pc端图片切换js-->

    <!-- 有手机背景的js end -->
    <style type="text/css">
        .team_main_image {
            overflow: hidden;
            min-height: 187px;
        }





        @media (device-width: 320px) {
            .team_main_image {
                min-height: 166px;
            }
        }

        @media (device-width: 411px) {
            .team_main_image {
                min-height: 213px;
            }
        }

        @media (device-width: 412px) {
            .team_main_image {
                min-height: 213px;
            }
        }

        @media (device-width: 600px) {
            .team_main_image {
                min-height: 311px;
            }
        }

        @media (device-height: 480px) and (-webkit-min-device-pixel-ratio: 2) {
            /* 兼容iphone4/4s */
            .team_main_image {
                min-height: 166px;
            }
        }






        .team_main_image ul li {
            width: 100%;
            overflow: auto;
        }

        .team_main_visual {
            overflow: hidden;
            position: relative;
            width: 100%;
        }

        .team_textbox {
            background-color: rgba(59, 190, 122, .85);
            padding: 10px;
        }

        .mb-inav-about li div {
            width: 40px;
            height: 2px;
            background-color: rgba(170, 170, 170, .5);
            margin: 2px 10px 0 0;
        }

        .mb-inav-about li div.cur {
            background-image: url("${ctx}/assets/templets/img/switch.svg");
            background-repeat: no-repeat;
            width: 40px;
            height: 8px;
            background-size: 40px 8px;
            background-color: transparent;
            margin-top: -3px;
        }

        .item-li {
            transition: none;
        }

        .item-li:hover {
            cursor: pointer;
        }

        .mb-describe {
            background-color: rgba(59, 190, 122, .85);
            padding: 0;
            color: #fff;
            width: 100%;
            overflow: hidden;
        }

        .kePublic-rightdiv {
            padding: 0 5%;
            text-align: center;
            margin-top: 27% \9;
        }

        @media only screen and (max-width: 992px) and (min-width: 768px) {
            .kePublic-rightdiv {
                padding: 0;
            }
        }

        .tuandui-title {
            font-size: 18px;
            margin: 9% 0 5%;
        }

        .kePublic-cont-info {
            font-size: 14px;
            color: rgba(255, 255, 255, .8);
        }

        .jiankangguwen-ico {
            background-repeat: no-repeat;
            background-image: url("${ctx}/assets/templets/img/jiankangguwen-ico.png");
            background-size: 64px 64px;
            height: 64px;
            width: 64px;
            margin: auto;
        }

        .xietiaozhuanyuan-ico {
            background-repeat: no-repeat;
            background-image: url("${ctx}/assets/templets/img/xietiaozhuanyuan-ico.png");
            background-size: 64px 64px;
            height: 64px;
            width: 64px;
            margin: auto;
        }

        .jiatingyisheng-ico {
            background-repeat: no-repeat;
            background-image: url("${ctx}/assets/templets/img/jiatingyisheng-ico.png");
            background-size: 64px 64px;
            height: 64px;
            width: 64px;
            margin: auto;
        }

        .tuhuandaifu-ico {
            background-repeat: no-repeat;
            background-image: url("${ctx}/assets/templets/img/tuhuandaifu-ico.png");
            background-size: 64px 64px;
            height: 64px;
            width: 64px;
            margin: auto;
        }

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
            width: 100%;
            position: relative;
        }

        .mb-ibox {
            width: 100%;
            overflow: hidden;
            z-index: 1;
        }

        .mb-ibox a {
            position: absolute;
            width: 100%;
            height: 100%;
            z-index: 5;
            left: 0;
            top: 0;
            display: block;
        }

        .mb-ibox a:first-child {
            z-index: 6;
        }

        .mb-ibox a.move {
            z-index: 8;
            position: relative;
        }

        .mb-ibox a.cur {
            z-index: 8;
            position: relative;
        }

        .mb-inav-about {
            z-index: 10 !important;
            width: 210px;
            overflow: hidden;
            margin: 0 auto;
            margin-top: 4.5%;
            padding-top: 4px;
        }

        .mb-inav-about li {
            float: left;
        }

        div.flicking_con {
            text-align: center;
            margin: 0 0 0 0;
            left: 0;
            width: 100%;
            height: 149px;
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
            margin-bottom: 10px;
        }

        .team_main_visual .flicking_con div.on {
            display: block;
        }

        .kePublic-cont-text {
            font-size: 12px;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 5;
            -webkit-box-orient: vertical;
            word-wrap: break-word;
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





        .cur1 .ShowBgUp {
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





        .cur .ShowBgUp {
            z-index: 10;
        }
    </style>
    <style type="text/css">
        /*banner css start*/
        #banner .banner-item .banner-text > div:first-child {
            font-size: 48px;
        }

        #banner .banner-item em {
            font-size: 66px;
        }

        #banner .banner-item .banner-text > div:last-child {
            font-size: 20px;
        }

        #banner .banner-item:nth-child(1) .banner-img {
            background-image: url(${ctx}/assets/templets/banner/img/future-start-banner.jpg);
        }

        #banner .banner-item:nth-child(2) .banner-img {
            background-image: url(${ctx}/assets/templets/banner/img/about-us-banner.jpg);
        }

        #banner .banner-item:nth-child(3) .banner-img {
            background-image: url(${ctx}/assets/templets/banner/img/about-us-banner-2.jpg);
        }

        @media (-webkit-min-device-pixel-ratio: 2) {
            #banner .banner-item:nth-child(1) .banner-img {
                background-image: url(${ctx}/assets/templets/banner/img/future-start-banner-2x.jpg) !important;
            }

            #banner .banner-item:nth-child(2) .banner-img {
                background-image: url(${ctx}/assets/templets/banner/img/about-us-banner-2x.jpg) !important;
            }

            #banner .banner-item:nth-child(3) .banner-img {
                background-image: url(${ctx}/assets/templets/banner/img/about-us-banner-2x-2.jpg) !important;
            }
        }

        @media (max-width: 767px) {
            #banner .banner-item .banner-text > div > div[data-role='entext'] {
                padding: 0 !important;
            }

            #banner .banner-item .banner-text > div:first-child {
                font-size: 24px;
            }

            #banner .banner-item em {
                font-size: 20px;
            }

            #banner .banner-item .banner-text > div:last-child {
                font-size: 10px;
            }

            #banner .banner-item:nth-child(1) .banner-img {
                background-image: url(${ctx}/assets/templets/banner/img/future-start-banner-app.jpg) !important;
            }

            #banner .banner-item:nth-child(2) .banner-img {
                background-image: url(${ctx}/assets/templets/banner/img/about-us-banner-app.jpg) !important;
            }

            #banner .banner-item:nth-child(3) .banner-img {
                background-image: url(${ctx}/assets/templets/banner/img/about-us-banner-app-2.jpg) !important;
            }
        }

        /*banner css end*/
        .team-person {
            position: relative;
            margin: 0 20px;
        }

        .slideup_info p {
            color: #333;
            margin-bottom: 0;
        }

        .slideup_info {
            color: #666;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 3;
            opacity: 0;
            width: 100%;
            height: 100%;
            text-align: center;
            background-color: #fff;
            transition: all 0.4s ease-in-out;
        }

        .team-person.hover .slideup_info {
            opacity: 0.9;
        }

        .team-person > div img {
            transition: all 0.3s;
            cursor: pointer;
        }

        .team-person.hover > div img {
            transform: scale(1.02);
            -webkit-filter: blur(4px);
            -moz-filter: blur(4px);
            -ms-filter: blur(4px);
            -webkit-filter: blur(4px);
            filter: blur(4px);
        }

        .leader-line {
            border-top: 1px solid #3bbe7a;
            width: 70px;
            margin: 25px auto;
        }

        .slideup_info_bg {
            border: 4px solid rgba(59, 190, 122, .7);
            height: 100%;
            display: -webkit-flex;
            display: flex;
            flex-flow: column;
            -webkit-align-items: center;
            align-items: center;
            -webkit-justify-content: center;
            justify-content: center;
        }

        .i-item-con-div {
            transition: all 0.4s ease-in-out;
            padding: 3% 0;
            background-color: rgba(255, 255, 255, .98);
        }

        .team-person.hover .i-item-con-div {
            opacity: 0;
        }

        .slideup_info ul {
            margin: 0;
        }

        .slideup_info ul li {
            line-height: 26px;
        }

        @media only screen and (max-width: 767px) {
            .col-small-12 {
                width: 100%;
            }

            .team-person {
                position: relative;
                margin: 10px 0;
            }

            .itme-con {
                padding: 15px 0;
            }

            .leader-line {
                margin: 13px auto 10px;
            }
        }

        .banner .banner-item .banner-text > div {
            margin-top: 18% \9; /*兼容IE6 IE7 IE8*/
        }

        .slideup_info_bg > div {
            margin-top: 32% \9; /*兼容IE6 IE7 IE8*/
        }

        .banner .banner-item .banner-img.other:before {
            background-color: transparent !important;
        }

        /*新增banner字体*/
        #banner .banner-item .banner-text > div > div#smallfont {
            font-size: 25px;
            font-weight: normal;
            color: #fff;
            background-color: rgba(59, 190, 122, .9);
            display: inline;
            text-align: center;
            border-radius: 2px;
            padding: 5px 10px;
        }

        #banner .banner-item .banner-text > div > div#future-banner-font {
            margin-left: -5%
        }

        #banner .banner-item .banner-text > div > div#future-banner-font, #banner .banner-item .banner-text > div > div#future-banner-font-o {
            text-align: left;
            font-size: 50px;
            color: #676767
        }

        #banner .banner-item .banner-text #other {
            margin: 0 auto;
        }

        @media (max-width: 1152px) {
            #banner .banner-item .banner-text > div > div#smallfont {
                font-size: 20px;
            }

            #banner .banner-item .banner-text > div > div#future-banner-font, #banner .banner-item .banner-text > div > div#future-banner-font-o {
                font-size: 40px;
            }
        }

        @media (max-width: 1024px) {
            #banner .banner-item .banner-text > div > div#smallfont {
                font-size: 16px;
            }

            #banner .banner-item .banner-text > div > div#future-banner-font, #banner .banner-item .banner-text > div > div#future-banner-font-o {
                font-size: 30px;
            }
        }

        @media (max-width: 767px) {
            #banner .banner-item .banner-text #other {
                margin-left: 15px;
            }

            #banner .banner-item .banner-text > div > div#smallfont {
                font-size: 12px;
            }

            #banner .banner-item .banner-text > div > div#future-banner-font, #banner .banner-item .banner-text > div > div#future-banner-font-o {
                font-size: 26px;
            }
        }

        @media (max-width: 640px) {
            #banner .banner-item .banner-text > div > div#smallfont {
                font-size: 12px;
            }

            #banner .banner-item .banner-text > div > div#future-banner-font, #banner .banner-item .banner-text > div > div#future-banner-font-o {
                font-size: 24px;
            }
        }

        @media (max-width: 640px) {
            #banner .banner-item .banner-text > div > div#smallfont {
                font-size: 12px;
            }

            #banner .banner-item .banner-text > div > div#future-banner-font, #banner .banner-item .banner-text > div > div#future-banner-font-o {
                font-size: 24px;
            }
        }

        @media (max-width: 520px) {
            #banner .banner-item .banner-text > div > div#smallfont {
                font-size: 12px;
            }

            #banner .banner-item .banner-text > div > div#future-banner-font, #banner .banner-item .banner-text > div > div#future-banner-font-o {
                font-size: 18px;
            }
        }

        @media (max-width: 410px) {
            #banner .banner-item .banner-text > div > div#smallfont {
                font-size: 12px;
            }

            #banner .banner-item .banner-text > div > div#future-banner-font, #banner .banner-item .banner-text > div > div#future-banner-font-o {
                font-size: 16px;
            }

        }
    </style>

</head>
<body>
<link rel="shortcut icon" href="favicon1.html" type="image/x-icon"/>
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
                <a class="navbar-brand" href="index.html">
                    <figure class="ac-logo-icon pc-none"></figure>
                    <div class="logo-pc-div app-none">
                        <figure class="ac-familybrowser-icon"></figure>
                    </div>
                </a>
            </div>
            <div class="navbar-collapse collapse navbar-right" style="height: auto;">
                <!-- Main navigation -->
                <ul class="nav navbar-nav">

                    <li class='click'><a href='aboutus/index.html'>关于我们</a>
                        <p class='line-top'></p></li>

                    <li><a href="case/index.html">三一案例</a></li>


                    <li><a href="corevalue/index.html">三一价值</a></li>


                    <li><a href="contactus/index.html">联系我们</a></li>

                </ul>

              
            </div>
        </div>
    </div>
</nav>
<!--banner start-->
<link rel="stylesheet" type="text/css" href="${ctx}/assets/templets/banner/css/animate.min.css">
<link rel="stylesheet" type="text/css" href="${ctx}/assets/templets/banner/css/banner.min.css">
<link rel="stylesheet" type="text/css" href="${ctx}/assets/templets/banner/css/style.css">

<div id="banner" class="banner">
    <div class="banner-item animated" data-classin="fadeIn" data-classout="fadeOut delay10" data-time="400"
         data-thumb="/${ctx}/assets/templets/banner/img/future-start-banner1-2x-small.jpg">
        <div class="banner-img other"></div>

            <div class="banner-text vbox  box-v-center">
                <div class="container" id="other">
                    <div class="animated" data-classin="fadeInDown delay5 duration5"
                         data-classout="fadeOutUp delay duration5" id="future-banner-font">
                        三一金服<br/>
                    </div>
                    <div data-role="entext" class="animated " id="future-banner-font-o"
                         data-classin="fadeInUp delay7 duration5"
                         data-classout="fadeOutDown delay duration5" style="margin-bottom: 3%">
                        智慧 服务与创新
                    </div>
                    <div class="animated" id="smallfont" data-classin="fadeInUp delay9 duration5"
                         data-classout="fadeOutDown delay duration7">
                        智慧桥梁,更好的选择
                    </div>
                </div>
            </div>

    </div>
    <div class="banner-item animated" data-classin="fadeIn" data-classout="fadeOut delay10" data-time="400"
         data-thumb="${ctx}/assets/templets/banner/img/aboutus-banner1-2x-small.jpg">
        <div class="banner-img"></div>
        <div class="banner-text vbox box-h-center box-v-center">
            <div style="margin-left: 33%;">
                <div class="animated" data-classin="fadeInDown delay5 duration5"
                     data-classout="fadeOutUp delay duration5">
                    拥抱 <em>三一 </em> 一路同行
                </div>
                <div data-role="entext" class="animated" data-classin="fadeInUp delay7 duration5"
                     data-classout="fadeOutDown delay duration5" style="margin-top:5%">
                    三 一 金 服
                </div>
            </div>
        </div>
    </div>
    <div class="banner-item animated" data-classin="fadeIn" data-classout="fadeOut delay10" data-time="400"
         data-thumb="${ctx}/assets/templets/banner/img/aboutus-banner2-2x-small.jpg">
        <div class="banner-img"></div>
        <div class="banner-text vbox box-h-center box-v-center">
            <div style="margin-left: 7%;">
                <div class="animated" data-classin="fadeInDown delay5 duration5"
                     data-classout="fadeOutUp delay duration5">
                    连接您与智慧的桥梁
                </div>
                <div class="animated" data-role="entext" data-classin="fadeInUp delay7 duration5"
                     data-classout="fadeOutDown delay duration5" style="margin-top:2%">
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

<script type="text/javascript" src="${ctx}/assets/templets/banner/js/banner.js"></script>
<script type="text/javascript">
    $("#banner").THBanner();
</script>
<!--banner end-->

<div class="container linian-con">
    <div class="title-comm">
        <h3 class="welinain">源自三一、助力发展、科技创新</h3>
        <p class="line"></p>
        <p class="linh25">三一互联网，以创新科技驱动，以绝对的专业服务为前提和基石，将移动互联网、数据技术应用于智慧服务</p>
        <p class="linh25">用科技，改善工作的效率；用科技，让优质的服务源惠及更多的家庭；用科技，让更多的人受惠于技术带来的改变</p>
        <p class="linh25">三一金服，您事业的起点</p>
    </div>
    <div class="row linian-div">

        <div class="col-lg-4  large-3 small-12">
            <div class="col-div">
                <figure class="chonggou-logo-icon ac-figure-icon"></figure>
                <h4>科技</h4>
                <div class="f12">为客户提供更高品质科技服务</div>
                <div class="f12" style="margin-top: 2px;">帮助客户在科技进步中获益</div>
            </div>
        </div><!-- /.col-lg-4 -->

        <div class="col-lg-4  large-3 small-12">
            <div class="col-div">
                <figure class="chuanxin-logo-icon ac-figure-icon"></figure>
                <h4>创新</h4>
                <div class="f12">协同现有技术体系，以主动服务客户为核心</div>
                <div class="f12" style="margin-top: 2px;">更好的维护客户价值权益</div>
            </div>
        </div><!-- /.col-lg-4 -->

        <div class="col-lg-4  large-3 small-12">
            <div class="col-div">
                <figure class="chonggou-logo-icon ac-figure-icon"></figure>
                <h4>服务</h4>
                <div class="f12">以先进的服务理念</div>
                <div class="f12" style="margin-top: 2px;">给消客户带来真正的服务</div>
            </div>
        </div><!-- /.col-lg-4 -->
    </div>

</div>


<div class="container">
    <div class="title-comm">
        <h3 class="welinain">三一互联网优质的技术服务团队</h3>
        <p class="line"></p>
    </div>
    <div class="row">
        <div class=" app-none" style="position:relative;">
            <div class="mb-describe hbox box-v-center">
                <div class="col-md-8" style="padding:0">
                    <div  class="mb-ibox ">

                        <a  class="cur">
                            <div class=" "><img src=${ctx}/assets/templets/img/xietiaozhuanyuan1.jpg
                                                                 class="img-responsive"></div>
                        </a>

                    </div>
                </div>
                <div id="mb-itxt" class="col-md-4">
                    <div style="display: block;">
                        <div class="kePublic-rightdiv">
                            <div class="jiankangguwen-ico animated animateUp delay_1"></div>
                            <div class="tuandui-title">
                                <div class="animated animateUp delay_2">个人专属解决方案专家</div>
                            </div>
                            <div class="kePublic-cont-info animated animateUp delay_3">
                                拥有多年技术服务与支持的工作经验，让您的沟通更有质量，帮助您获得更精准的技术服务
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="team_main_visual pc-none">
            <div class="team_main_image">
                <ul style="width:100% !important;">

                    <li><img src=${ctx}/assets/templets/img/xietiaozhuanyuan1.jpg class="img-responsive"></li>

                </ul>
                <a href="javascript:;" id="btn_prev"></a>
                <a href="javascript:;" id="btn_next"></a>
            </div>
            <div class="flicking_con team_textbox vbox box-v-center">
                <div class="item-text on">
                    <h4>个人专属解决方案专家</h4>
                    <div class="kePublic-cont-text">拥有多年技术服务与支持的工作经验，让您的沟通更有质量，帮助您获得更精准的技术服务</div>
                </div>

            </div>
        </div>

    </div>
</div>
<div class="container">
    <div class="title-comm">
        <h3 class="welinain">三一互联网的愿景</h3>
        <p class="line"></p>
        <p class="mtop40">永怀专业信念，以前瞻视野，定义技术服务新未来</p>
    </div>
</div>


<div class=" app-none">
    <div style="background: url(${ctx}/assets/templets/img/about-yuanjing.jpg) 50% 0%; height: 420px;">
        <div class="container">
            <div class="row">
                <div class="tuhuanyuanjing" style="text-align: center; color: rgba(255, 255, 255, 0.8)">
                    <figure class="chonggou-logo-icon ac-figure-icon"></figure>
                    <p class="text-white" style="margin-top: 3.2%;">三一互联网，协同于现有的服务体系，致力于构建更精准的技术服务模式</p>
                    <p class="text-white">三一互联网，以信息技术为基础，移动互联网平台为工具组成的"技术服务团队"</p>
                    <p>提供基于个人与公司的技术服务</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="pc-none">
    <div class="hbox box-v-center"
         style="background-image: url(${ctx}/assets/templets/img/about-yuanjing.jpg);  background-size: cover !important;z-index: 0; background-position: 50% 50% !important;    height: 260px !important;">
        <div class="container">
            <div class="row">
                <div class="tuhuanyuanjing-app">
                    <figure class="chonggou-logo-icon ac-figure-icon"></figure>
                    <p class="text-white" style="margin-top: 3.2%; line-height: 24px;">
                        三一互联网，协同于现有的服务体系，致力于构建更精准的服务模式。三一互联网，以信息技术为基础，移动互联网平台为工具组成的"技术服务团队"，提供基于个人与公司的技术服务</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="lightboxOverlay" class="lightboxOverlay" style="display: none;"></div>

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
<div class="footer_app" style="display: none;"> Copyright &copy; 2018 三一互联网</div>




<!--底部蒙层end-->
<script type="text/javascript">
    $(function () {
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
            $(".modal-content").css({position: 'absolute', 'top': top});
        });
        $(".model-down-1").click(function () {
            $(".modal-content").css({position: 'absolute', 'top': top});
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
        if (navAgent.indexOf("thjk-app-ios") > -1 || navAgent.indexOf("thdoctor-app-ios") > -1 || navAgent.indexOf("thjk-app-android") > -1 || navAgent.indexOf("thdoctor-app-android") > -1) {
            $(".navbar-form.navbar-right").hide();
            $(".nav > li:last-child a").css({"border-bottom": "0"});
        }

        $(".navbar-nav > li.click a").removeAttr("href");
    });
</script>
<link href="${ctx}/assets/templets/skrollr/theme-cobalt.css" rel="stylesheet" type="text/css" media="all">
<script src="${ctx}/assets/templets/skrollr/jquery.plugin.min.js"></script>
<script src="${ctx}/assets/templets/skrollr/jquery.flexslider-min.js"></script>
<script src="${ctx}/assets/templets/skrollr/smooth-scroll.min.js"></script>
<script src="${ctx}/assets/templets/skrollr/skrollr.min.js"></script>
<script src="${ctx}/assets/templets/skrollr/spectragram.min.js"></script>
<script src="${ctx}/assets/templets/skrollr/scrollReveal.min.js"></script>
<script src="${ctx}/assets/templets/skrollr/isotope.min.js"></script>
<script src="${ctx}/assets/templets/skrollr/lightbox.min.js"></script>
<script src="${ctx}/assets/templets/skrollr/scripts.js"></script>
<script type="text/javascript">
    $(function () {
        var itemdiv = $(".i-item-con .col-lg-4");
        itemdiv.hover(function () {
            $(this).addClass("item-active").siblings().removeClass("item-active");
        }).hover(function () {
        }, function () {
            $(this).removeClass("item-active");
        });
        var itemdiv = $(".team-person");
        itemdiv.hover(function () {
            $(this).addClass("hover").siblings().removeClass("hover");
        }).hover(function () {
        }, function () {
            $(this).removeClass("hover");
        });
    });
</script>
<script type="text/javascript" src="${ctx}/assets/templets/javascript/bootstrap.min.js"></script>
</body>


</html>
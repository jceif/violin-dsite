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
    <title>价值聚焦-三一互联网</title>

    <meta name="description" content="价值-三一金服" />
    <meta name="keywords" content="三一互联网,三一互联网,三一互联网,三一互联网科技,三一互联网科技" />

    <link href="${ctx}/assets/templets/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="${ctx}/assets/templets/scss/content.min.css" type="text/css" rel="stylesheet" />
    <script src="${ctx}/assets/templets/banner/js/jquery.min.js"></script>
    <style type="text/css">
        .col-md-6 {
            height: 380px;
        }

        .yuan {
            position: absolute;
            top: -10px;
            left: -10px;
        }

        .valuefocus_ico {
            width: 243px;
            border-radius: 100%;
            height: 243px;
        }

        .asmall-title {
            text-align: center;
            color: #3bbe7a;
            font-size: 18px;
            margin: 0 0 2%;
        }

        .jiankangguanli-title {
            text-align: center;
            color: #3bbe7a;
            font-size: 18px;
            margin: 0 0 4%;
        }

        .jiankangguanli {
            margin-top: 80px;
            background-color: rgba(222, 223, 212,.3);
            padding: 3% 0;
        }

        .jiankangguanli-content {
            text-align: center;
            margin-top: 30px;
        }

            .jiankangguanli-content h4 {
                margin-bottom: 15px;
                line-height: 24px;
            }

        .jiankangguanli-div-l {
            margin-left: -15px;
            margin-right: 5%;
        }

        .jiankangguanli-div-r {
            margin-right: -15px;
            margin-left: 5%;
        }

        .jzjj-map {
            margin-bottom: 100px;
            margin-right: -15px;
            margin-left: -15px;
        }

        @media only screen and (max-width: 767px) {
            .jiankangguanli {
                margin-top: 40px;
                padding: 30px 0 10px;
            }

            .jiankangguanli-title {
                margin: 0 0 30px;
            }

            .yuan {
                top: 0;
                left: 0;
            }

            .valuefocus_ico {
                width: 180px;
                height: 180px;
                border: none;
            }

            .col-md-6 {
                height: 283px;
            }

            .jzjj-map {
                margin: 0;
                margin-bottom: 50px;
            }

            .jiankangguanli-div-l {
                margin: 0;
            }

            .jiankangguanli-div-r {
                margin: 0;
            }

            .asmall-title {
                margin-bottom: 30px;
            }



            .jiankangguanli-content {
                margin-top: 15px;
                margin-bottom: 20px;
            }

                .jiankangguanli-content h4 {
                    margin-bottom: 7px;
                }
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
      	

<li><a href="../case/index.html">三一案例</a></li>
      	<li class='click'><a href='index.html'>三一价值</a><p class='line-top'></p></li>

<li><a href="../contactus/index.html">联系我们</a></li>
      	
                </ul>

                
            </div>
</div>
        </div>
    </nav>
    <div class="global" style="min-height: 750px;">
        <div class="valuefocue-banner">
            <div class="container">
                <div class="row" style="position: relative;">
                    <img src="${ctx}/assets/templets/img/value-font-banner.png" class="img-responsive" id="myimg" />
                </div>

            </div>
        </div>
        <div class="container">
            <div class="title-comm">
                <h3 class="welinain">个人与企业</h3>
                <h3 class="welinain" style="margin-top:5px;">更早选择三一金服，更多获取获益</h3>
                <p class="line"></p>
            </div>
        </div>
        <div class="choose-we">
            <div class="container">
                <div class="row">
                    <p class="asmall-title">— <b>超值的技术服务</b> —</p>
                    <div class="col-md-6">
                        <div class="tcenter">
                            <div class="valuefocus_ico1 valuefocus_ico">
                                <canvas class="yuan app-none" id="yuan-1" data-value="10000" data-average="10000" width="253" height="253"></canvas>
                                <canvas class="yuan pc-none" id="yuan-app-1" data-value="10000" data-average="10000" width="180" height="180"></canvas>
                                <div class="valuefocus-ico1-img">
                                    <span class="valuefocus-font" id="myTargetElement-1">10000</span>
                                </div>
                            </div>
                            <div class="valuefocus-cont-font">
                                <h4>用1000元投入</h4>
                                <p class="f12">可有效节约费用开支约10000元</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="tcenter">
                            <div class="valuefocus_ico1 valuefocus_ico">
                                <canvas class="yuan app-none" id="yuan-2" data-value="999" data-average="999" width="253" height="253" style="position: absolute;  top: -10px; left: -10px;"></canvas>
                                <canvas class="yuan pc-none" id="yuan-app-2" data-value="999" data-average="999" width="180" height="180"></canvas>
                                <div class="valuefocus-ico2-img">
                                    <span class="valuefocus-font" id="myTargetElement-2">999</span>
                                </div>
                            </div>
                            <div class="valuefocus-cont-font">
                                <h4>专业团队</h4>
                                <p class="f12">专业人员服务只要999，不满意就退款</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="tcenter">
                            <div class="valuefocus_ico1 valuefocus_ico">
                                <canvas class="yuan app-none" id="yuan-3" data-value="12000" data-average="12000" width="253" height="253" style="position: absolute;  top: -10px; left: -10px;"></canvas>
                                <canvas class="yuan pc-none" id="yuan-app-3" data-value="12000" data-average="12000" width="180" height="180"></canvas>
                                <div class="valuefocus-ico3-img">
                                    <span class="valuefocus-font" id="myTargetElement-3">12000</span>
                                </div>
                            </div>
                            <div class="valuefocus-cont-font">
                                <h4>个人用户</h4>
                                <p class="f12">多重选择，按年最高立减12000</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="tcenter">
                            <div class="valuefocus_ico1 valuefocus_ico">
                                <canvas class="yuan app-none" id="yuan-4" data-value="30" data-average="30" width="253" height="253" style="position: absolute;  top: -10px; left: -10px;"></canvas>
                                <canvas class="yuan pc-none" id="yuan-app-4" data-value="30" data-average="30" width="180" height="180"></canvas>
                                <div class="valuefocus-ico4-img">
                                    <span class="valuefocus-font" id="myTargetElement-4">30</span>
                                </div>
                            </div>
                            <div class="valuefocus-cont-font">
                                <h4>企业用户</h4>
                                <p class="f12">老客户,30%直降打折</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="container">
            <div class="title-comm">
                <h3 class="welinain">三一互联网优质的技术服务团队</h3>
                <p class="line"></p>
                <p class="mtop20 linh25">三一金服依托强大的技术背景及雄厚的股东实力，秉承“安全、专业、透明”的经营理念，提供更便捷、更高效的综合服务</p>
            </div>

            <div class="jzjj-map app-none">
                <img src="${ctx}/assets/templets/img/jzjj-map.jpg" class="img-responsive">
            </div>
            <div class="row pc-none"><img src="${ctx}/assets/templets/img/about-yuanjing-app.jpg" class="img-responsive"></div>
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
<div class="footer_app" style="display: none;"> Copyright &copy; 2018 三一互联网科技科技有限公司 </div>



<!-- 弹出微信框  /-->

<style type="text/css">
    .bg-div {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,.5);
        z-index: 50;
    }

    .body-static {
        overflow: hidden !important;
    }

    .bg-div.hide {
        display: none;
    }
</style>
<div class="bg-div hide">

</div>
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

    <script type="text/javascript" src="${ctx}/assets/templets/javascript/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/assets/templets/javascript/countUp.js"></script>

    <script type="text/javascript">
        jQuery.fn.circleProgress = function () {
            var value = $(this).attr("data-value")
            var average = $(this).attr("data-average");
            var id = $(this).attr("id");
            var canvas = document.getElementById(id);
            var context = canvas.getContext('2d');
            var _this = $(canvas),
            value = Number(value),// 当前百分比,数值
            average = Number(average),// 平均百分比
            color = "",// 进度条、文字样式
            maxpercent = 15000,//最大百分比，可设置
            c_width = _this.width(),// canvas，宽度
            c_height = _this.height();// canvas,高度
            // 判断设置当前显示颜色
            if (value == maxpercent) {
                color = "#fff";
            } else if (value > average) {
                color = "#27b5ff";
            } else {
                color = "rgba(222, 223, 212,.8)";
            }
            // 清空画布
            context.clearRect(0, 0, c_width, c_height);
            // 画初始圆
            context.beginPath();
            // 将起始点移到canvas中心
            context.moveTo(c_width / 2, c_height / 2);
            // 绘制一个中心点为（c_width/2, c_height/2），半径为c_height/2，起始点0，终止点为Math.PI * 2的 整圆
            context.arc(c_width / 2, c_height / 2, c_height / 2, 0, Math.PI * 2, true);
            context.closePath();
            context.fillStyle = 'rgba(59, 190, 122, 0.8)'; //填充颜色
            context.fill();
            // 绘制内圆
            context.beginPath();
            context.strokeStyle = color;
            context.lineCap = 'square';
            context.closePath();
            context.fill();
            context.lineWidth = 10.0;//绘制内圆的线宽度
            context.globalCompositeOperation = 'source-over'

            function draw(cur) {
                // 画内部空白
                context.beginPath();
                context.moveTo(24, 24);
                context.arc(c_width / 2, c_height / 2, c_height / 2 - 10, 0, Math.PI * 2, false);
                context.closePath();
                context.fillStyle = 'rgba(222, 223, 212,.8)';  // 填充内部颜色
                context.fill();
                // 画内圆
                context.beginPath();
                // 绘制一个中心点为（c_width/2, c_height/2），半径为c_height/2-5不与外圆重叠，
                // 起始点-(Math.PI/2)，终止点为((Math.PI*2)*cur)-Math.PI/2的 整圆cur为每一次绘制的距离
                //context.arc(c_width / 2, c_height / 2, c_height / 2 - 5, -(Math.PI / 2), ((Math.PI * 2) * cur) - Math.PI / 2, false);
                context.arc(c_width / 2, c_height / 2, c_height / 2 - 5, -(Math.PI / 2), ((Math.PI * 2) * -cur) - Math.PI / 2, true);
                context.stroke();
                //在中间写字
                context.font = "bold 18pt Arial";  // 字体大小，样式
                context.fillStyle = '#fff';  // 颜色
                context.textAlign = 'center';  // 位置
                context.textBaseline = 'middle';
                context.moveTo(c_width / 2, c_height / 2);  // 文字填充位置
                context.fillText("-" + value, c_width / 2, c_height / 2);
            }
            // 调用定时器实现动态效果
            var timer = null, n = 0;
            function loadCanvas(nowT) {
                timer = setInterval(function () {
                    if (n > nowT) {
                        clearInterval(timer);
                    } else {
                        draw(n);
                        n += 0.01;
                    }
                }, 40);
            }
            loadCanvas(value / 15000);
            timer = null;
        };
        jQuery.fn.circleProgress_1 = function () {
            var value = $(this).attr("data-value")
            var average = $(this).attr("data-average");
            var id = $(this).attr("id");
            var canvas = document.getElementById(id);
            var context = canvas.getContext('2d');
            var _this = $(canvas),
            value = Number(value),// 当前百分比,数值
            average = Number(average),// 平均百分比
            color = "",// 进度条、文字样式
            maxpercent = 100,//最大百分比，可设置
            c_width = _this.width(),// canvas，宽度
            c_height = _this.height();// canvas,高度
            // 判断设置当前显示颜色
            if (value == maxpercent) {
                color = "#fff";
            } else if (value > average) {
                color = "#27b5ff";
            } else {
                color = "rgba(222, 223, 212,.8)";
            }
            // 清空画布
            context.clearRect(0, 0, c_width, c_height);
            // 画初始圆
            context.beginPath();
            // 将起始点移到canvas中心
            context.moveTo(c_width / 2, c_height / 2);
            // 绘制一个中心点为（c_width/2, c_height/2），半径为c_height/2，起始点0，终止点为Math.PI * 2的 整圆
            context.arc(c_width / 2, c_height / 2, c_height / 2, 0, Math.PI * 2, true);
            context.closePath();
            context.fillStyle = 'rgba(59, 190, 122, 0.8)'; //填充颜色
            context.fill();
            // 绘制内圆
            context.beginPath();
            context.strokeStyle = color;
            context.lineCap = 'square';
            context.closePath();
            context.fill();
            context.lineWidth = 10.0;//绘制内圆的线宽度
            context.globalCompositeOperation = 'source-over'

            function draw(cur) {
                // 画内部空白
                context.beginPath();
                context.moveTo(24, 24);
                context.arc(c_width / 2, c_height / 2, c_height / 2 - 10, 0, Math.PI * 2, false);
                context.closePath();
                context.fillStyle = '#7b7a76';  // 填充内部颜色
                context.fill();
                // 画内圆
                context.beginPath();
                // 绘制一个中心点为（c_width/2, c_height/2），半径为c_height/2-5不与外圆重叠，
                // 起始点-(Math.PI/2)，终止点为((Math.PI*2)*cur)-Math.PI/2的 整圆cur为每一次绘制的距离
                //context.arc(c_width / 2, c_height / 2, c_height / 2 - 5, -(Math.PI / 2), ((Math.PI * 2) * cur) - Math.PI / 2, false);
                context.arc(c_width / 2, c_height / 2, c_height / 2 - 5, -(Math.PI / 2), ((Math.PI * 2) * -cur) - Math.PI / 2, true);
                context.stroke();
                //在中间写字
                context.font = "bold 18pt Arial";  // 字体大小，样式
                context.fillStyle = '#fff';  // 颜色
                context.textAlign = 'center';  // 位置
                context.textBaseline = 'middle';
                context.moveTo(c_width / 2, c_height / 2);  // 文字填充位置
                context.fillText("-" + value, c_width / 2, c_height / 2);
            }
            // 调用定时器实现动态效果
            var timer = null, n = 0;
            function loadCanvas(nowT) {
                timer = setInterval(function () {
                    if (n > nowT) {
                        clearInterval(timer);
                    } else {
                        draw(n);
                        n += 0.01;
                    }
                }, 40);
            }
            loadCanvas(value / 100);
            timer = null;
        };

        function gdjz(div, cssname, offset) {
            var a, b, c, d;
            d = $(div).offset().top;
            a = eval(d + offset);
            b = $(window).scrollTop();
            c = $(window).height();
            if (b + c > a) {
                $((div)).addClass((cssname));
            }
        }

        $(function () {
            var options = {
                useEasing: false,
                useGrouping: false,
                separator: '',
                decimal: '',
                prefix: '',
            }
            var demo1 = new CountUp("myTargetElement-1", 0, -10000, 0, 2.5, options);
            var demo2 = new CountUp("myTargetElement-2", 0, -999, 0, 1.2, options);
            var demo3 = new CountUp("myTargetElement-3", 0, -12000, 0, 3.2, options);
            var demo4 = new CountUp("myTargetElement-4", 0, -30, 0, 1, options);
            demo1.start();
            demo2.start();
            demo3.start();
            demo4.start();

            $("#yuan-app-1").circleProgress();
            $("#yuan-app-2").circleProgress();
            $("#yuan-app-3").circleProgress();
            $("#yuan-app-4").circleProgress_1();

            $("#yuan-1").circleProgress();
            $("#yuan-2").circleProgress();
            $("#yuan-3").circleProgress();
            $("#yuan-4").circleProgress_1();
        })
    </script>
</body>


</html>
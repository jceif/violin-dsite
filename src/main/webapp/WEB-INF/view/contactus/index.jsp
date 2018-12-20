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
    <title>联系我们-三一互联网</title>

    <meta name="description" content="三一互联网—让优质技术资源发挥更广泛价值，让大众获得更便捷可及、优质高效与值得信赖的科技服务" />
    <meta name="keywords" content="三一互联网,三一互联网,三一互联网,三一互联网科技,三一互联网科技" />

    <script src="${ctx}/assets/templets/banner/js/jquery.min.js"></script>
    <link href="${ctx}/assets/templets/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="${ctx}/assets/templets/scss/content.min.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        #allmap {
            width: 100%;
            height: 500px;
        }

        p {
            margin-left: 5px;
            font-size: 14px;
        }

        .BMap_mask {
            width: 100% !important;
            height: 100% !important;
        }

        @media (max-width:767px) {
            #allmap {
                width: 100%;
                height: 275px;
                margin-top: 45px;
            }
        }
    </style>
    <style type="text/css">
        .anchorBL {
            display: none;
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
      	

<li><a href="../corevalue/index.html">三一价值</a></li>
      	<li class='click'><a href='index.html'>联系我们</a><p class='line-top'></p></li>
                </ul>

           
            </div>
</div>
        </div>
    </nav>
    <div class="global" >
        <div id="allmap" style="display:none;">
	
		</div>
		<div style="width:100%;text-align:center;margin-top:100px;">
			<img src="../images/map.png">
		</div>
        <div class="container">
			
            <div class="title-comm">
                <h3 class="welinain">联系我们</h3>
                <p class="line"></p>
                <p class="linh25 f12">三一互联网—让优质技术资源发挥更广泛价值，让大众获得更便捷可及、优质高效与值得信赖的科技服务</p>
            </div>
            <div class="row contactus">
                <div class="col-lg-4 large-3 small-12">
                    <div class="tcenter contactus-item">
                        <figure class="contact-kefu ac-figure-icon"></figure>
                        <div>
                            <h4>联系客服</h4>
                            <p class="f12">电话：400-0389-909</p>
                            <!--<p class="f12">邮箱：service@sctuhuan.com</p>-->
                            <p class="f12">工作时间：09：00~18：00（周一到周日）</p>
                        </div>
                    </div>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4 large-3 small-12">
                    <div class="tcenter contactus-item">
                        <figure class="contact-swhz ac-figure-icon"></figure>
                        <div>
                            <h4>商务合作</h4>
                            <p class="f12">电话：400-0389-909</p>
                        </div>
                    </div>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4 large-3 small-12">
                    <div class="tcenter contactus-item">
                        <figure class="contact-dizhi ac-figure-icon"></figure>
                        <div>
                            <h4>公司地址</h4>
                            <p class="f12">河北省邯郸市魏县文化街56号</p>
                            <p class="f12">邮编：610017</p>
                            <p class="f12">电话：400-0389-909</p>
                        </div>
                    </div>
                </div><!-- /.col-lg-4 -->
            </div>
           
        </div>
    </div>
    <!-- footer begin -->
<footer>
    <div class="container">
        <div class="row">
            <div class="ac-gf-footer-legal">

                <div class="footer-beizhu">Copyright &copy; 2018 三一互联网</div>
            </div>

        </div>
    </div>
</footer>
<div class="footer_app" style="display: none;"> Copyright &copy; 2018 三一互联网科技科技有限公司 </div>
<!-- footer end -->




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
    <style type="text/css">
        img[src='/templets/default/img/icon2.png'] {
            width: 50px;
            height: 50px;
        }
    </style>
</body>

</html>

    
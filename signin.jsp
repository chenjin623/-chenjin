<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html class="login-bg">
<head>
	<title>登录</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="back_css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="back_css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="back_css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="back_css/layout.css" />
    <link rel="stylesheet" type="text/css" href="back_css/elements.css" />
    <link rel="stylesheet" type="text/css" href="back_css/icons.css" />

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="back_css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="back_css/compiled/signin.css" type="text/css" media="screen" />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>


    <!-- background switcher -->
    <div class="bg-switch visible-desktop">
        <div class="bgs">
            <a href="#" data-img="landscape.jpg" class="bg active">
                <img src="back_img/bgs/landscape.jpg" />
            </a>
            <a href="#" data-img="blueish.jpg" class="bg">
                <img src="back_img/bgs/blueish.jpg" />
            </a>            
            <a href="#" data-img="7.jpg" class="bg">
                <img src="back_img/bgs/7.jpg" />
            </a>
            <a href="#" data-img="8.jpg" class="bg">
                <img src="back_img/bgs/8.jpg" />
            </a>
            <a href="#" data-img="9.jpg" class="bg">
                <img src="back_img/bgs/9.jpg" />
            </a>
            <a href="#" data-img="10.jpg" class="bg">
                <img src="back_img/bgs/10.jpg" />
            </a>
            <a href="#" data-img="11.jpg" class="bg">
                <img src="back_img/bgs/11.jpg" />
            </a>
        </div>
    </div>


    <div class="row-fluid login-wrapper">
        <a href="back_index.html">
            <img class="logo" src="back_img/logo-white.png" />
        </a>

        <div class="span4 box">
            <div class="content-wrap">
                <h6 style="font-size:20px;">登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录</h6>
                <form action="back_login">
                    <input name="admin.adId" class="span12" type="text" placeholder="请输入你的用户名" style="font-family:'楷体'" />
                    <input name="admin.adPassword" class="span12" type="password" placeholder="请输入密码" style="font-family:'楷体'"/>
                    <a href="#" class="forgot" style="text-decoration:none;">忘记密码？</a>
                    <input style="border-style:none; font-family:'楷体'; font-size:17px; font-weight:bold;" class="btn-glow primary login" type="submit" value="登&nbsp;录">
                </form>
            </div>
        </div>

    </div>

	<!-- scripts -->
    <script src="back_js/jquery-latest.js"></script>
    <script src="back_js/bootstrap.min.js"></script>
    <script src="back_js/theme.js"></script>

    <!-- pre load bg imgs -->
    <script type="text/javascript">
        $(function () {
            // bg switcher
            var $btns = $(".bg-switch .bg");
            $btns.click(function (e) {
                e.preventDefault();
                $btns.removeClass("active");
                $(this).addClass("active");
                var bg = $(this).data("img");

                $("html").css("background-image", "url('back_img/bgs/" + bg + "')");
            });

        });
    </script>
</body>
</html>
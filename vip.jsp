<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>会员开通页面</title>
<link rel="shortcut icon" type="image/x-icon" href="images/yuexinicon.png" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="minCSS/shangchuanstyle.css" rel="stylesheet" media="all" />	
<!--//theme-style-->
<meta name="renderer" content="webkit"><!-- 强制选择高速模式 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<link href="css/nav.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab,#horizontalTab1,#horizontalTab2').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
			   </script>


<script src="js/main.js"></script> <!-- Resource jQuery -->
<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  	ga('create', 'UA-48014931-1', 'codyhouse.co');
  	ga('send', 'pageview');

  	jQuery(document).ready(function($){
  		$('.close-carbon-adv').on('click', function(){
  			$('#carbonads-container').hide();
  		});
  	});
</script>		   
</head>
<body>
<!--header-->
<div class="back">
	<img src="images/back.png" alt="">
</div>	
<div class="container">
<div class="main-top">
	<div class="main">
		<div class="header">
			<div class="header-top">
				<div class="header-in">
					<a href="index.jsp">  
					<div class="logo">			
				        <div class="ltr ltr1" style="font-family: FontName">悦</div>
    					<div class="ltr ltr2" style="font-family: FontName">♡</div>
   					 	<div class="ltr ltr3" style="font-family: FontName">音</div>
    					<div class="ltr ltr4" style="font-family: FontName">乐</div>
    				</div>
    				</a>
					<form action="searchAll">
						<div class="search">
							<div>
	  							<input name="nameKey" type="text" name="country" id="autocomplete"/>
	  							<button type="submit"><span style="color:#fff" class="glyphicon glyphicon-search"></span></button>
	  						</div>
						</div>
					</form>
					<div id="selection"></div>
    				<script type="text/javascript" src="SearchCSSandJS/jquery.mockjax.js"></script>
    				<script type="text/javascript" src="SearchCSSandJS/jquery.autocomplete.js"></script>
    				<script type="text/javascript" src="SearchCSSandJS/countries.js"></script>
    				<script type="text/javascript" src="SearchCSSandJS/demo.js"></script>
					<div class="clearfix"> </div>
				</div>
<!-- 登录注册界面 -->							
		<link rel="stylesheet" type="text/css" href="minCSS/demo.css" />
        <link rel="stylesheet" type="text/css" href="minCSS/style2.css" />   
		<link rel="stylesheet" type="text/css" href="minCSS/animate.css" />
		<script src="js/indexlogin.js"></script>
					<div class="md-modal md-effect-13" id="modal-13">
			<div class="container">
            <section>				
                <div style="cursor:pointer;position:absolute;top:-262px;left:75px"  id="container_demo" >
       
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form name="Login" action="login" method="post"> 
                                <h1>会员登录</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="">用户名:</label>
                                    <div class="input-group input-group-lg">
 									<span class="input-group-addon" id="basic-addon1"><span style="color:#0099FF" class="glyphicon glyphicon-user"></span></span>
  									<input name="user.userId" type="text" class="form-control" placeholder="请填写用户名" aria-describedby="basic-addon1" required="required" >
								    </div>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="">密码:</label>
                                    <div class="input-group input-group-lg">
 									<span class="input-group-addon" id="basic-addon1"><span style="color:#0099FF" class="glyphicon glyphicon-lock"></span></span>
  									<input name="user.userpassword" type="password" class="form-control" placeholder="请填写密码" aria-describedby="basic-addon1" required="required">
								    </div> 
                                </p>
                                 <p>
                                    <a class="wangji" href="wangjimima.jsp">忘记密码？</a>
                                 </p>                          
                                <p class="exit button0"> 
                                    <input class="md-close" style="float:left"  type="button" value="退出" /> 
								</p>
                                                           
                                <p class="login button"> 
                                    <input  type="submit" value="登录"/> 
								</p>
								 
                                <p class="change_link">
									还没有注册？
									<a class="zhuce" href="register1.jsp">快来注册</a>
								</p>
                            </form>
                        </div>

                    </div>
                </div>  
            </section>
        </div>
		</div>	
		<%
          	String id = (String)session.getAttribute("id");
      		if(id==null){
     	%>
			<a class="md-trigger" data-modal="modal-13" style="cursor:pointer;position:absolute;top:5px;right:75px">登录</a>
			<h5 style="position:absolute;top:8px;right:60px">┃</h5>
			<a href="register1.jsp" data-modal="modal-13" style="cursor:pointer;position:absolute;top:5px;right:30px">注册</a>
		<%
       		}else{
       	 %>
		<a href="userInfo?user.userId=<%=id %>" data-modal="modal-13" style="cursor:pointer;position:absolute;top:5px;right:75px">欢迎<%=id %>登录！</a>
		<h5 style="position:absolute;top:8px;right:60px">┃</h5>
		<a href="exit.action" class="md-trigger" data-modal="modal-13" style="cursor:pointer;position:absolute;top:5px;right:30px">退出</a>
		<%
       		}
       	 %>
		<div class="md-overlay"></div><!-- 覆盖层的元素 -->

		<!-- 对于模糊效果的代码 -->
		<!--请访问： https://github.com/Schepp/CSS-Filters-Polyfill -->
		<script>
			// 这个对于IE的兼容很重要
			var polyfilter_scriptpath = '/js/';
		</script>
		  <script src="minCSS/index0.js"></script>
<!--  -->
				
				<div class="header-top-on">
					<p style="position:absolute;right:130px;top:42px;"><strong>扫一扫微信公众号二维码：</strong></p>
					<p style="position:absolute;right:189px;top:62px;"><strong>YueXinMusic000</strong></p>
					
					<div style="position:absolute;right:28px;top:23px">
						<img style="width:100px;height:100px;" src="images/erweima.jpg" alt="二维码" />
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!---->
			<div class="header-bottom">
				<div class="navigation">	
				<div>
				  <label class="mobile_menu" for="mobile_menu">
				  <span>Menu</span>
				  </label>
				  <input id="mobile_menu" type="checkbox">
					<ul class="nav0">
						<li><a class="color1" style="font-family: FontName" href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;主&nbsp;&nbsp;页</a></li>                  
						<li><a href="musicYUEXIN.jsp" style="font-family: FontName" class="color2">&nbsp;歌&nbsp;&nbsp;&nbsp;单&nbsp;</a></li>            
						<li><a href="fPageCD?type=cd" style="font-family: FontName" class="color3">&nbsp;专&nbsp;&nbsp;&nbsp;辑&nbsp;</a></li>						  
						<li class="singerYUEXIN1.jsp" ><a href="getSingerBylang?music.musiclanguage=欧美" style="font-family: FontName" class="color4">艺&nbsp;&nbsp;术&nbsp;&nbsp;家<span> </span></a>
						<ul>
						  <li><a href="musicYUEXIN.jsp" style="font-family: FontName">&nbsp;&nbsp;歌&nbsp;&nbsp;&nbsp;单</a></li>
						  <li><a href="fPageCD?type=cd" style="font-family: FontName">&nbsp;&nbsp;专&nbsp;&nbsp;&nbsp;辑</a></li>
						</ul>
						</li>  
						<li><a href="MVindex.jsp" style="font-family: FontName" class="color5">&nbsp;M&nbsp;&nbsp;&nbsp;V&nbsp;</a></li>
						<li><a href="contact.jsp" style="font-family: FontName" class="color6">联&nbsp;&nbsp;系&nbsp;&nbsp;我&nbsp;&nbsp;们</a></li>				
					</ul>
				</div>			
			</div>
		</div>
	</div>
		<!---->
		<link rel="stylesheet" href="minCSS/VIPstyle.css">
		<link rel="stylesheet" href="minCSS/iconfont.css">
			<p style="font-size:2em;" >欢迎来到！开通会员界面</p>					
<div class="row">
<div class="col-md-12">	


<div class="lm-tabel">
  <div class="lm-item lm-item-2">
    <div class="lm-item-top"><span class="lm-item-title lm-underline"><span style="font-size:60px" class="glyphicon glyphicon-sunglasses"></span></span>
      <div class="lm-item-price">游客</div>
    </div>
    <div class="lm-item-body">
      <div class="lm-item-desc"><strong>免费</strong>
      </div>
      <ul class="lm-item-list">
        <li><i style="color:#8AC800" class="icon iconfont">&#xe6a1;</i>　试听普通音质<i class="icon-ok"></i></li>
        <li><i style="color:#0099FF" class="icon iconfont">&#xe60d;</i>　观看并下载普通mv视频<i class="icon-cancel"></i></li>
        <li><i style="color:#CC0033" class="icon iconfont">&#xe602;</i>　观看高级360°mv视频<i class="icon-cancel"></i></li>
        <li><i style="color:#FFBF00" class="icon iconfont">&#xe684;</i>　下载普通音质<i class="icon-cancel"></i></li>
        <li><i style="color:#FF8200" class="icon iconfont">&#xe690;</i>　下载高音质<i class="icon-cancel"></i></li>
        <li><span style="font-size:20px;color:#930093" class="glyphicon glyphicon-sort-by-attributes"></span>　批量下载<i class="icon-cancel"></i></li>
        <li><span style="font-size:20px;color:#fa0000" class="glyphicon glyphicon-king"></span>　尊贵VIP标识<i class="icon-cancel"></i></li>
      </ul>
      <div class="lm-item-link">
          <svg width="152" height="52" xmlns="http://www.w3.org/2000/svg">
            <defs>
              <lineargradient id="lm-gr-2" x1="0" y1="0" x2="100%" y2="100%">
                <stop offset="0%" stop-color="#777777"></stop>
                <stop offset="100%" stop-color="#777777"></stop>
              </lineargradient>
            </defs>
            <rect x="1" y="1" width="150" height="50" rx="25" fill="#fff" stroke="url(#lm-gr-2)" stroke-width="1"></rect>
            <text x="23%" y="65%" fill="url(&quot;#lm-gr-2&quot;)">已经拥有</text>
          </svg></a></div>
    </div>
    <div class="lm-item-bottom"></div>
  </div>
  <div class="lm-item lm-item-1">
    <div class="lm-item-top"><span class="lm-item-title lm-underline"><span style="font-size:60px;color:#fa0000" class="glyphicon glyphicon-king"></span></span>
      <div class="lm-item-price">悦心会员</div>
    </div>
    <div class="lm-item-body">
      <div class="lm-item-desc"><strong>10元/月</strong>
      </div>
      <ul class="lm-item-list">
        <li><i style="color:#8AC800" class="icon iconfont">&#xe6a1;</i>　试听普通音质<i class="icon-ok"></i></li>
        <li><i style="color:#0099FF" class="icon iconfont">&#xe60d;</i>　观看并下载普通mv视频<i class="icon-ok"></i></li>
        <li><i style="color:#CC0033" class="icon iconfont">&#xe602;</i>　观看高级360°mv视频<i class="icon-ok"></i></li>
        <li><i style="color:#FFBF00" class="icon iconfont">&#xe684;</i>　下载普通音质<i class="icon-ok"></i></li>
        <li><i style="color:#FF8200" class="icon iconfont">&#xe690;</i>　下载高音质<i class="icon-ok"></i></li>
        <li><span style="font-size:20px;color:#930093" class="glyphicon glyphicon-sort-by-attributes"></span>　批量下载<i class="icon-ok"></i></li>
        <li><span style="font-size:20px;color:#fa0000" class="glyphicon glyphicon-king"></span>　尊贵VIP标识<i class="icon-ok"></i></li>
      </ul>
      <div class="lm-item-link"><a href="#">
          <svg width="152" height="52" xmlns="http://www.w3.org/2000/svg">
            <defs>
              <lineargradient id="lm-gr-1" x1="0" y1="0" x2="100%" y2="100%">
                <stop offset="0%" stop-color="#fa0000"></stop>
                <stop offset="100%" stop-color="#fa0000"></stop>
              </lineargradient>
            </defs>
            <rect x="1" y="1" width="150" height="50" rx="25" fill="#fff" stroke="url(#lm-gr-1)" stroke-width="1"></rect>
            <text x="23%" y="65%" fill="url(&quot;#lm-gr-1&quot;)">马上开通</text>
          </svg></a></div>
    </div>
    <div class="lm-item-bottom"><span class="lm-underline">悦心会员</span>赶快过来开通吧!</div>
  </div>
  <div class="lm-item lm-item-3">
    <div class="lm-item-top"><span class="lm-item-title lm-underline"><span style="font-size:60px" class="glyphicon glyphicon-user"></span></span>
      <div class="lm-item-price">悦心用户</div>
    </div>
    <div class="lm-item-body">
      <div class="lm-item-desc"><strong>注册获得</strong>
      </div>
       <ul class="lm-item-list">
        <li><i style="color:#8AC800" class="icon iconfont">&#xe6a1;</i>　试听普通音质<i class="icon-ok"></i></li>
        <li><i style="color:#0099FF" class="icon iconfont">&#xe60d;</i>　观看并下载普通mv视频<i class="icon-ok"></i></li>
        <li><i style="color:#CC0033" class="icon iconfont">&#xe602;</i>　观看高级360°mv视频<i class="icon-cancel"></i></li>
        <li><i style="color:#FFBF00" class="icon iconfont">&#xe684;</i>　下载普通音质<i class="icon-ok"></i></li>
        <li><i style="color:#FF8200" class="icon iconfont">&#xe690;</i>　下载高音质<i class="icon-cancel"></i></li>
        <li><span style="font-size:20px;color:#930093" class="glyphicon glyphicon-sort-by-attributes"></span>　批量下载<i class="icon-cancel"></i></li>
        <li><span style="font-size:20px;color:#fa0000" class="glyphicon glyphicon-king"></span>　尊贵VIP标识<i class="icon-cancel"></i></li>
      </ul>
      <div class="lm-item-link"><a href="register.jsp">
          <svg width="152" height="52" xmlns="http://www.w3.org/2000/svg">
            <defs>
              <lineargradient id="lm-gr" x1="0" y1="0" x2="100%" y2="100%">
                <stop offset="0%" stop-color="#0099FF"></stop>
                <stop offset="100%" stop-color="#0099FF"></stop>
              </lineargradient>
            </defs>
            <rect x="1" y="1" width="150" height="50" rx="25" fill="#fff" stroke="url(#lm-gr)" stroke-width="1"></rect>
            <text x="23%" y="65%" fill="url(&quot;#lm-gr&quot;)">点击注册</text>
          </svg></a></div>
    </div>
    <div class="lm-item-bottom"></div>
  </div>
</div>
 <script>
 (function() {
	  $(document).ready(function() {
	    var arrItems;
	    arrItems = $('.lm-item');
	    return arrItems.hover(function() {
	      return arrItems.addClass('blur');
	    }, function() {
	      return arrItems.removeClass('blur');
	    });
	  });

	}).call(this);
 </script>

</div>
</div>						
		</div>
	<i class="line"> </i>
	<i class="line-in"> </i>	
	</div>

	<p class="footer-class">版权所有 © 2015 <a href="#" target="_blank">悦心音乐</a> </p>
</div>
</body>
</html>
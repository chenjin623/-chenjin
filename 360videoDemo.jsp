<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>BeatsteaksMeantime360°视频</title>
<link rel="shortcut icon" type="image/x-icon" href="images/yuexinicon.png" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script> 
<!-- Custom Theme files -->
<!--theme-style-->
<link href="minCSS/style.css" rel="stylesheet" type="text/css" media="all" />	
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
						<div class="row"><div class="col-md-1">&nbsp;</div></div>
				
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
		
	<!--警告栏-->	
	<div class="row">
		<div class="col-md-12">
	<div  class="alert alert-danger alert-dismissible" role="alert">
  		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  		<span class="glyphicon glyphicon-alert" aria-hidden="true"></span>
  		<strong>注意!</strong> 请使用<a href="http://www.google.cn/intl/zh-CN/chrome/browser/desktop/index.jsp" class="alert-link">谷歌浏览器</a>或<a href="http://www.firefox.com.cn/" class="alert-link">火狐浏览器</a>才能正常观看360°自由视角视频,如果有请点击右边&nbsp;<strong style="font-size:22px">×</strong>&nbsp;关闭此警告！
	</div>
	</div>
	</div>
	<!---->
	
			<h1 style="font-size:2.5em;" >Beatsteaks – Meantime</h1>
						
	<div class="row">
		<div class="col-md-1">&nbsp;
		</div>
	</div>
			
	<!-- 视频样式 -->
<style>
div .video-js {
    margin: 0 auto;
}
</style>

<link rel="stylesheet" href="360videoCSS/video-js.css">
<script src="360videoJS/video.dev.js"></script>
<script src="360videoJS/three.min.js"></script>


<!-- VR里的东西是可选的，必须是三个被定义后， -->
<script src="360videoJS/vr.js"></script>
<script src="360videoJS/OculusRiftControls.js"></script>
<script src="360videoJS/OculusRiftEffect.js"></script>


<div id="container">
<video class="video-js vjs-default-skin" width="864" height="432" src="video/BeatsteaksMeantime.mp4" data-setup="{}" controls>
<source src="video/BeatsteaksMeantime.mp4" type="video/mp4">
</video>
</div>

<script src="360videoJS/videojs.vr.js"></script>

<!--
       因为它在加载video.js将自动初始化视频元素
  该文件的头部，但你仍然需要配置和初始化插入。
-->
<script>
  // 保存引用视频元素
  var video = document.querySelector('video');

  // 保存参考video.js播放器的元素
  var player = videojs(video);

  // 初始化插件与一些自定义的选项：
  player.vr({projection: "Sphere"}); //'Plane'的预置在默认情况下
</script>
	<!---->	
	
	<div class="row">
		<div class="col-md-1">&nbsp;
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-1" style="left:10px">	
			<button type="button" class="btn btn-default btn-lg disabled" title="发布日期">
    			<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> 2015.11.24
    		</button>
    	</div>
    	<div class="col-md-6" style="left:80px">
    		<a href="#">	
				<button type="button" class="btn btn-default btn-lg" title="艺术家">
    				<span class="glyphicon glyphicon-user" aria-hidden="true"></span> Beatsteaks
    			</button>
    		</a>
    	</div>
    	<div class="col-md-1" style="left:90px">	
				<a tabindex="0" role="button" class="btn btn-primary btn-lg js-popover" data-container="body" data-toggle="popover" data-trigger="focus" data-placement="left" data-content="视频播放时将鼠标指针移动至视频屏幕并单击，移动鼠标即可体验自由视角观看，按Esc键即可退出自由视角。" title="360°视频操作说明">
    				<span class="glyphicon glyphicon-hand-up" aria-hidden="true"></span> 查看操作   
    			</a>
    	</div>   	
    		<!-- 查看操作引用的JS -->
			<script src="js/transition.js"></script>
			<script src="js/tooltip.js"></script>
			<script src="js/popover.js"></script>
			<!-- 手动初始化API -->
			<script>
				$(function () {
  				$('.js-popover').popover()
				})
			</script>
<link href="minCSS/BUTTONstyle.css" rel="stylesheet"/>				 	
    	<div class="col-md-1" style="left:145px;top:-2px;">
    		<div class="button7">
      			<a class="cc" style="position: relative;z-index: 9999;" href="#"><span class="glyphicon glyphicon-save" aria-hidden="true"></span> 点击下载</a>
      			<p class="dd top">点击按钮开始下载</p>
      			<p class="dd bottom">243.2MB .mp4</p>
    		</div>
    	</div>
    </div>		
			
			
		</div>
	<i class="line"> </i>
	<i class="line-in"> </i>
	
	</div>
	
	
	
	
	<p class="footer-class">版权所有 © 2015 <a href="#" target="_blank">悦心音乐</a> </p>
<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</div>
</body>
</html>

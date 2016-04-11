<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>歌单页面</title>
<link rel="shortcut icon" type="image/x-icon" href="images/yuexinicon.png" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/bootstrap.js"></script>
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="minCSS/style.css" rel="stylesheet" media="all" />	
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
		<link rel="stylesheet" href="minCSS/SINGERcssANDjs/TABSstyle.css">
		<link rel="stylesheet" href="minCSS/iconfont.css">
		<div class="row"><div class="col-md-1">&nbsp;</div></div>
		<div class="row"><div class="col-md-1">&nbsp;</div></div>
			
<div class="row">
 <div class="col-md-12">
      <ul class="nav nav111-tabs nav111-tabs-left" style="font-family:FontName;position:relative;top:-37px">
        <li class="active">
          <a href="#ALLmusic" data-toggle="tab">
            <span style="font-size:28px;" class="glyphicon glyphicon-th"></span>全部
          </a>
        </li>
        <li>
          <a href="#LIUXINGmusic" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe619;</i>流行
          </a>
        </li>
        <li>
          <a href="#YAOGUNmusic" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe610;</i>摇滚
          </a>
        </li>
        <li>
          <a href="#DIANYINmusic" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe644;</i>电音
          </a>
        </li>
        <li>
          <a href="#SHUOCHANGmusic" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe7f2;</i>说唱
          </a>
        </li>
        <li>
          <a href="#JINGDIANmusic" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xf0040;</i>经典
          </a>
        </li>
        <li>
          <a href="#JUESHImusic" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe61f;</i>爵士
          </a>
        </li>
        <li>
          <a href="#MINYAOmusic" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe637;</i>民谣
          </a>
        </li>
        <li>
          <a href="#XIANGCUNmusic" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#x343c;</i>乡村
          </a>
        </li>
        <li>
          <a href="#GUOYUmusic" data-toggle="tab" style="position:absolute;top:-525px;left:125px;">
            <i style="font-style:normal">国</i><i style="font-style:normal">语</i>
          </a>
        </li>
        <li>
          <a href="#YUEYUmusic" data-toggle="tab" style="position:absolute;top:-525px;left:210px;">
            <i style="font-style:normal">粤</i><i style="font-style:normal">语</i>
          </a>
        </li>
        <li>
          <a href="#OUMEImusic" data-toggle="tab" style="position:absolute;top:-525px;left:295px;">
            <i style="font-style:normal">欧</i><i style="font-style:normal">美</i>
          </a>
        </li>
        <li>
          <a href="#HANYUmusic" data-toggle="tab" style="position:absolute;top:-525px;left:380px;">
            <i style="font-style:normal">韩</i><i style="font-style:normal">语</i>
          </a>
        </li>
        <li>
          <a href="#RIYUmusic" data-toggle="tab" style="position:absolute;top:-525px;left:465px;">
            <i style="font-style:normal">日</i><i style="font-style:normal">语</i>
          </a>
        </li>
        <li>
          <a href="#EYUmusic" data-toggle="tab" style="position:absolute;top:-525px;left:550px;">
            <i style="font-style:normal">俄</i><i style="font-style:normal">语</i>
          </a>
        </li>
        <li>
          <a href="#FAYUmusic" data-toggle="tab" style="position:absolute;top:-525px;left:635px;">
            <i style="font-style:normal">法</i><i style="font-style:normal">语</i>
          </a>
        </li>
        <li>
          <a href="#TAIYUmusic" data-toggle="tab" style="position:absolute;top:-525px;left:720px;">
            <i style="font-style:normal">泰</i><i style="font-style:normal">语</i>
          </a>
        </li>
      </ul>
<!-- 全部歌单 -->
      <div id="my_side_tabs" class="tab-content side-tabs side-tabs-left" style="margin-left: -55px;">
        <div class="tab-pane fade in active" id="ALLmusic" >
	<h3 style="position:relative;font-family:FontName;left:855px">全部歌单</h3>
	 <a href="#">
      <div class="image-box" title="不随波逐流的你很美">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/SPmp59heyQ3oHMA2yibvkc0xmFNXkJgn0fia16NnfU8yZfbuBSAqchCQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">不随波逐流的你很美</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="2016吃货魔音宇宙首发">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/xSHOefGSs4heAvjAeg643gKw6zdm80icDCtVMyBBnbTWh0q3sycGRQw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">2016吃货魔音宇宙首发</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="华语柔情，音乐感动你">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/q2IYzR2AP0iaePs6M5NgZ6ZYcIQ33rhr8ACs6Uum7CicU9mDiaxF5esHw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">华语柔情，音乐感动你</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="欧美节奏控必备">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/qd3u5IHSYTibuCvMfYlatECQZdrxibWuEw4Q5Y58G1LurQicqHb8utH2Q/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">欧美节奏控必备</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="音乐诗人气质的词句">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Qol0GAbR74R5wZlEgOd7stRCibvlc3nvnkYyQwkMbKkia5RFb5SIdJlw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">音乐诗人气质的词句</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="【拉的道义】单相思">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ndvOX4uUdlRHL6XxDr0wic3GJopRt1ib8uEZBJPc7KmdmibFlClKOIwgw/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">【拉的道义】单相思</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="那一瞬间，你终于发现">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/scZXFZstSaYhIVhriaibhQX6xT8qaqhkBs5LDOiarylIIwUZNFYiaicf0yg/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">那一瞬间，你终于发现</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="摇滚的被缚与抗争">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/CY3xGFwDkIvTEnh3UlaZYNQVNcbFwkribvrrMFe3YZc5rWicGl1MJf3g/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">摇滚的被缚与抗争</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="「日系」那些年，我们唱着情歌">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJZMKMUx1ry3wmPnCnJTD7DZJzib4ibfdrwg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">「日系」那些年，我们唱着情歌</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="全世界为你唱这首小情歌">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/UBZxdictjPBBL8X7Zf9h3mcSJLqjoBkYfFj56jdY1RJSyvbo9TXIxLA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">全世界为你唱这首小情歌</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="再也寻不到深渊中的你">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/2LoHwEFAojoCnS1R1aVbrDTwq2sYI0ibhBIn59NxBPVh5y8UErqDf6w/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">再也寻不到深渊中的你</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="静下心来享受回忆">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/FWVTKe9tJicoyN9yR97Hx1b94uf7RBC3bSo0BkmlXBKibw1wt4DMd9Pg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">静下心来享受回忆</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="华语男声，暖心恋曲">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/NlU5z7rO4UsL3QOagglh3tN6l8fribHHX6ZHeGjzO8pmc7kSpynibTQQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">华语男声，暖心恋曲</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="有没有一首歌会让你轻轻跟着和">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/kdz5m5dGibPicAfSc6bEYbGqWa1DxTeozu62u71HqqGzdaIRJI0Giaz3A/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">有没有一首歌会让你轻轻跟着和</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="不完美，却最美">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/anUUDT6sibJtWzOoDS2UFO03reEds4n5r9llDliawc2ibTue33CSkDhqA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">不完美，却最美</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>						
				
	    </div>
	    <!--//全部歌单 -->
	    
	    <!-- 流行 -->
        <div class="tab-pane fade" id="LIUXINGmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">流行歌单</h3>
	 <a href="#">
      <div class="image-box" title="心跳加速，只因你的靠近">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/AbX9chsDkHOTN2CFxoV32xAOMXJJEQZRicK1icpRceLn5gFeiad9olbyA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">心跳加速，只因你的靠近</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="是否唤醒了你的记忆">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/AbX9chsDkHOTN2CFxoV32xAOMXJJEQZRpEuRm7Q9nOkYzjQUOGbOlA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">是否唤醒了你的记忆</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="陌生的熟悉却说不出道理">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/NlU5z7rO4UsL3QOagglh3kpevnslxQq2oShjF0aUia8K9PWwfiaJQwIw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">陌生的熟悉却说不出道理</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="假如我可以我愿守候你">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/xjBX9k8QoGbAUicX1ialfQPCtzxhnsnUPCurnLmVzWBbnHEDVMaSbhGg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">假如我可以我愿守候你</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="从古至今的终极爱情">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJbNLEBLYxpaAkuGgRdejwJNw68JpjHm4E/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">从古至今的终极爱情</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="这是我们分手后的第二年">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/fhSnXXPamEk8iaaO1vico4ib8libwq4SgxrqVibPeTqHvGDd6ZhFJicnOI1A/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">这是我们分手后的第二年</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="【精选】陪睡情歌30首">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/erbLtxUVP4VRhbfSas57Ls0o66IVgh6TRUOia8CSRksib0I6sK8b4QUQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">【精选】陪睡情歌30首</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="斑驳的女声碎影 日系暖音">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PwADIYPgTmIgALqf6nYliageNlWMCe2vwicpXCcxyoOoYsBnBicC4jJEA/600?n=1&amp;amp;amp;n=1&amp;amp;n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">斑驳的女声碎影 日系暖音</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="慵懒韩语抒情风">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/anUUDT6sibJtWzOoDS2UFO5lPfa0LaTpWm3S4H6rsH4zC6b1rfKWB8g/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">慵懒韩语抒情风</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="忧伤旋律词者心">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/wYNmIsVwvnN6CZ7u3v5D9sCTNLMQCZAFAnw7y5vEkyRqe2VXUQu3Og/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">忧伤旋律词者心</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="回忆你我那不变的青春">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Js9KePCiaFGItVAVQZ9ZvzjWYicvz0WB4Zib8h92ia5FDIl9LsDuygTSeg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">回忆你我那不变的青春</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="那些不深不浅的记忆">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/AolHuaCdhq06flPZ82RXD9pWuDENH4F3TpjwIh1YEK9jibnzZnMxUPQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">那些不深不浅的记忆</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="别拿高音，挑战我的声线">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/N8LYjHDk3FNicpgrt2iaTyJ4EV8VD5ve7aOw54heJCcic3PUw37s2TibHg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">别拿高音，挑战我的声线</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="滋润时光的旋律">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Z5ArF7BDOOQN6demSxQAY56eEJfiaExgclYakYDRiaN439icDLib7AbyRw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">滋润时光的旋律</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="最适合90后听的歌">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/uKI8As8t1xpHZVfpKzDv1Ud7KDMq4BnmFwPjgdjpyQQ5W4esolpFbA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">最适合90后听的歌</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>						

        </div>
        <!--//流行 -->
        
        <!-- 摇滚 -->
        <div class="tab-pane fade" id="YAOGUNmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">摇滚歌单</h3>
	 <a href="#">
      <div class="image-box" title="韩国音乐风格鉴赏第四期-流行摇滚">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/5EZ4tCd98UpfE2mEHibdribgxrDTwriboicIFKAdgQtslgCYhoUFDnS1gA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">韩国音乐风格鉴赏第四期-流行摇滚</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="黑豹乐队">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/1ZdGl7wveVA1a9fU8FWwvDKQbArg8YGApYPBVb2ggdnnfPBic8eohpw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">黑豹乐队</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="欲罢不能丶燃心之音">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/KbKfBn9AtHBHEQ0aNOQO9y5hrrfuC9IoZicUv7OrBz20NavaBUsxsng/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">欲罢不能丶燃心之音</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="伴随着摇滚，一起摇摆">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/CY3xGFwDkIvTEnh3UlaZYBbtVvE7KLGLCrLDyvDXYqdNbtTeaudicvQ/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">伴随着摇滚，一起摇摆</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="风靡一时的欧美乐队">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/F4QiaVib8ZOcBCvjL2Txk39TVy8cBIPvjV885llb4BD6uZJRa6p30uwg/600?n=1&amp;amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;n=1&amp;amp;amp;n=1&amp;amp;n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">风靡一时的欧美乐队</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="中国自己的摇滚">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/a2ib85MNb1VlFKaIDR0ETeMKcqS6QswVlQs8JHN6MtxrWsEoKPSJUyg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">中国自己的摇滚</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="爱与和平，自由与独立">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/btosIHibQjfevVCfl9TsS9m526VuAWtdtFDDjpK7NmHxuXG9FuQ3A7A/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">爱与和平，自由与独立</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="日本2015·J-Pop年度精选：流行摇滚">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/5EZ4tCd98UpfE2mEHibdribsEdnFYEW9v2G6yBE1gfET5Q9FIGYibdmxg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">日本2015·J-Pop年度精选：流行摇滚</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="给我你的态度 核裂变摇滚辑">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/MibhME4PmHVsXcNFs5UACwAB3T5wLFVicicyH8OeJuibUY9nxEjicibCclMQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">给我你的态度 核裂变摇滚辑</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="2016吃货魔音宇宙首发">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/xSHOefGSs4heAvjAeg643gKw6zdm80icDCtVMyBBnbTWh0q3sycGRQw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">2016吃货魔音宇宙首发</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="狗镇之主，轮滑少年">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/1ia2aJdRfJia1QIiajhiawt7LmAZ5sZyOmLn9GChSt8JmtGUcx8yU53vgA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">狗镇之主，轮滑少年</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="年轻就是充满活力，富有热情">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/k59ErLbIicR8SEhuNYjbNns3aQWibXxjlUk8BTsr5wdqiaS3yzXZOwrMg/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">年轻就是充满活力，富有热情</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="【拉的道义】单相思">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ndvOX4uUdlRHL6XxDr0wic3GJopRt1ib8uEZBJPc7KmdmibFlClKOIwgw/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">【拉的道义】单相思</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="摇滚的被缚与抗争">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/CY3xGFwDkIvTEnh3UlaZYNQVNcbFwkribvrrMFe3YZc5rWicGl1MJf3g/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">摇滚的被缚与抗争</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="周围太安静 来点节奏嘈杂">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/F4QiaVib8ZOcBCvjL2Txk39b7yWzB20iaH9vR83cbZT9icUvRUXNibRDjVA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">周围太安静 来点节奏嘈杂</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>						

        </div>
        <!--//摇滚 -->
        
        <!-- 电音 -->
        <div class="tab-pane fade" id="DIANYINmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">电音歌单</h3>
	 <a href="#">
      <div class="image-box" title="用音乐轰炸耳膜">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/VINpFibJevLTOE4uFdxa6icqZSEeoPVMK796PxjQ2mYyUPYmNOOxlOicA/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">用音乐轰炸耳膜</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="夜店嗨歌，只要酒精和汗水">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/k59ErLbIicR8SEhuNYjbNns3aQWibXxjlUfraVGg6Mq0l8gzgkxhMMibg/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">夜店嗨歌，只要酒精和汗水</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="耳朵被音乐塞满 抛向云端">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Qd5nYZT0JibzIaiciaRTPJ9fbWVzUAJibbb4uS4ObUgMOmjiaHjEreWhEaQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">耳朵被音乐塞满 抛向云端</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="心动加速的DJ电子版K-Pop">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ku8gQTk9Wo7AxUxj6eB3dlcH5taKwKQ6gYQic0mLGIyNd6oU6vEMibxA/600?n=1&amp;amp;n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">心动加速的DJ电子版K-Pop</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="耳朵福利，电音编曲大比拼！">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/jMdJWFg57Q9WWQ0jplxHiauN9gQj9mOYF45pewz0GuTXlxDWQouiaAlA/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">耳朵福利，电音编曲大比拼！</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="NCS，万“电”不离其中">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJZMKMUx1ry31fmfjLPxfqeBrwkthbq9cE/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">NCS，万“电”不离其中</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="我就不信你听完了还想睡">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/FKgYtgqzRia1g3sI9Iic34ictJ6WvGRM1IG6SkfQB2LK7nUNNHeJ5yslg/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">我就不信你听完了还想睡</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="催化电音 迷幻感知">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/I7QwRasdru2FL7ACx4ibcQT0hoBTXtoroVC8OKAuLkqwE83pS41QuBA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">催化电音 迷幻感知</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="瞬间中毒不如一起跳舞">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/EvtxTibibaIH1WPbWHWjechzrLqphuWaiccVpUl6F7V9XccSZ2K0hIH8w/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">瞬间中毒不如一起跳舞</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="炸翻派对！嗨趴新年">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/7GXhGyzvMJ5phwz5EahTTAaX1B5MvDABiaV8MOsEiaAiaOwXnnt6sToRA/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">炸翻派对！嗨趴新年</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="来点嗨乐陪你跨年">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/alh1ysFZT5KmW32eUd3KdSvppRQBllrCvv0wEeiaRiaJ0QiblrTAHlghw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">来点嗨乐陪你跨年</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="电音节奏，绝对享受">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/vY0lnQM7gJo4WzAQPFAcexp28icbQibhsIENUw2KxvyzcdcY3SnV5y8A/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">电音节奏，绝对享受</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="嘿，需要体验一下高压“电”吗？">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJZMKMUx1ry35osj8QWBxuSiciaFghF9AThQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">嘿，需要体验一下高压“电”吗？</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="迷情电音，让耳朵怀孕的节奏">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/0XiciaLJljHTjwpV8g0OOhUVEibfFIF5nN7icfyPRRIWiaRibIcnmrJXgeMw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">迷情电音，让耳朵怀孕的节奏</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="适合打游戏听的电音嗨曲">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/uiaDJQKnnavibEVdQU1YhLDbzlicMrOA1dNXKPjExTTYCLg8qI79OI71w/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">适合打游戏听的电音嗨曲</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>						
	
        </div>
        <!--//电音 -->
        
        <!-- 说唱 -->
        <div class="tab-pane fade" id="SHUOCHANGmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">说唱歌单</h3>
	 <a href="#">
      <div class="image-box" title="日语饶舌节奏让你深醉其中">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Hx5ICONjtZXgfzyib6hicOVBYwia1xgwkJ9ndGTjYib4flSKJ5JAV52wDw/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">日语饶舌节奏让你深醉其中</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="午夜潜入心扉的优质男声">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/vMvqFvNsWMBoXDLWKwRqCtZWDFX2zc3f8c4OxHpohuey7xGcUribiaIA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">午夜潜入心扉的优质男声</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="美国街头黑人文化">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/HG6HrgkakbkzsC5ribMAwojmy8J7pUiaJcO44Ipralib0G6H0NT2viaOYA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">美国街头黑人文化</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="元素音乐+说唱 抖腿不停！">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/I7QwRasdru2FL7ACx4ibcQeff95vwLWrjXTzs0qo1vQ3ZibpDk9TZNvw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">元素音乐+说唱 抖腿不停！</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="在时光中候我如初 R&B成海">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PwADIYPgTmIgALqf6nYliamhS0YjvyQcvNdwKwa0gvMdGB3XSLZs3OQ/600?n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">在时光中候我如初 R&B成海</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="日系R＆B，若绽静夜花火">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/dJ5V9qGH631ib1OAp18F9Zqc2vr37ShzoBNOiacVpiayfZ1jiaWvcvNGPA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">日系R＆B，若绽静夜花火</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="迷幻意境、欧美独特男声">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/czkKo2icacczH3daoGMYhD7nNmMeOxlX9NSVZztkdfia6Phn2PeUp2icQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">迷幻意境、欧美独特男声</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="欧美节奏唤醒平静的内心">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/jMdJWFg57Q9WWQ0jplxHiaswL0LBuCuMNbQdmyRBJHzLyFSgOia3Sia1w/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">欧美节奏唤醒平静的内心</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="前奏秒杀一切 • Part 7">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/dwXZdcETzBlEl8y9icibWrBSsbyNRE27ibFLToQDXSyQZyia62ShyYtDHA/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">前奏秒杀一切 • Part 7</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="温尔R&B，律动小心房">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/icSzlnFEstib519Dlicl7s9cXPUcNGtc3F5v6wqEyV5eE9Uy6CMSv5spw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">温尔R&B，律动小心房</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="单向再夺年度艺人 霉霉三奖领跑全美音乐奖">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/kvvFmNHAwib1XFalxxrFOHa76ue9nPPYnoXJt7PSMOuO0uiaSgibicUkfg/600?n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">单向再夺年度艺人 霉霉三奖领跑全美音乐奖</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="欧美R&B，独特的旋律令人着迷">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Gib1yc7RjEZ5283YD52oUiaBrtJfShYibDbDobQyadU9Jej4b80pIyVkw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">欧美R&B，独特的旋律令人着迷</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="第57届格莱美获奖大猜想">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEK9kGDKw0hHJH2e9QX3PS1uLOXibUgnum3I/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">第57届格莱美获奖大猜想</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="Hybrid Theory">
        <div class="image-content">
          <img src="http://imgcache.qq.com/music/photo/album/67/albumpic_25467_0.jpg?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Hybrid Theory</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="寻找 属于你的那个节奏">
        <div class="image-content">
          <img src="images/http_imgload (3).jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">寻找 属于你的那个节奏</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>						
	
        </div>
        <!--//说唱 -->
        
        <!-- 经典 -->
        <div class="tab-pane fade" id="JINGDIANmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">经典歌单</h3>
	 <a href="#">
      <div class="image-box" title="催泪老歌，听见好时光">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/alh1ysFZT5KmW32eUd3KddZicCmyQgMMibCtlnk4NxCenk3uyicx3aHXA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">催泪老歌，听见好时光</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="音乐时钟 那些属于8090年代的粤语经典">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/icoJRSfLJFOicXOzLb0rrJibF1ibyCs9zTZDdIbw0jLpK4aYTRoXNGp5qQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">音乐时钟 那些属于8090年代的粤语经典</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="大圣谱写每个人心里的英雄梦">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/alh1ysFZT5KmW32eUd3KdUnKwulJlT8pCXqo6uDcAlulqjHZ9ju3Zw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">大圣谱写每个人心里的英雄梦</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="经典至上歌坛中不朽的神话">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/fhSnXXPamEk8iaaO1vico4ib9eYt1TX1YqpGicRluCX92v0hO2x99dfTcQ/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">经典至上歌坛中不朽的神话</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="一段故事，没有结局。一首歌曲，倾诉所有">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/gBpzakvNnzELicCzC0DOia6xYOD8o7xujFNoTnDia0m5KDTBuUeCTR7Uw/600?n=1&amp;amp;n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">一段故事，没有结局。一首歌曲，倾诉所有</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="最是平淡，最是无法割舍">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/hOeJH0Licq61vGpmFfoPpUbo8WRueKmm5OTWdaXVeEAyAFBL1Ricgw0g/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">最是平淡，最是无法割舍</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="属于7080的音乐旋律">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/YoXXeCgeqmkyaNrSIWue6SrDXgs3TpiaUPiapWERUJdHeokThvtJRWPw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">属于7080的音乐旋律</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="始终戒不掉的粤语老歌">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/alh1ysFZT5KmW32eUd3KdUnKwulJlT8paUfbQloMaEpSWfiav9yAFVA/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">始终戒不掉的粤语老歌</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="远去的人远去的声音">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaELKxZwPHGoxE2Rb8jFFDyZpnZ1G4Fb3wrQ/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">远去的人远去的声音</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="时过进迁，唯音乐不散">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/alh1ysFZT5KmW32eUd3KdYfOKeZIBkDlI4dlafDvehdiatb12P6MbaA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">时过进迁，唯音乐不散</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="一人一首经典成名曲">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEKjYN0IpZ9eFCRlxlE723UjsSBpH0szrMg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">一人一首经典成名曲</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="这些歌吊念逝去的灵魂">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/alh1ysFZT5KmW32eUd3KdYfOKeZIBkDlWgqickhQmjM9ZH9uADvjLUg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">这些歌吊念逝去的灵魂</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="华语经典，听听有没有你喜欢的">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEIn9mFdRxr6NOCOvLRoKxJM6vs8kxibyejSvrTBBuj1icFQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">华语经典，听听有没有你喜欢的</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="曾火遍大江南北的经典">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/xjBX9k8QoGbAUicX1ialfQPJVqmzDUFwGgricgNwx3kAxjNdqFojbRdSA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">曾火遍大江南北的经典</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="养耳金曲40首果断收藏">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaELsTdmsyFDRBMW8kWV2qXWu8tLl3Zj2F8I/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">养耳金曲40首果断收藏</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>						
	
        </div>
        <!--//经典 -->
        
        <!-- 爵士 -->
        <div class="tab-pane fade" id="JUESHImusic">
	<h3 style="position:relative;font-family:FontName;left:855px">爵士歌单</h3>
	 <a href="#">
      <div class="image-box" title="音乐2016，改变从哪儿开始">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/UBZxdictjPBBL8X7Zf9h3mTPvOBr7sU4GrzpUNuvJkiakXE6ibzxfCO7w/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">音乐2016，改变从哪儿开始</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="你低头那抹温柔 Jazz气息">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PwADIYPgTmIgALqf6nYliageNlWMCe2vwt2ibRBNdKGNHYHcvhPqJ5gA/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">你低头那抹温柔 Jazz气息</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="优雅华语爵士不要太迷人">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/4GHMx068gHrccLqDerASs2teTG1tnwrKSWg2IPib1rnfe2IgE7QiaTZg/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">优雅华语爵士不要太迷人</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="酒吧爵士，温柔的呢喃">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/jMdJWFg57Q9WWQ0jplxHiauBb1K1D6thGW9W2knHJfUKUUMl4htOtTA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">酒吧爵士，温柔的呢喃</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="指尖上的余音，不仅仅是吉他">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEKuYeN7N4BvL6yEpEc7uWic6dTbkiajjJfGc/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">指尖上的余音，不仅仅是吉他</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="音乐留声机 品味灵魂布鲁斯">
        <div class="image-content">
          <img src="images/http_imgload (1).jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">音乐留声机 品味灵魂布鲁斯</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="下雨天，爵士和气氛更配哦">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/5SJ4HnG01OpcTUrnibj6h6zuybvcu0fCawV7xTajc5A0MRFr2N5soNQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">下雨天，爵士和气氛更配哦</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="那些动人的欧美小调">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/K5QBp4Ftiaqanib9XEBXnia76wIYicxWGaPNzLfZcxlYsibIpnyXUp9JelA/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">那些动人的欧美小调</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="悠悠萨克斯，品味人生">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/DnJeQdXvxFl9CdbXy7gJldNRV5Eib4czmIOzicYXOp5yIRjuPIbjtYHA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">悠悠萨克斯，品味人生</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="华语爵士，浓郁格调之音">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/dJ5V9qGH631ib1OAp18F9ZhicdjXRdHMyymTKiaDFs5tRntrNf5U8dSFA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">华语爵士，浓郁格调之音</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="都市夜曲，柔顺爵士">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/jMdJWFg57Q9WWQ0jplxHiaiaogvjEmHttJmfiauSQ5HJcicYOTdGgnmklQ/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">都市夜曲，柔顺爵士</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="日本音乐风格鉴赏第二期-日本嘻哈">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/5EZ4tCd98UpfE2mEHibdribiaf30HDSZtcbkDbvHicAfgT53f28AaG533A/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">日本音乐风格鉴赏第二期-日本嘻哈</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="躺下来，用爵士放松你的筋骨">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJM2WL1Z1xW5j8feX9yzicWNppf8Htj5Yq8/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">躺下来，用爵士放松你的筋骨</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="爵士 一杯让人微醺的酒">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaELBwcRlMibYsoA0IyVk49HzUWhmahUzK5UQ/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">爵士 一杯让人微醺的酒</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="让时间暂停一会儿……爵士乐">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEI9377zvlIzRHvjxIdDciakhK1qq3JaO84Y/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">让时间暂停一会儿……爵士乐</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>						
	
        </div>
        <!--//爵士 -->
        
        <!-- 民谣-->
        <div class="tab-pane fade" id="MINYAOmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">民谣歌单</h3>
	 <a href="#">
      <div class="image-box" title="吉他透露出的优雅风情">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/lf1r0g4UylyZHjvIIYZ5RE68cSbPBM64Q2ibJysZqTbbbe62C36RlAw/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">吉他透露出的优雅风情</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="吉他钢琴:交盏弦音,了便静却">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/bKnUmUHvzyibK77keZic85osH2HBdicfc6df6QO2yGk9SbZxD1nBvC3vA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">吉他钢琴:交盏弦音,了便静却</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="小众逐渐成为主流">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/17AjLbs70Ouepx6o6z7A7CKNFIrfDxhvs5yCFh5BKhn7S1RIqBRm4A/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">小众逐渐成为主流</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="最爱民谣里的你">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/UBZxdictjPBBL8X7Zf9h3mTPvOBr7sU4GjWKg5sLk5fdaXNQSMLkicVg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">最爱民谣里的你</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="躲在民谣的角落，自我取暖">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/GqOe2D3GoaJLoorsX3hp0h0MB3pYgCxm0jyCOhzXWS9Mdc2OcHhJYg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">躲在民谣的角落，自我取暖</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="民谣有毒，你因为哪首歌爱上了民谣？">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/UBZxdictjPBBL8X7Zf9h3mdF3GC0uKRLJO7pSicC8sqksBhHgtDsN8Bg/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">民谣有毒，你因为哪首歌爱上了民谣？</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="我们都爱文艺女流氓花粥">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/UBZxdictjPBBL8X7Zf9h3mdF3GC0uKRLJVYK7vLYURvaauWvg1BnKpA/300?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">我们都爱文艺女流氓花粥</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="弹着吉他，独自远方">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/D7lGSc6TIW16bCRPHT5ibbmMiaQXdgwwJBmQXdsJyFCQ8CXVB4aYTlqw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">弹着吉他，独自远方</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="吉他,手鼓,口琴,我的姑娘">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/83MytDNNZpI6t4bqS9X4iaTJeWCFAR1HfQfUJImhYHcM5rvGN4e39xQ/600?n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">吉他,手鼓,口琴,我的姑娘</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="听一首舒心的日韩民谣">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/K83dgYY9EY8XVTP9KibS5STiaicdZh3LLbgdS1F14yzfGH40jzfOyibd5Q/600?n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">听一首舒心的日韩民谣</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="那些不出名却很好听的民谣">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/VDRNQtic2gZADKqzth20JpaQ4jZnCcR5sKqY2bjIq08EwhBvk7XOOJQ/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">那些不出名却很好听的民谣</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="一花一世界，一诗一民谣">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/lf1r0g4UylyZHjvIIYZ5RBDetlQHHOqelFPl2sxzwPPFJUibNjzVMKQ/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">一花一世界，一诗一民谣</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="纵使岁月多峥嵘 她都屹立在风中">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/3y6bAxXh7FnIic7XGrg707BhpwtiaKm2Picbic593TBnJ9b5GvTmzRwkfA/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">纵使岁月多峥嵘 她都屹立在风中</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="愿你像风不受煎熬不受拘束🍃">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/rfW1nobB4pcwoVabHtUiag1d0KsRXWFz8CUfTZZfCfLystf1RQJusdg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">愿你像风不受煎熬不受拘束🍃</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="一把吉它 一曲民谣">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/1FzlDryniayKbXLeGsSeJ8EeH4BpHQOESzo4XwEsjCJMIJC2gt07IWQ/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">一把吉它 一曲民谣</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>						
	
        </div>
        <!--//民谣 -->
        
        <!-- 乡村 -->
        <div class="tab-pane fade" id="XIANGCUNmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">乡村歌单</h3>
	 <a href="#">
      <div class="image-box" title="缓幻芈想，独梦南方">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/WNZqKwY6YcibIrEOzomCcgOPHSFgHca9hyiaOrRNe1xu8Y8wv6xETiaJg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">缓幻芈想，独梦南方</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="温暖入耳的欧美小调">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/3ZbEC5sGJiaQhGgcrMtkicwOZzUGia2LXI4WIA9EDssS7EIMYFpYXChPQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">温暖入耳的欧美小调</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="轻松一刻，米国传统乡村乐">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/jMdJWFg57Q9WWQ0jplxHiaj2oLQUrico9WibtvmSpMibV7efLJT89FbJpQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">轻松一刻，米国传统乡村乐</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="让人无法抗拒的乡村音乐">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/p09ambUY7DqbQib1GSMCm2uGdZwJbn53FdUibcxofIhDGbVad0ibtUwmQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">让人无法抗拒的乡村音乐</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="柔情旋律，吹动内心层层涟漪">
        <div class="image-content">
          <img src=http://p.qpic.cn/music_cover/GARUzDXWtAeBFsbWkYmaXq2vJibADxWic3jXUCkmEEmkkhSWm3J3aAtA/300?n=1 />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">柔情旋律，吹动内心层层涟漪</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="来听听从美国乡村发出的爱之音吧">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/zM5w85jjvVIK7Kab3U5MfhjbcvoxdPotAanCj9SSBibicZ605bQB63Fw/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">来听听从美国乡村发出的爱之音吧</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="醒脑小调，起床困难户必备">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Qd5nYZT0JibzIaiciaRTPJ9fTNwjF3BL0TDHr4IpKZibKCwQKY4QgMWOIQ/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">醒脑小调，起床困难户必备</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="吹着海风听着音乐也是一种享受">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/3ZbEC5sGJiaQhGgcrMtkicwP6gm7KnXa8Yj4LT2YLbeqHbKtbp3SRWNg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">吹着海风听着音乐也是一种享受</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="乡村之音，娓娓动听">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/qRkw7rwVoppUDQG54BZBHhnlW6V42oFVhDtDtx2ia1kiaa3UnZIibjuJA/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">乡村之音，娓娓动听</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="皆大欢喜！2015乡村音乐协会奖揭晓">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/kvvFmNHAwib1XFalxxrFOHXbrOFhzib1WYQ9xdicTv3ZC5xldR7nAGRDg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">皆大欢喜！2015乡村音乐协会奖揭晓</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="听听乡村童话故事">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/suiaMeN5asDfpzAtw4pUoWdI32tx97ibfe9IbOc3lxfAM5iatW7cmHd9A/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">听听乡村童话故事</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="嘿，不要停止你心中的民谣">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/pqicsSIiaZn49zeysz0ib1IvlljKE7dwibmtBOCoNJLvsKSeLLDjLuEwUQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">嘿，不要停止你心中的民谣</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="爱情不再 愿乡村长存">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ovNfEn8wqESQd1WhbTN7q0CRnFDksQicdqesE1woCGLszgw68chy81A/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">爱情不再 愿乡村长存</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="霉霉出村后，还有这些乡村音乐听">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaELtww6SYjMDmbW9o3KRFb5FzvVD0LbtwpY/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">霉霉出村后，还有这些乡村音乐听</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="经典乡村、雷鬼、r&b混音集">
        <div class="image-content">
          <img src="images/http_imgload.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">经典乡村、雷鬼、r&b混音集</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>						
	
        </div>
        <!--//乡村 -->
        
        <!--国语 -->
        <div class="tab-pane fade" id="GUOYUmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">国语歌单</h3>
	 <a href="#">
      <div class="image-box" title="别拿高音，挑战我的声线">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/N8LYjHDk3FNicpgrt2iaTyJ4EV8VD5ve7aOw54heJCcic3PUw37s2TibHg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">别拿高音，挑战我的声线</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="滋润时光的旋律">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Z5ArF7BDOOQN6demSxQAY56eEJfiaExgclYakYDRiaN439icDLib7AbyRw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">滋润时光的旋律</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="碎了一地的忧伤，唱尽了多少无奈与哀愁">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Z5ArF7BDOOQN6demSxQAY56eEJfiaExgcvpyFpyQxkKPhNSTrQ8CxZQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">碎了一地的忧伤，唱尽了多少无奈与哀愁</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="我在冷冬中越想你，心越冷">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/p09ambUY7DqbQib1GSMCm2pjlHq2gic6QgJBUloGSHkc1727u4mChiciag/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">我在冷冬中越想你，心越冷</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="我们的青春里曾有它">
        <div class="image-content">
          <img src=http://p.qpic.cn/music_cover/Wo7A631USRsibyWM6H8VsoruicjvMycKyWxdiaGfPVdaUOc4vdoSJvFlQ/600?n=1 />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">我们的青春里曾有它</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="有这么首歌是要送给你们">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/anUUDT6sibJtWzOoDS2UFO5lPfa0LaTpWRY2sQaJPPL4ibdN4ake0mAQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">有这么首歌是要送给你们</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="音乐的异类，不走寻常路">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/anUUDT6sibJtWzOoDS2UFO5lPfa0LaTpWiaBZFuFA0Axdb7ERicpricOgw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">音乐的异类，不走寻常路</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="一把吉他弹唱一首故事">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/fhSnXXPamEk8iaaO1vico4ib8libwq4Sgxrqylqlf1LInKXiaRhiaUqC6qKQ/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">一把吉他弹唱一首故事</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="遇见你花光了我所有的运气">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/btosIHibQjfevVCfl9TsS9nMvoXSkEXbsAgmnqf4e6EaQY1gN3JMH1A/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">遇见你花光了我所有的运气</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="这些诗歌，静静的读">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Io1lyVFpYe6EpucDmNzLbCEQPeibnpsWY8MPkuAg46ZkXucicn3qR9fQ/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">这些诗歌，静静的读</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="内心深处的音乐：用灵魂唱歌的歌者">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Js9KePCiaFGItVAVQZ9ZvznVeriaydUN9I6tddNiaexotkUxsw96Hdhmg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">内心深处的音乐：用灵魂唱歌的歌者</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="来一首我最爱的普通音乐">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/xjBX9k8QoGbAUicX1ialfQPCdv1E0LKElLnubgRria72hwoO0VShKtsXA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">来一首我最爱的普通音乐</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="时光不老，许我青春年少">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Qol0GAbR74R5wZlEgOd7stRCibvlc3nvnvpe73qW7jWQaxAOg5FmibHA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">时光不老，许我青春年少</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="回顾2015优质电影原声">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/p09ambUY7DqbQib1GSMCm2pbEbQ4Lm69FbCWjOYdkjiaD6cckIPtcibpA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">回顾2015优质电影原声</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="2015年终单曲榜TOP30揭晓！">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/VV0r92V7YpdU50dyfViaLvtkcg7e0bTuPLDeL6QCkor1MCaJ3kO6WCA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">2015年终单曲榜TOP30揭晓！</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>
	
        </div>
        <!--//国语 -->
        
        <!--粤语-->
        <div class="tab-pane fade" id="YUEYUmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">粤语歌单</h3>
	 <a href="#">
      <div class="image-box" title="五十首经典怀旧粤语歌曲">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/uBLctU5q0YXNM7xUUfnbdwgKhD2cVsRPEzQE2tzkg6LhZcWia4XT3SA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">五十首经典怀旧粤语歌曲</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="45首精选粤语带你体验不一样的年华">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/bZcrAjL4chVwKN6Sq5JicN6iauX3q4TxA4sLFibbFN5Ir4SxaBZQSSuibQ/300?n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">45首精选粤语带你体验不一样的年华</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="粤语存旧梦，时光绕指凉">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/SPmp59heyQ3oHMA2yibvkc0xmFNXkJgn0br75qx1hokwUXKRf1KVU2Q/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">粤语存旧梦，时光绕指凉</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="这首歌有没有唱出你心情">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/mDeRCTf7ZIfqN2LydmXRWp1XoFDsaXZQk2qiakILCGQw3mnPlubdMOA/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">这首歌有没有唱出你心情</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="华语经典，耐人寻味">
        <div class="image-content">
          <img src=http://p.qpic.cn/music_cover/VDRNQtic2gZADKqzth20JpQO2xyiaaM9iaMEPEX3X9ScRpKE1JzFZ6LbQ/600?n=1&n=1 />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">华语经典，耐人寻味</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="粤语歌曲的经典和新歌">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/KvjUH0doasg3nPricaarjwzjernI4919GD9xrRcNrhRRp2KptxrrEMg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">粤语歌曲的经典和新歌</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="情不知所起，一往情深">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/alh1ysFZT5KmW32eUd3KdSvppRQBllrCagP5amxysBLMWBdv1qzIlA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">情不知所起，一往情深</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="粤静如水，午后静听">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/fhSnXXPamEk8iaaO1vico4ib1W1AmY6YZmyZBRIx9v1jT6YUumlBRbQVA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">粤静如水，午后静听</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="粤语歌里的大千世界">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/WvsNkg6cHNx7w9dqzKiaJGWhSs4kv2SuctwIu5Jka7yQ6k3UDibczuyQ/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">粤语歌里的大千世界</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="岁粤如歌，粤听粤有味道">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/xy585mIRLoGjBb9SibEqA5gtgaGu0ScZBCljUXg5Xib2NuNlZDBAfaAQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">岁粤如歌，粤听粤有味道</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="精选粤语好歌曲，给你不一样的感觉">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/BK8Fib0wR2Zqic29FkQbekNMtiao6ib8ciaiacI8ic4WZSajK5SjCbSD8Z6YQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">精选粤语好歌曲，给你不一样的感觉</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="《刺客聂隐娘》获奖三项，贾樟柯首拿金马！">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEK4ibzGnO7bhvDkN3a4Mdcg1SiaP7bsPZqmQ/600?n=1&amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;n=1&amp;amp;amp;n=1&amp;amp;n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">《刺客聂隐娘》获奖三项，贾樟柯首拿金马！</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="基仔大婚！用时光唱一首最长的情歌">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/kvvFmNHAwib1XFalxxrFOHcW8PtZH8ch9BThlMayibQxIzuy3uOQ0O8w/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">基仔大婚！用时光唱一首最长的情歌</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="始终戒不掉的粤语老歌">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/alh1ysFZT5KmW32eUd3KdUnKwulJlT8paUfbQloMaEpSWfiav9yAFVA/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">始终戒不掉的粤语老歌</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="港剧在现，来听听剧中粤语歌">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/lLgz7oZICVvaRF5SfIDrvUnIl7bZeia4yXDd2Ric3e0OStia9dG2JRqpg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">港剧在现，来听听剧中粤语歌</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>
	
        </div>
        <!--//粤语 -->
        
        <!-- 欧美 -->
        <div class="tab-pane fade" id="OUMEImusic">
	<h3 style="position:relative;font-family:FontName;left:855px">欧美歌单</h3>
	 <a href="#">
      <div class="image-box" title="猫王81岁冥诞 30首猫王必听金曲">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/kvvFmNHAwib1XFalxxrFOHcWODSIUBOpAP8gGMvqxoAZxf1Xuiag5wJg/600?n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">猫王81岁冥诞 30首猫王必听金曲</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="节奏控患者的日常">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/a6q1LCNs0nfsYIHJmWXdBa8iaL2LUhvAiad0ad1q5rHcDmvkkT4qCoSA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">节奏控患者的日常</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="英文小调倾入我心">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/wYNmIsVwvnN6CZ7u3v5D9sCTNLMQCZAFUEZ6reXhJ9CdcZVDGVe0Qw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">英文小调倾入我心</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="AirHouse就是这么有气质">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/AOun9x6WDn84icic6cHuKwWQ8kmv0NK5OoVoabl5M0jDJWfK7TVuKucQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">AirHouse就是这么有气质</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="那一年他们还没有解散">
        <div class="image-content">
          <img src=http://p.qpic.cn/music_cover/qd3u5IHSYTibuCvMfYlatECLj8ibl0OYsz1V0icoFnAx0G7vmuG2jIv1g/600?n=1 />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">那一年他们还没有解散</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="融化这季节零下的孤单">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/SxXp5QfhJBFNc2TuDYpy5VLUbv8dSmP5icWLK3l5cNNb7E74159MWOQ/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">融化这季节零下的孤单</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="欧美至尊旋律前奏">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEInliblWOZckMSUJrER4Wbvu0xGibLssZ2GM/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">欧美至尊旋律前奏</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="欧美范让你“耳洞大开”">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/jw5pLxeVoy5teEotP8DyB4w5apop5JQKlmtngu73mUNd6icgoXM5Xng/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">欧美范让你“耳洞大开”</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="让一切都跟着节奏摇晃">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/P5Ec4SGIHrg7e0RgD8LLdTNdfNtn3PNvHYbqIqgsyhRgtwEHBzFvMQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">让一切都跟着节奏摇晃</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="美国街头黑人文化">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/HG6HrgkakbkzsC5ribMAwojmy8J7pUiaJcO44Ipralib0G6H0NT2viaOYA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">美国街头黑人文化</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="欧美抒情，暖心之音~">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/JicUG2nxzjyttGlrSNkoCJTzevWkuZNfaUqhfBBoaLWdibu2EpFWelkw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">欧美抒情，暖心之音~</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="辞旧迎新愿初心如故">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/bMoY206eicbphwEh4kRnrkWH1LRibAKDVn5iao2M5340RjwXv7zZrvdYw/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">辞旧迎新愿初心如故</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="性感、慵懒与漫不经心">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/JEuBjrWusr2EKnQzZH7ibS6jP1C3Luf78lCYc1yy962yCHibSeiaeDZSw/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">性感、慵懒与漫不经心</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="抒情英文治愈你心灵的温暖配方">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/VDRNQtic2gZADKqzth20JpQO2xyiaaM9iaMc8bv8p2OiaZoic9C2lRPzPZQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">抒情英文治愈你心灵的温暖配方</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="青春温情似海，岁月蹉跎像把杀猪刀,望珍惜">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/xzvVYaqtSnx0rmrGg7P839vulsVyiaOSugBICgrlMeDHOBXemI9P6ibg/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">青春温情似海，岁月蹉跎像把杀猪刀,望珍惜</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>
	
        </div>
        <!--//欧美 -->
        
        <!-- 韩语 -->
        <div class="tab-pane fade" id="HANYUmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">韩语歌单</h3>
	 <a href="#">
      <div class="image-box" title="沙哑的嗓音唱着清快的小调">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ku8gQTk9Wo7AxUxj6eB3dsmhIe8aQh2tYSOS0x3lcdvCc516y86Ltw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">沙哑的嗓音唱着清快的小调</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="是否唤醒了你的记忆">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/AbX9chsDkHOTN2CFxoV32xAOMXJJEQZRpEuRm7Q9nOkYzjQUOGbOlA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">是否唤醒了你的记忆</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="精神病院里的逗比韩国歌曲">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ku8gQTk9Wo7AxUxj6eB3dsmhIe8aQh2tico3M23pOvW4QEE4iauTmDhg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">精神病院里的逗比韩国歌曲</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="韩式情歌唱给最爱的你">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/fhSnXXPamEk8iaaO1vico4ibyCAWJJ3aCNvicvv2LFD8gjonadF1fvb5hA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">韩式情歌唱给最爱的你</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="最痛的距离，是你不在我身边">
        <div class="image-content">
          <img src=http://p.qpic.cn/music_cover/oQPDzYIsoEprsnLyPSV0KEU33lWkrZYpjphAthNNibFlv2SRmW0J40g/600?n=1 />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">最痛的距离，是你不在我身边</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="韩风小曲调、不一样的感觉">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/BK8Fib0wR2Zqic29FkQbekNF1pgXYhibxLpJVxAHl1xSjA6R6JbzBjSibQ/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">韩风小曲调、不一样的感觉</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="那些好听的韩剧主题曲and插曲">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/3y6bAxXh7FnIic7XGrg707BubfCxFrZucCiaBmYTib5YRNXXnU2vs4Tdw/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">那些好听的韩剧主题曲and插曲</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="可以单曲循环的韩语节奏">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ONhkJeGIBQIOIia8tMsfTxpKhMWr1WibzRAicWXcMjicB6GB6fbicQdZ1eg/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">可以单曲循环的韩语节奏</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="用吉他演绎每一天幸福的美事">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ku8gQTk9Wo7AxUxj6eB3dlcH5taKwKQ6Y0ehFMxmEL7Yia5icXUAH4HQ/600?n=1&amp;amp;amp;amp;amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;n=1&amp;amp;amp;n=1&amp;amp;n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">用吉他演绎每一天幸福的美事</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="韩国影视“进击的网络剧”">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ku8gQTk9Wo7AxUxj6eB3dlcH5taKwKQ6rdUF074laoDWqQSptHPXxw/600?n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">韩国影视“进击的网络剧”</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="如果还没有太迟 我们能否重新回去">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/icZWboKJRA1B0ltoQLictjYj6OOETS9IGjxC9WxVVcYaHakvkkEgBnhA/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">如果还没有太迟 我们能否重新回去</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="让你抖腿的韩语舞曲">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/JicUG2nxzjyttGlrSNkoCJTzevWkuZNfagJpDmctj5fnZiaLTvJFLJXw/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">让你抖腿的韩语舞曲</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="近十年韩国热门300首">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ku8gQTk9Wo7AxUxj6eB3dlcH5taKwKQ637WMPVzUYSvy4GM81Tk1wg/600?n=1&amp;amp;amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;amp;n=1&amp;amp;amp;amp;n=1&amp;amp;amp;n=1&amp;amp;n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">近十年韩国热门300首</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="韩国2015·K-Pop年度精选：韩国流行">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/5EZ4tCd98UpfE2mEHibdribiazolGxHhJfwoeqQu0v6sN1BdC3d6Hrbrg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">韩国2015·K-Pop年度精选：韩国流行</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="这个圣诞，给你一个爱的暖炉">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/ku8gQTk9Wo7AxUxj6eB3dvv2cMaDqIykU2B2zW40UFlLfb4ibYq3kAw/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">这个圣诞，给你一个爱的暖炉</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>
	
        </div>
        <!--//韩语 -->
        
        <!-- 日语 -->
        <div class="tab-pane fade" id="RIYUmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">日语歌单</h3>
	 <a href="#">
      <div class="image-box" title="斑驳的女声碎影 日系暖音">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PwADIYPgTmIgALqf6nYliageNlWMCe2vwicpXCcxyoOoYsBnBicC4jJEA/600?n=1&amp;amp;amp;n=1&amp;amp;n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">斑驳的女声碎影 日系暖音</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="日系节奏·反反复复的每一天">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/3ZbEC5sGJiaQhGgcrMtkicwHnjSsMxaYbgAhibv0ChK9sZcgKMejeSm1g/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">日系节奏·反反复复的每一天</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="给声控们的一封信">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/eHp44FdQ1jDmZ8GrzmjbJD3ibHYJjbdaAOrBiajUzEceMUxUEZO0Mw6A/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">给声控们的一封信</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="从今天开始的回忆">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/icQJvfNXWeD5uObRODibUeTtWjian8As6b7SqfARbRuuyO1JibkZqTsn8g/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">从今天开始的回忆</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="纯爱物语·我的忧郁与寡欢的他">
        <div class="image-content">
          <img src=http://p.qpic.cn/music_cover/5EZ4tCd98UpfE2mEHibdribiazolGxHhJfwLbMTHopI0ibDv7icYje6oaIA/600?n=1&n=1 />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">纯爱物语·我的忧郁与寡欢的他</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="心“泪”了丶拥抱音乐入睡吧">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/KbKfBn9AtHBHEQ0aNOQO91D0uc1PeXLsecDI0qXpOfPKcbBEfL79mw/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">心“泪”了丶拥抱音乐入睡吧</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="心牵旋律丶与音翩翩起舞">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/KbKfBn9AtHBHEQ0aNOQO97TXHxbDlTxQZ3JYz0PS3oiaCPHNkbYOenQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">心牵旋律丶与音翩翩起舞</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="怦然心动嘟嘟噜">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/LYWiaRDQSFAWfraecpTqn0iawNeHqINlQ217iadufwxpxdUzs68o5icOPg/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">怦然心动嘟嘟噜</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="刺激你听觉的日语电音！">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/JicUG2nxzjyttGlrSNkoCJTzevWkuZNfadah7iaYLK2wWGq8zrbncuBg/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">刺激你听觉的日语电音！</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="2015下半年最热日语歌回顾">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Hx5ICONjtZXgfzyib6hicOVAJmtVhDugoFInib4gQtefS8YqSljibOdCUQ/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">2015下半年最热日语歌回顾</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="「日系」燃烧我心，照亮你路">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJZMKMUx1ry3wdsaw0sNCgan2nFPAEUjh8/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">「日系」燃烧我心，照亮你路</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="日系情歌，你就是我的天空">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/IzXLVU2LmHt6bQg7vXk0utDG3aHQ7bwTibGRIkK8wNYUwD4AOtC21KA/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">日系情歌，你就是我的天空</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="只有那一颗心能听到">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/bZcrAjL4chVwKN6Sq5JicNibV8fBP3Bv4UFhau8KicgCtyMYnyHy5cGPQ/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">只有那一颗心能听到</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="后来才发现全世界都是你">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/Hx5ICONjtZXgfzyib6hicOVIZcwkDK9azPkKSiaRA2vGkI5R3Z5aTm5Xg/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">后来才发现全世界都是你</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="听一首舒心的日韩民谣">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/K83dgYY9EY8XVTP9KibS5STiaicdZh3LLbgdS1F14yzfGH40jzfOyibd5Q/600?n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">听一首舒心的日韩民谣</div>
      </div>
    </a>
    
    <nav class="text-center">
  			<ul class="pagination">
    			<li class="disabled"><a aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
    			<li class="active"><a href="singerDEMO.jsp">1 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
    			<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">尾页</span></a></li>  			
             </ul>
	</nav>
	
        </div>
        <!--//日语 -->
        
        <!-- 俄语 -->
        <div class="tab-pane fade" id="EYUmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">俄语歌单</h3>
	 <a href="#">
      <div class="image-box" title="俄风净心律，欣迎一年新气象">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/lf1r0g4UylyZHjvIIYZ5RE68cSbPBM64hl3xGmvUuBOghCPdOoN9icQ/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">俄风净心律，欣迎一年新气象</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="殇满弦 梦吟俄罗斯">
        <div class="image-content">
          <img src="images/http_imgload111.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">殇满弦 梦吟俄罗斯</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="Холодное сердце">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_album_300/J/u/0037qHra4co9Ju.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Холодное сердце</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="Моя мама">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_album_300/i/l/000zuVzU2R7Uil.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Моя мама</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="一听钟情 二十首中毒俄语">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEKTltdrvt6RECo1NTWaTxiaUHsFg6zsgUaQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">一听钟情 二十首中毒俄语</div>
      </div>
    </a>
        </div>
        <!--//俄语-->
        
        <!-- 法语 -->
        <div class="tab-pane fade" id="FAYUmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">法语歌单</h3>
	 <a href="#">
      <div class="image-box" title="帘涌香颂 法式情动">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PwADIYPgTmIgALqf6nYliamhS0YjvyQcvI6TEbkkkFrP8k1dbT8vwXw/600?n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">帘涌香颂 法式情动</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="『法语』安静舒缓，轻柔女声">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/UFS2rA4kUtJXJ0JwvGZvt9rGF7tLrzsadHEaUY9YO7aaNTCZPkGUJA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">『法语』安静舒缓，轻柔女声</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="巴黎·一场流动的文艺盛宴">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/UvibUSCDXblWNl7ADpPicoaiafXPckjFhYfYMcwDfArU1LlxgzSDKK0dQ/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">巴黎·一场流动的文艺盛宴</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="动听法语，优雅且不失浪漫">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/q2IYzR2AP0iaePs6M5NgZ6Tlhkp37icTLKdH0AkfKYDvFE0SjPfCzgLA/300?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">动听法语，优雅且不失浪漫</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="情迷法国，香颂之美">
        <div class="image-content">
          <img src=http://p.qpic.cn/music_cover/SPmp59heyQ3oHMA2yibvkcickYreofPBhuFxDDWZGicBzyNwN6vKmk79Q/600?n=1 />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">情迷法国，香颂之美</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="法式小调伴你午后时光">
        <div class="image-content">
          <img src="images/600qwqw.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">法式小调伴你午后时光</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="超好听小语种 绝对值得循环">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/xuw5SicGO1JcU0WE5dhS1rxCaSVPMStq96E2ZL37DQrybuYWacsDOWA/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">超好听小语种 绝对值得循环</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="法语迷情 音符凝聚成影">
        <div class="image-content">
          <img src="images/psb3434.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">法语迷情 音符凝聚成影</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="放飞心灵 情迷泛西欧乐">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/xuw5SicGO1JcU0WE5dhS1ribRo0xBU8d4ibBHo2kX3KyUsTndkCLPouhQ/600?n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">放飞心灵 情迷泛西欧乐</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="唤法国香颂风，叹浪漫人生">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJaOKLjcwW4QIeJ5iaIDRt7BWgkH5sfMWvI/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">唤法国香颂风，叹浪漫人生</div>
      </div>
    </a>
	
        </div>
        <!--//法语 -->
        
        <!-- 泰语 -->
        <div class="tab-pane fade" id="TAIYUmusic">
	<h3 style="position:relative;font-family:FontName;left:855px">泰语歌单</h3>
	 <a href="#">
      <div class="image-box" title="浓情泰语，恋耳情歌二十首">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/dJ5V9qGH631ib1OAp18F9Zsc6GBBPLBfLw5GkXtjWc9n0644fUCYMBQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">浓情泰语，恋耳情歌二十首</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="温暖泰语，治愈你我心灵">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJuicBcH09GsyjYwtlv3CZhHf93y1BMqdro/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">温暖泰语，治愈你我心灵</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="泰美丽，闭目聆听，不忍直视">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJl1SVKHuet90vswObU157GprkcaJIy4icQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">泰美丽，闭目聆听，不忍直视</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="泰式风情一听倾心">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJHWeRrZbIpHfFYBkaXYnXbAlGdEwqtX3A/600?n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">泰式风情一听倾心</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="“泰”美妙的声音">
        <div class="image-content">
          <img src=http://p.qpic.cn/music_cover/PiajxSqBRaEKTV9PdWeUZnd5ygkBHMW0gTKibHTg2aO70/600?n=1&n=1&n=1 />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">“泰”美妙的声音</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="泰国小清新影视歌曲">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJOK5VCKoBfrsTFH5A76ibTqsmXzicqaHMeQ/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">泰国小清新影视歌曲</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="泰剧里隐藏的爱如潮涌">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJ7f7pBH144zLPwpQ9qXzqFxDpF4fqVUNI/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">泰剧里隐藏的爱如潮涌</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="听泰剧讲初恋这件小事">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEJ7f7pBH144zJVxMw0WVYZPJEIjSx6rrtE/600?n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">听泰剧讲初恋这件小事</div>
      </div>
    </a>
    
        <a href="#">
      <div class="image-box" title="真爱不分性别[泰语篇]">
        <div class="image-content">
          <img src="http://p.qpic.cn/music_cover/PiajxSqBRaEKjvs8C9ibWkhWKLb6KE6KpEO1xCRfKtOiaY/600?n=1&amp;n=1&n=1&n=1" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">真爱不分性别[泰语篇]</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="泰太风情 数不尽的似水年华">
        <div class="image-content">
          <img src="images/psb111.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">泰太风情 数不尽的似水年华</div>
      </div>
    </a>
	
        </div>
        <!--//泰语 -->
      </div>
    </div>
</div>
<script>
(function() {
	  var boxes = document.getElementsByClassName("image-box");
	  
	  Array.prototype.forEach.call(boxes, function(box) {
	    var detail = box.getElementsByClassName("image-detail")[0];
	    var img = box.getElementsByTagName("img")[0];
	    var btn = box.getElementsByClassName("button111")[0];
	    
	    box.addEventListener("mouseover", function() {
	      detail.classList.add("hide");
	      img.classList.add("detail-hover-state");
	      btn.classList.add("show");
	    });
	    
	    box.addEventListener("mouseout", function() {
	      detail.classList.remove("hide");
	      img.classList.remove("detail-hover-state");
	      btn.classList.remove("show");
	    });
	  });
	})();
</script>
<script src="js/bootstrap.min.js"></script>
		<script>
		(function () {
			'use strict';

			var sideTabsPaneHeight = function() {
				var navHeight = $('.nav111-tabs.nav111-tabs-left').outerHeight() || $('.nav111-tabs.nav111-tabs-right').outerHeight() || 0;

				var paneHeight = 0;

				$('.tab-content.side-tabs .tab-pane').each(function(idx) {
					paneHeight = $(this).outerHeight() > paneHeight ? $(this).outerHeight() : paneHeight;
				});

				$('.tab-content.side-tabs .tab-pane').each(function(idx) {
					$(this).css('min-height', navHeight + 'px');
				});
			};
			
		  $(function() {
		    sideTabsPaneHeight();

				$( window ).resize(function() {
					sideTabsPaneHeight();
				});

				$( '.nav111-tabs.nav111-tabs-left' ).resize(function() {
					sideTabsPaneHeight();
				});
			});
		}());
		
		</script>				
		</div>
	<i class="line"> </i>
	<i class="line-in"> </i>	
	</div>

	<p class="footer-class">版权所有 © 2015 <a href="#" target="_blank">悦心音乐</a> </p>
</div>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>悦心音乐的主页</title>
<link rel="shortcut icon" type="image/x-icon" href="images/yuexinicon.png" />
<link href="css/bootstrap.css" rel="stylesheet" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" media="all" />	
<!--//theme-style-->
<meta name="renderer" content="webkit"><!-- 强制选择高速模式 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
				<script>
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<link href="css/nav.css" rel="stylesheet" media="all"/>
<script src="js/easyResponsiveTabs.js"></script>
		    <script>
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
						<li class="singerYUEXIN.jsp" ><a href="getSingerBylang?music.musiclanguage=欧美" style="font-family: FontName" class="color4">艺&nbsp;&nbsp;术&nbsp;&nbsp;家<span> </span></a>
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
		
		
		<!-- 滚动图片动画引用的JS -->
		<script src="js/modernizr.custom.53451.js"></script>
		<script src="js/jquery.gallery.js"></script>
		<script>
			$(function() {
				$('#dg-container').gallery({
					autoplay	:	true
				});
			});
		</script>
		<!-- //滚动图片动画 -->
			<!-- 开始内容滚动 -->
			<div class="row">
              <div class="col-md-12">
	          <section id="dg-container" class="dg-container">
			     <div class="dg-wrapper">
					<a href="#"><img src="images/1.png" alt="image1" /></a>
					<a href="#"><img src="images/2.png" alt="image2" /></a>
					<a href="#"><img src="images/3.png" alt="image3" /></a>
					<a href="#"><img src="images/4.png" alt="image4" /></a>
					<a href="#"><img src="images/5.png" alt="image5" /></a>
					<a href="#"><img src="images/6.png" alt="image1" /></a>
					<a href="#"><img src="images/7.png" alt="image2" /></a>
					<a href="#"><img src="images/8.png" alt="image3" /></a>
					<a href="#"><img src="images/9.png" alt="image4" /></a>
					<a href="#"><img src="images/10.png" alt="image5" /></a>
					<a href="#"><img src="images/11.png" alt="image1" /></a>
					<a href="#"><img src="images/12.jpg" alt="image2" /></a>
					<a href="#"><img src="images/13.jpg" alt="image3" /></a>
			    </div>
	         </section>
	         </div>
	         </div>
		<!--//滚动图片动画---->
	
		
		<!--左边整个模块的样式-->
         <div class="content">
	     <div class="col-md-8 content-top">
		 <div class="number">
				<div class="feb" style="font-family: FontName">
					<b>火</b>
					<label>&nbsp;热</label>
				</div>
			<div class="story"><h4  class="stories0" style="font-family: FontName"><span>歌   单   风   格</span></h4></div>
			<!---->		
    		<div class="span_8">
    		  <div class="row_8">
    		  	
    				<div class="span4">
						<div class="css3gallery">
							<img src="images/liuxing.png" alt="fotograph" title="流行" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/yaogun.png"  alt="fotograph" title="摇滚" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/dianyin.png"  alt="fotograph" title="电音" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/shuochang.png"  alt="fotograph" title="说唱" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/jingdian.png" alt="fotograph" title="经典" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/jueshi.png"  alt="fotograph" title="爵士" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/minyao.png"  alt="fotograph" title="民谣" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/xiangcun.png"  alt="fotograph" title="乡村" />
						</div>
					<div class="clear"></div>
					</div> 			
				</div>
				</div>
				
				
			<!---->
			
				
			<div class="clearfix"> </div>
		
		</div>
			<!---->
			<div class="number">
				<div class="feb" style="font-family: FontName">
					<b>火</b>
					<label>&nbsp;热</label>
				</div>
			<div class="story"><h4  class="stories0" style="font-family: FontName"><span>歌   单   语   言</span></h4></div>
			<!---->		
    		<div class="span_8">
    		  <div class="row_8">
    		    <div class="span4">
						<div class="css3gallery">
							<img src="images/guoyu.png" alt="fotograph" title="国语" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/yueyu.png"  alt="fotograph" title="粤语" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/oumei.png"  alt="fotograph" title="欧美" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/hanyu.png"  alt="fotograph" title="韩语" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/riyu.png" alt="fotograph" title="日语" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/eyu.png"  alt="fotograph" title="俄语" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/fayu.png"  alt="fotograph" title="法语" />
						</div>
						<div class="clear"></div>
					</div>
					<div class="span4">
						<div class="css3gallery">
							<img src="images/taiyu.png"  alt="fotograph" title="泰语" />
						</div>
					<div class="clear"></div>
					</div> 
				</div>
				</div>		
			<!---->
			<div class="clearfix"> </div>
		</div>
			<!---->
			<div class="number">
				<div class="feb0" style="font-family: FontName">
					<b>→</b>
					<label>新</label>
				</div>
			<div class="story"><h4  class="stories0" style="font-family: FontName"><span>精  选  专  辑</span></h4></div>
			<!---->		
    		<div class="span_8">
    		  <div class="row_8">
    		    	<div class="cards" style="font-family: FontName">
  							<div class="card">
  							  <figure class="effect-bubba">
    							<img class="img-thumbnail"  src="images/XSCAPE.png" alt="" title="XSCAPE"/>
    						  </figure>
    						<div class="card-title">   							
      							<h2>
         				 					XSCAPE
          						<small>迈克尔·杰克逊</small>
      							</h2>
    						</div>					
  							</div>

    						<div class="card">
    						  <figure class="effect-bubba">
    							<img class="img-thumbnail" src="images/EveryoneIsNo1.png" title="Everyone Is No.1">
    						  </figure>
    						<div class="card-title">
      							<h2>
          									Everyone Is No.1
          						<small>刘德华</small>
      							</h2>
    						</div>
  							</div>

  							<div class="card">
  							  <figure class="effect-bubba">
    							<img class="img-thumbnail" src="images/dashengchang.png" title="大声唱">
    						  </figure>
    						<div class="card-title">
      							<h2>
          									大声唱
          						<small>凤凰传奇</small>
      							</h2>
    						</div>
  							</div>

  							<div class="card">
  							  <figure class="effect-bubba">
    							<img class="img-thumbnail" src="images/huahudie.png" title="花蝴蝶">
    						  </figure>
    						<div class="card-title">
      							<h2>
          									花蝴蝶
          						<small>蔡依林</small>
      							</h2>
    						</div>
  							</div>

  							<div class="card">
  							  <figure class="effect-bubba">
    							<img class="img-thumbnail" src="images/Gold.png" title="Gold">
    						  </figure>
    						<div class="card-title">
      							<h2>
          									Gold
          						<small>空中铁匠</small>
      							</h2>
    						</div>
  							</div>

  							<div class="card">
  							  <figure class="effect-bubba">
    							<img class="img-thumbnail" src="images/yanweidie.png" title="燕尾蝶">
    						  </figure>
    						<div class="card-title">
      							<h2>
         									燕尾蝶
          						<small>梁静茹</small>
      							</h2>
    						</div>
  							</div>

						</div>
					</div>
				</div>		
			<!---->
			<div class="clearfix"> </div>
		</div>
			<!---->
			<div class="number">
				<div class="feb0" style="font-family: FontName">
					<b>→</b>
					<label>新</label>
				</div>
			<div class="story"><h4  class="stories0" style="font-family: FontName"><span>最  新    M  V</span></h4></div>
			<!---->		
    		<div class="span_8">
    		  <div class="row_8">

				<div class="grids" >
					<div class="grid">
						<h3 style="font-family: FontName">Beatsteaks-Meantime</h3>
						<figure class="effect-bubba0">
						<a href="360videoDemo.jsp"><img style="max-width:100%" src="videoImages/BeatsteaksMeantime.png" title="点击观看" /></a>
						<div class="time">
							<span>02:37</span>
						</div>	
						</figure>
						<div class="clear" > </div>
					</div>
					<div class="grid">
						<h3 style="font-family: FontName">Avril Lavigne-Girlfriend</h3>
						<figure class="effect-bubba0">
						<a href="videoDemo4.jsp"><img style="max-width:100%" src="videoImages/girlfriend.png" title="点击观看" /></a>
						<div class="time">
							<span>04:01</span>
						</div>
						</figure>
						<div class="clear" > </div>
					</div>
					<div class="grid">
						<h3 style="font-family: FontName">Lenka-Trouble is a friend</h3>
						<figure class="effect-bubba0">
						<a href="videoDemo2.jsp"><img style="max-width:100%" src="videoImages/trouble.png" title="点击观看" /></a>
						<div class="time">
							<span>03:39</span>
						</div>
						</figure>
						<div class="clear" > </div>
					</div>
				</div>
				
				<div class="grids" >
					<div class="grid">
						<h3 style="font-family: FontName">NoaNeal-Graffiti</h3>
						<figure class="effect-bubba0">
						<a href="360videoDemo1.jsp"><img style="max-width:100%" src="videoImages/NoaNeal.png" title="点击观看" /></a>
						<div class="time">
							<span>03:05</span>
						</div>
						</figure>
						<div class="clear" > </div>
					</div>
					<div class="grid">
						<h3 style="font-family: FontName">蔡依林-日不落</h3>
						<figure class="effect-bubba0">
						<a href="videoDemo1.jsp"><img style="max-width:100%" src="videoImages/ribuluo.png" title="点击观看" /></a>
						<div class="time">
							<span>03:41</span>
						</div>
						</figure>
						<div class="clear" > </div>
					</div>
					<div class="grid">
						<h3 style="font-family: FontName">Moumoon-Sunshine Girl</h3>
						<figure class="effect-bubba0">
						<a href="videoDemo3.jsp"><img style="max-width:100%" src="videoImages/sunshine girl.png" title="点击观看" /></a>
						<div class="time">
							<span>03:49</span>
						</div>
						</figure>
						<div class="clear" > </div>
					</div>
				</div>
				
				
			</div>
				</div>
				</div>		
			<!---->
			<div class="clearfix"> </div>
		</div>
	</div>
	
	
	
	<!--右边整个模块样式-->
		<div class="col-md-4 content-bottom">
			<div class="story"><h4  class="stories" style="font-family: FontName"><span>🔥&nbsp;&nbsp;排&nbsp;&nbsp;行&nbsp;&nbsp;榜</span></h4></div>
			<!--排行榜样式-->
			<div class="cd-tabs">
			<nav>
				<ul class="cd-tabs-navigation">
					<li><a data-content="fashion"  href="#0" style="font-family: FontName">&nbsp;&nbsp;歌     曲&nbsp;&nbsp;<i> </i></a></li>
					<li><a data-content="cinema" href="#0" class="selected fashion1" style="font-family: FontName">&nbsp;&nbsp;艺     人&nbsp;&nbsp;<i> </i></a></li>
					<li><a data-content="television" href="#0" class="fashion2" style="font-family: FontName">&nbsp;&nbsp;专     辑&nbsp;&nbsp;<i> </i></a></li>
					
				</ul> 
			</nav>
	<ul class="cd-tabs-content">
		<li data-content="fashion" >
		<div class="top-men">
			<table class="table table-condensed table-hover">
			<thead>
                <tr>
                  <th>排名</th>
                  <th>歌曲</th>                 
                  <th>艺术家</th>
                  <th>热度</th>
                </tr>
              </thead>
              <s:action name="getTopMusicclickNum" executeResult="true"></s:action>
            </table>
		</div>
</li>
<li data-content="cinema" class="selected">
		<div class="top-men">
			<table class="table table-condensed table-hover">
			<thead>
                <tr>
                  <th>排名</th>
                  <th>艺术家</th>                 
                  <th>热度</th>
                </tr>
              </thead>
              <s:action name="getTopSingerPoll" executeResult="true"></s:action>
            </table>
		</div>
</li>
<li data-content="television" >
	<div class="top-men">
			<table class="table table-condensed table-hover">
			<thead>
                <tr>
                  <th>排名</th>
                  <th>专辑</th>
                  <th>艺术家</th>                 
                  <th>热度</th>
                </tr>
              </thead>
              <s:action name="CdCollegeNum" executeResult="true"></s:action>
            </table>
		</div>
</li>
	</ul> 
</div> 
<!--最新歌手专辑样式-->
			<div class="might">
				<h4 style="font-family: FontName">最  新  歌  手  专  辑</h4>
				<s:action name="CdAndSinger" executeResult="true"></s:action>
			</div>
			<!--推荐单曲样式-->
				<div class="grid-top">
				<h4 style="font-family: FontName">推  荐  单  曲</h4>
				<table class="table table-condensed table-hover">
			<thead>
                <tr>
                  <th>单曲</th>
                  <th>艺术家</th>
                  <th>播放</th>                 
                  <th>下载</th>
                </tr>
              </thead>
              <s:action name="searchMusicDownNum" executeResult="true"></s:action>
            </table>
				</div>
				<!--艺术家标签样式-->
				<div class="grid-top-in">
					<h4 style="font-family: FontName">艺 术 家 标 签</h4>
					<p><a href="#" class="jol">Angelina Jolie</a>
					<a href="#" class="lop"> Cssauthor</a> 
					<a href="#" class="bun">Aristokrasi Beyonce Blake</a>
					<a href="#" class="live">Lively Brad Pitt Cameron</a> 
					<a href="#" class="dan">Diaz Daniel</a> 
					<a href="#" class="jol"> Radcliffe David</a> 
					<a href="#" class="live">Beckham Demi Moore Emma </a>
					<a href="#" class="eva">Watson Eva</a>
					<a href="#" class="live">Longoria Gisele </a>
					<a href="#" class="bun">Bundchen Gwyneth Paltrow</a>
					<a href="#" class="live">Halle Berry </a>
					<a href="#" class="jol">Harry Potter</a> 
					<a href="#" class="live">Heidi Klum </a>
					<a href="#" class="bun">James Franco</a> 
					<a href="#" class="live">Jennifer </a>
					<a href="#" class="lop"> Lopez Jessica</a> 
					<a href="#" class="live">Alba Johnny Depp </a>
					<a href="#" class="bun">Jon Hamm Jude</a>
					<a href="#" class="eva">Law Kate Moss Kate</a>
					<a href="#" class="live">Winslet Katie </a>
					<a href="#" class="bun">Holmes Katy Perry</a>
					<a href="#" class="live">Kim Kardashian </a>
					<a href="#" class="dan">Kristen</a> 
					<a href="#" class="eva">Stewart</a>
					<a href="#" class="live">Lady Gaga Madonna </a>
					<a href="#" class="bun">Megan Fox Michelle</a> 
					<a href="#" class="live">Williams Natalie </a>
					<a href="#" class="bun">Portman</a> 
					<a href="#" class="live">Nicole </a>
					<a href="#" class="eva">Kidman Penelope</a>
					<!---
					<a href="#" class="live">Cruz Reese Witherspoon Reklam</a> 
					<a href="#" class="lop"> Rihanna</a> 
					<a href="#" class="live">Robert Pattin </a>
					<a href="#" class="bun">Son Sarah</a> 
					<a href="#" class="live">Jessica </a>
					<a href="#" class="jol">Parker Scar </a> 
					-->
					 </p>				
				</div>
				<!---->
		</div>
		<div class="clearfix"></div>
	</div>
	<i class="line"> </i>
	<i class="line-in"> </i>
	<i class="line-in line-in1"> </i>
	<i class="line-in line-in2"> </i>
	</div>
	
	
	
	
	<p class="footer-class">版权所有 © 2015 <a href="#" target="_blank">悦心音乐</a> </p>
<script>
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
<%@page import="vo.Singer"%>
<%@page import="vo.CD"%>
<%@page import="vo.Music"%>
<%@page import="vo.Singer"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>艺术家页面</title>
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
		<!---->
		<link rel="stylesheet" href="minCSS/SINGERcssANDjs/TABSstyle.css">
		<link rel="stylesheet" href="minCSS/iconfont.css">
		<div class="row"><div class="col-md-1">&nbsp;</div></div>
						
<div class="row">
 <div class="col-md-12">
      <ul class="nav nav111-tabs nav111-tabs-left" style="font-family:FontName;">
        <li class="active">
          <a href="#ALLsinger" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe6a1;</i>全部艺术家
          </a>
        </li>
        <li>
          <a href="#HUAYUsinger" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe619;</i>华语艺术家
          </a>
        </li>
        <li>
          <a href="#OUMEIsinger" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe61e;</i>欧美艺术家
          </a>
        </li>
        <li>
          <a href="#HANGUOsinger" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe618;</i>韩国艺术家
          </a>
        </li>
        <li>
          <a href="#RIBENsinger" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe61c;</i>日本艺术家
          </a>
        </li>
        <li>
          <a href="#OTHERsinger" data-toggle="tab">
            <i style="color:;font-size:28px;" class="icon iconfont">&#xe783;</i>其他艺术家
          </a>
        </li>
      </ul>
<!-- 全部艺术家 -->
      <div id="my_side_tabs" class="tab-content side-tabs side-tabs-left">
        <div class="tab-pane fade in active" id="ALLsinger">
	<h3 style="position:relative;font-family:FontName;left:760px">全部艺术家</h3>
	<%
		List<Object> objects = (List<Object>)request.getAttribute("list");
		for(int i=0;i<objects.size();i++){
			Object[] objs = (Object[])objects.get(i);
			Singer singer = new Singer();
			singer.setSingerId((Integer)objs[0]);
			singer.setArtist((String)objs[1]);
			singer.setSingImg((String)objs[2]);
	%>
	 <a href="getSingerInfo?singer.singerId=<%=singer.getSingerId()%>">
      <div class="image-box" title="<%=singer.getArtist()%>">
        <div class="image-content">
          <img src="singer/<%=singer.getSingImg()%>" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;"><%=singer.getArtist()%></div>
      </div>
    </a>
    <%} %>
   
	    </div>
	    <!--//全部艺术家 -->
	    
	    <!-- 华语艺术家 -->
        <div class="tab-pane fade" id="HUAYUsinger">
	<h3 style="position:relative;font-family:FontName;left:760px">华语艺术家</h3>
	<a href="#">
      <div class="image-box" title="周杰伦">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/P/4/0025NhlN2yWrP4.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">周杰伦</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="陈奕迅">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/e/k/003Nz2So3XXYek.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">陈奕迅</div>
      </div>
    </a>
	
	 <a href="#">
      <div class="image-box" title="林俊杰">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/e/2/001BLpXF2DyJe2.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">林俊杰</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="G.E.M. 邓紫棋">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/F/N/001fNHEf1SFEFN.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">G.E.M. 邓紫棋</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="七妹">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/d/b/000kLeDp2p0adb.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">七妹</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="庄心妍">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/M/O/003Cn3Yh16q1MO.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">庄心妍</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="鹿晗">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/d/O/001SqkF53OEhdO.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">鹿晗</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="TFBOYS">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/B/m/000zmpju02bEBm.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">TFBOYS</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="BEYOND">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/C/u/002pUZT93gF4Cu.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">BEYOND</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="筷子兄弟">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/C/r/002Sm9iK4RIsCr.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">筷子兄弟</div>
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
        <!--//华语艺术家 -->
        
        <!-- 欧美艺术家 -->
        <div class="tab-pane fade" id="OUMEIsinger">
	<h3 style="position:relative;font-family:FontName;left:760px">欧美艺术家</h3>
	<a href="#">
      <div class="image-box" title="Justin Bieber (贾斯汀·比伯)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/E/P/002DYpxl3hW3EP.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Justin Bieber (贾斯汀·比伯)</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="Wiz Khalifa (维兹·卡利法)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/c/o/000CQ06r24Naco.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Wiz Khalifa (维兹·卡利法)</div>
      </div>
    </a>
	
	 <a href="#">
      <div class="image-box" title="Flo Rida (佛罗·里达)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/J/p/001IKmTG2BVhJp.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Flo Rida (佛罗·里达)</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="Eminem (艾米纳姆)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/j/8/000yDAjj2TE9j8.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Eminem (艾米纳姆)</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="Avril Lavigne (艾薇儿·拉维尼)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/B/w/001Ic36m4AhaBw.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Avril Lavigne (艾薇儿·拉维尼)</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="Adele (阿黛尔)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/p/x/003CoxJh1zFPpx.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Adele (阿黛尔)</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="Kelly Clarkson (凯丽·克莱森)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/P/k/0034b6ah1V4ZPk.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Kelly Clarkson (凯丽·克莱森)</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="One Direction (单向组合)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/f/V/001FXn5P0kkWfV.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">One Direction (单向组合)</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="Maroon 5 (魔力红乐团)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/I/Q/001JuGrt372YIQ.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Maroon 5 (魔力红乐团)</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="Coldplay (酷玩乐队)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/o/n/001MXQUi1tlLon.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Coldplay (酷玩乐队)</div>
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
        <!--//欧美艺术家 -->
        
        <!-- 韩国艺术家 -->
        <div class="tab-pane fade" id="HANGUOsinger">
<h3 style="position:relative;font-family:FontName;left:760px">韩国艺术家</h3>
<a href="#">
      <div class="image-box" title="G-DRAGON (权志龙)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/a/e/000t2qd13dLpae.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">G-DRAGON (权志龙)</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="PSY (朴载相)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/8/T/002vbc3A2bv88T.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">PSY (朴载相)</div>
      </div>
    </a>

	 <a href="#">
      <div class="image-box" title="태양 (太阳)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/C/W/002Of0Px3EDXCW.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">태양 (太阳)</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="아이유 (IU)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/O/j/004Bjyj52RTYOj.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">아이유 (IU)</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="현아 (泫雅)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/b/G/0040tgjy2qm5bG.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">현아 (泫雅)</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="백지영 (白智英)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/A/d/002uVveG0gdqAd.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">백지영 (白智英)</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="효린 (孝琳)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/N/c/003XGKPF3lw4Nc.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">효린 (孝琳)</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="BIGBANG (빅뱅)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/N/1/004AlfUb0cVkN1.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">BIGBANG (빅뱅)</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="iKON (아이콘)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/D/g/003F1Vhd0S2FDg.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">iKON (아이콘)</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="EXO (엑소)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/K/C/001QVwtq3l8cKC.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">EXO (엑소)</div>
      </div>
    </a>
    
    <nav class="text-center" title="筷子兄弟">
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
        <!--//韩国艺术家 -->
        
        <!-- 日本艺术家 -->
        <div class="tab-pane fade" id="RIBENsinger">
<h3 style="position:relative;font-family:FontName;left:760px">日本艺术家</h3>
<a href="#">
      <div class="image-box" title="澤野弘之 (さわの ひろゆき)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/8/C/0023TUOS0vGD8C.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">澤野弘之 (さわの ひろゆき)</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="TK from 凛として時雨 (Toru Kitajima)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/w/q/0006c3Oz12Ipwq.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">TK from 凛として時雨 (Toru Kitajima)</div>
      </div>
    </a>

	 <a href="#">
      <div class="image-box" title="Dj Okawari">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/F/m/002k4eTx0wxDFm.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Dj Okawari</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="高梨康治 (たかなし やすはる)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/X/Q/003b7byz4JUrXQ.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">高梨康治 (たかなし やすはる)</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="倉木麻衣 (くらき まい)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/n/0/002qS3if49uvn0.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">倉木麻衣 (くらき まい)</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="浜崎あゆみ (滨崎步)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/t/0/000bzeAd1jLft0.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">浜崎あゆみ (滨崎步)</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="手嶌葵">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/X/I/004bzYYO0qUNXI.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">手嶌葵</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="μ's (缪斯)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/D/D/002C98is0yAcDD.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">μ's (缪斯)</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="AKB48 (エーケービー フォーティエイト)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/9/a/000gEeDf0gJ79a.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">AKB48 (エーケービー フォーティエイト)</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="back number (バックナンバー)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/O/X/004YWbes0huGOX.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">back number (バックナンバー)</div>
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
        <!--//日本艺术家 -->
        
        <!-- 其他艺术家 -->
        <div class="tab-pane fade" id="OTHERsinger">
<h3 style="position:relative;font-family:FontName;left:760px">其他艺术家</h3>
<a href="#">
      <div class="image-box" title="The Baby Einstein Music Box Orchestra">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/s/D/001rVW1h1NrYsD.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">The Baby Einstein Music Box Orchestra</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="Vienna Philharmonic Orchestra (维也纳爱乐乐团)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/E/O/000aU1EY0vqWEO.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Vienna Philharmonic Orchestra (维也纳爱乐乐团)</div>
      </div>
    </a>

	 <a href="#">
      <div class="image-box" title="中国交响乐团">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/m/A/001oK7xZ3nZamA.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">中国交响乐团</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="Richard Clayderman (理查德·克莱德曼)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/P/a/0038poo73TW3Pa.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Richard Clayderman (理查德·克莱德曼)</div>
      </div>
    </a>
    
    <a href="#">
      <div class="image-box" title="郎朗">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/m/F/001A2KKg0I4LmF.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">郎朗</div>
      </div>
    </a>
	
	<a href="#">
      <div class="image-box" title="Ludwig van Beethoven (路德维希·范·贝多芬)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/B/v/001Pv4Lg0ZxCBv.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Ludwig van Beethoven (路德维希·范·贝多芬)</div>
      </div>
    </a>
				
				
	<a href="#">
      <div class="image-box" title="Wolfgang Amadeus Mozart (沃尔夫冈·阿马德乌斯·莫扎特)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/8/I/003On3t22Hfz8I.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Wolfgang Amadeus Mozart (沃尔夫冈·阿马德乌斯·莫扎特)</div>
      </div>
    </a>			
				
	<a href="#">
      <div class="image-box" title="Johann Strauss (约翰·施特劳斯)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/H/N/002AtEmM0jwzHN.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Johann Strauss (约翰·施特劳斯)</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="John Williams (约翰·威廉姆斯)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/H/y/004KPc141kBGHy.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">John Williams (约翰·威廉姆斯)</div>
      </div>
    </a>			
    
    <a href="#">
      <div class="image-box" title="Paul Mauriat (保罗·莫里哀)">
        <div class="image-content">
          <img src="http://i.gtimg.cn/music/photo/mid_singer_300/c/F/001UunPq40tRcF.jpg" />
          <div class="image-detail">
          </div>
        </div>
        <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">Paul Mauriat (保罗·莫里哀)</div>
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
        <!--//其他艺术家 -->
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
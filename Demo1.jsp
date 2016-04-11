<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>用户更改信息页面</title>
<link rel="shortcut icon" type="image/x-icon" href="images/yuexinicon.png" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
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
			<p style="font-size:2em;" >欢迎来到！更改信息界面</p>		
	
	<ul class="nav nav-tabs">
  		<li style="font-size:24px;font-family: FontName" role="presentation" class="active"><a href="userInfo?user.userId=<%=id %>">更改信息</a></li>
  		<li style="font-size:24px;font-family: FontName" role="presentation"><a href="Demo2.jsp">更改头像</a></li>
  		<li style="font-size:24px;font-family: FontName" role="presentation"><a href="Demo3.jsp">修改密码</a></li>
	</ul>
	<div class="row"><div class="col-md-1">&nbsp;</div></div>
	
      
        
  	<form class="form-horizontal" action="updateInfo">
  		    <img class="col-md-1 img-circle" src="user/<%=id%>.jpg" alt="用户头像" />
      			<input type="hidden" name="user.userId"  value="<s:property value="#attr.users.userId"/>">
  			<div class="form-group" style="position:relative;right:14px;">
    			<label class="col-sm-3 control-label" style="font-size:20px;">用户名：</label>
    			<div class="col-sm-4 input-group-lg">
      			<input type="text" name="user.userId"  value="<s:property value="#attr.users.userId"/>" class="form-control" style="width:300px;" id="disabledInput" disabled>
    			</div>
  			</div>
  			
 			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">真实姓名：</label>
    			<div class="col-sm-8 input-group-lg">
      			<input name="user.username" value="<s:property value="#attr.users.username"/>" type="text" class="form-control" style="width:300px;" id="" placeholder="请填写真实姓名">
    			</div>
  			</div>
  			
			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">性别：</label>
    			<div class="col-sm-1">
  				<label class="radio-inline" style="font-size:18px;">
  				<input type="radio" name="user.sex" id="inlineRadio1" <s:if test="#attr.users.sex=='男'.toString()">checked  </s:if> value="男">男
				</label>
			</div>
			<div class="col-sm-1">
				<label class="radio-inline" style="font-size:18px;">
  				<input type="radio" name="user.sex" id="inlineRadio2" <s:if test="#attr.users.sex=='女'.toString()">checked  </s:if> value="女">女
				</label>
			</div>
			<div class="col-sm-1">
				<label class="radio-inline" style="font-size:18px;">
  				<input type="radio" name="user.sex" id="inlineRadio3" <s:if test="#attr.users.sex=='保密'.toString()">checked  </s:if> value="保密">保密
    			<s:fielderror fieldName="user.sex" cssStyle="color:red"></s:fielderror>
				</label>
			</div>
  			</div>
 
 
		
			<!--bootstrap-->
        <!--Date-Time-pickercss-->
            <link href="timeCSSandJS/bootstrap-datetimepicker.css" rel="stylesheet">
		<!--bootstrap-js-->
			<script src="timeCSSandJS/bootstrap.min.js"></script>
		<!--script-->
            <script src="timeCSSandJS/moment-with-locales.js"></script>
			<script src="timeCSSandJS/bootstrap-datetimepicker.js"></script>
 
  			<!-- <div class="form-group">
  			<label class="col-sm-4 control-label">所在地：</label>			
 			<div ng-app="NgApp">
			<div ng-controller="NgAppCtrl as mc">

			<div class="col-sm-8">
				<input type="text" ng-model="mc.date01" ng-datepicker ng-options="mc.datepickerOptions" style="width:300px;"/>
			</div>

			</div>
			</div>
			</div> -->
			
			
			<div class="form-group">
			  <label class="col-sm-4 control-label" style="font-size:20px;">出生日期：</label>
			 <div class="col-sm-4">
			    <div class="input-group input-group-lg date modi_fic" id="datetimepicker1">
  				<input name="user.bir" value="<s:date name="#attr.users.bir" format="yyyy年 MM月dd日"/>" type="text" class="form-control modi_fic_srch" style="width:300px;" placeholder='<s:date name="#attr.users.bir" format="yyyy年  MM月dd日"/>' aria-describedby="basic-addon1">
  				<span class="input-group-addon" style="position:relative;left:-2px"><span style="color:#0099FF" class="glyphicon glyphicon-calendar cal-form"></span></span>
				</div> 
				</div>
			       <!--//script-->
			            <script type="text/javascript">
			                $(function () {
			                    $('#datetimepicker1').datetimepicker();
			                    
			                    language: 'zh-cn'
			                });
			            </script>
			       <!--//script-->
			  </div>
	
  			
<style>
._citys { width: 450px; display: inline-block; border: 2px solid #eee; padding: 5px; position: relative; background-color: #fff; }
._citys span { color: #56b4f8; height: 15px; width: 15px; line-height: 15px; text-align: center; border-radius: 3px; position: absolute; right: 10px; top: 10px; border: 1px solid #56b4f8; cursor: pointer; }
._citys0 { width: 100%; height: 34px; display: inline-block; border-bottom: 2px solid #56b4f8; padding: 0; margin: 0; }
._citys0 li { display: inline-block; line-height: 34px; font-size: 15px; color: #888; width: 80px; text-align: center; cursor: pointer; }
.citySel { background-color: #56b4f8; color: #fff !important; }
._citys1 { width: 100%; display: inline-block; padding: 10px 0; }
._citys1 a { width: 83px; height: 35px; display: inline-block; background-color: #f5f5f5; color: #666; margin-left: 6px; margin-top: 3px; line-height: 35px; text-align: center; cursor: pointer; font-size: 13px; overflow: hidden; }
._citys1 a:hover { color: #fff; background-color: #56b4f8; }
.AreaS { background-color: #56b4f8 !important; color: #fff !important; }
</style> 
<script src="cityCSSandJS/Popt.js"></script>
<script src="cityCSSandJS/cityJson.js"></script>
<script src="cityCSSandJS/citySet.js"></script>			
  			
  			
  
			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">所在地：</label>
    		<div class="col-sm-8 input-group-lg select_more">
      			<input id="city" type="text" name="user.useraddress" value="<s:property value="#attr.users.useraddress"/>" class="form-control" style="width:300px;" id="road_leave_city">
    		</div>
  			</div>
  			
<script>
$("#city").click(function (e) {
	SelCity(this,e);
});
</script>
  						
			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">兴趣爱好：</label>
    		<div class="col-sm-8 input-group-lg">
      			<input name="user.interest" type="text" class="form-control" value="<s:property value="#attr.users.interest"/>" style="width:300px;" id="" placeholder="请填写兴趣爱好">
    		</div>
  			</div>
  			
 			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">联系电话：</label>
    		<div class="col-sm-8 input-group-lg">
      			<input name="user.userTel" type="text" value="<s:property value="#attr.users.userTel"/>" class="form-control" style="width:300px;" id="" placeholder="请填写电话号码">
    		</div>
  			</div>
  			
 			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">用户介绍：</label>
   			<div class="col-sm-8 input-group-lg">
      			<textarea name="user.info" class="form-control" style="width:300px; height:150px;" id="" placeholder="请填写你的介绍"> <s:property value="#attr.users.info"/></textarea>
    		</div>
  			</div>

  			<div class="form-group text-center">
    		<div class="col-sm-offset-2 col-sm-7">
      			<button style="position:relative;left:20px" type="submit" class="btn btn-lg btn-success">确认修改</button>
    		</div>
  			</div>
		</form>
			
						
		</div>
	<i class="line"> </i>
	<i class="line-in"> </i>	
	</div>

	<p class="footer-class">版权所有 © 2015 <a href="#" target="_blank">悦心音乐</a> </p>
</div>
</body>
</html>
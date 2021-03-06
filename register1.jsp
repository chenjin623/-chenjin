<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>用户注册页面</title>
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
<body ng-app="angularRecaptcha">
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
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
<link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>

		
	<p style="font-size:2em;" >欢迎来到！用户注册界面</p>		
	<div class="row"><div class="col-md-1">&nbsp;</div></div>
	
	<form class="form-horizontal" id="contact_form" method="post"  action="reg" ng-submit="recap.signup()" ng-controller="recapCtrl as recap">
  			
  			<div class="form-group">
  			    <label class="col-sm-4 control-label" style="font-size:20px;">用户名：</label>
    			<div class="col-sm-4 inputGroupContainer">
      			<div class="input-group input-group-lg">
 				<span class="input-group-addon" id="basic-addon1"><span style="color:#0099FF" class="glyphicon glyphicon-user"></span></span>
  				<input onblur="checkUserName()" name="user_name" type="text" id="userName" class="form-control" placeholder="请输入用户名" aria-describedby="basic-addon1">
  				<!-- <input name="user_name" type="text" id="userName"  name="user.userId" class="form-control" placeholder="请输入用户名" aria-describedby="basic-addon1"> -->
				</div>
    			</div>
  			</div>
  			
  			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">密码：</label>
    			<div class="col-sm-4 inputGroupContainer">
      			<div class="input-group input-group-lg">
 				<span class="input-group-addon" id="basic-addon1"><span style="color:#0099FF" class="glyphicon glyphicon-lock"></span></span>
  				<input name="user_password" id="passwd" type="password" class="form-control" placeholder="请输入密码" aria-describedby="basic-addon1">
				</div> 
    			</div>
  			</div>
  			
  			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">重复密码：</label>
    			<div class="col-sm-4 inputGroupContainer">
      			<div class="input-group input-group-lg">
 				<span class="input-group-addon" id="basic-addon1"><span style="color:#0099FF" class="glyphicon glyphicon-lock"></span></span>
  				<input name="user_password_again" id="passwd2" type="password" class="form-control" placeholder="请再次输入密码" aria-describedby="basic-addon1">
				</div> 
    			</div>
  			</div>
  			
  			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">密保问题：</label>
    			<div class="col-sm-4 selectContainer">
      			<select name="user_mibao_question" class="form-control input-lg" style="width:342px;"  id="question">
      				<option value=" " >请选择你的密保问题</option>
      				<option>您的出生地是？</option>
  					<option>您母亲的姓名是？</option>
  					<option>您父亲的姓名是？</option>
  					<option>您的学号（或工号）是？</option>
  					<option>您班主任的名字是？</option>					
      			</select>
    			</div>
  			</div>
  			
  			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">密保答案：</label>
    			<div class="col-sm-4 inputGroupContainer">
      			<div class="input-group input-group-lg">
 				<span class="input-group-addon" id="basic-addon1"><span style="color:#0099FF" class="glyphicon glyphicon-pencil"></span></span>
  				<input name="user_mibao_text" id="mibao" type="text" class="form-control" placeholder="请输入密保答案" aria-describedby="basic-addon1">
				</div> 
    			</div>
  			</div>
  			
  			
  			<div class="form-group">
    			<label class="col-sm-4 control-label" style="font-size:20px;">验证码：</label>
    			<div class="col-sm-4">
      			<div vc-recaptcha key="recap.publicKey"></div>
    			</div>
  			</div>
  			
  			<div class="form-group text-center">
    		<div class="col-sm-offset-2 col-sm-7">
      			<button  type="submit" class="btn btn-lg btn-success">提交注册</button>
    		</div>
  			</div>
  	</form>
<script src="https://www.google.com/recaptcha/api.js?onload=vcRecaptchaApiLoaded&render=explicit" async defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.15/angular.js"></script>
<script src="js/angular-recaptcha.min.js"></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>
<script>
$(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	user_name: {
                validators: {
                	regexp: {
                		regexp: "^[a-zA-Z][a-zA-Z0-9_]{3,7}$",
                		message: '只能字母开头，允许4-8字节，允许字母数字下划线！',
                    },
                        notEmpty: {
                        message: '必须要输入用户名！'
                    }
                }
            },
            user_password: {
                validators: {
                	 regexp: {
                 		regexp: "[a-zA-Z0-9]{6,20}",
                 		message: '只能输入6-20个字母、数字、下划线组成的字符！',
                     },               	
                    notEmpty: {
                        message: '必须要输入密码！'
                    }
                }
            },
            user_password_again: {
                validators: {
                	identical: {
                		field: "user_password",
                		message: '密码不一致！',
                    },
                    stringLength: {
                        min: 6,
                        message: '长度不能小于6个字节！',
                    },
                    notEmpty: {
                        message: '必须要输入密码！'
                    }
                }
            },
            user_mibao_question: {
                validators: {
                    notEmpty: {
                        message: '请选择密保问题！'
                    }
                }
            },
            user_mibao_text: {
            	 validators: {
                     stringLength: {
                        min: 2,
                        message: '长度不能小于2个字节！',
                    },
                    notEmpty: {
                        message: '必须要填写密保答案！'
                    }
                    }
                }
            }
        })
});
(function(){
	angular.module('angularRecaptcha',['vcRecaptcha'])
	
	.controller('recapCtrl',['vcRecaptchaService','$http',function(vcRecaptchaService,$http){
		var vm = this;
		vm.publicKey = "6Ld83xQTAAAAADX2PZeFtaZBwhfDMXUEW1nKaCjB";
		
		vm.signup = function(){
			
			/* vcRecaptchaService.getResponse() gives you the g-captcha-response */
			
			if(vcRecaptchaService.getResponse() === ""){ //if string is empty
				alert("必须要输入验证码!!!")
			}else {
				var userName=document.getElementById('userName').value;
				var passwd=document.getElementById('passwd').value;
				var passwd2=document.getElementById('passwd2').value;
				var question=document.getElementById('question').value;
				var mibao=document.getElementById('mibao').value;
				
				location.href =encodeURI("reg.action?user.userId="+userName+"&user.userpassword="+passwd+"&repassword="+passwd2+"&user.problem="+question+"&user.answer="+mibao);
				/* location.href="collectionSendToExcel.action?querybean.billNo=" + billNo+"&customer.SOrgCode"+SOrgCode+"&account.SAccountNo"+account+"&account.SCustBankCode"+SCustBankCode; */

			}
		}
	}])
})()
</script>
<script type="text/javascript">      
   		function checkUserName(){
        /*  alert(1); */
   		//step1:获取XMLHttpRequest对象
         var xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
         /* alert(2); */
         //step2:指定异步提交的目标和提交方式
         var userId = document.getElementById("userName").value;  
         /* alert(userId); */
         var url = "checkUserId?user.userId="+userId;  
         /* alert(url); */
         xmlHttp.open("GET",url,true);
         //step3:指定异步请求完毕之后的处理
         xmlHttp.onreadystatechange = function(){ 			
			if (xmlHttp.readyState == 4) {
		       //step4:获取异步请求返回的数据，并进行处理 
		       var backMsg = xmlHttp.responseText;
		       /* alert(backMsg); */
				 if(backMsg==1){
				        alert("对不起，此用户已经被占用，注册失败!请重新注册！");
					}else{
					    alert("恭喜你，此用户未被占用，可以注册！");
				}
			 }			     
		 }
		//step5:发送请求
		xmlHttp.send();  			
 		}
  	</script>
					
		</div>
	<i class="line"> </i>
	<i class="line-in"> </i>	
	</div>

	<p class="footer-class">版权所有 © 2015 <a href="#" target="_blank">悦心音乐</a> </p>
</div>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>艺术家详情页面</title>
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
		<link rel="stylesheet" href="minCSS/SINGERcssANDjs/singerTABSstyle.css">
	<div class="row"><div class="col-md-1">&nbsp;</div></div>
	<h4>>>艺术家详情>><s:property value="#attr.sing.artist"/>>></h4>		
	<div class="row"><div class="col-md-1">&nbsp;</div></div>
	<div class="row">
	<div class="col-xs-3 text-right">
	<img src="singer/<s:property value="#attr.sing.singImg"/>" class="img-thumbnail" alt="fotograph" title="" />	
	</div>
	<div class="col-xs-5">
	<strong style="font-size:2em;" ><s:property value="#attr.sing.artist"/></strong><br><br>
	<h4>地　区: <s:property value="#attr.sing.area"/></h4><br>
	<h4>票　数: <s:property value="#attr.sing.poll"/></h4><br>
	<h4>曲　风: <s:property value="#attr.sing.style"/></h4><br>
	<h4>出生日期: <s:date name="#attr.sing.singerbir" format="yyyy-MM-dd"/></h4><br>
	</div>
	<div class="col-xs-4">
	<strong style="font-family: FontName; font-size:1.5em; color:#777;" >简介:</strong><br><br>
	<p><s:property value="#attr.sing.singIntroduction"/></p>
	</div>
	<div class="clearfix"></div>
	<div class="col-md-12 text-left">
	<p>　</p>
	 <div class="card">
        <ul class="nav nav-tabs" role="tablist" id="example-one">
          <li role="presentation" class="active">
            <a href="#first" aria-controls="first" role="tab" data-toggle="tab">热门单曲</a>
          </li>
          <li role="presentation">
            <a href="#second" aria-controls="second" role="tab" data-toggle="tab">专辑</a>
          </li>
          <li role="presentation">
            <a href="#third" aria-controls="third" role="tab" data-toggle="tab">mv</a>
          </li>
          <li role="presentation">
            <a href="#fourth" aria-controls="fourth" role="tab" data-toggle="tab">资料</a>
          </li>
        </ul>
        <div class="tab-content">
        <!-- 热门单曲 -->
          <div role="tabpanel" class="tab-pane active" id="first">
            <div class="panel panel-default">
            	<div class="panel-heading" style="font-family: FontName; font-size:1.5em; color:#777;" >单曲列表</div>
            	<table class="table table-condensed table-hover">
			<thead>
                <tr>
                  <th>单曲</th>
                  <!-- <th>时长</th> -->
                  <th>M V</th>
                  <th>播放</th>                 
                  <th>下载</th>
                </tr>
              </thead>
              <tbody>
              
              <s:iterator value="#attr.sing.cd" var="cd" status="st">
              	<s:iterator value="#cd.music" var="music" status="sta">
                <tr>
                  <td><s:property value="musicName"/></td>
                  <td>
                  	  <button type="button" class="btn btn-default">
  						 <span class="glyphicon glyphicon-film"></span>
  					  </button>
				  </td>
                  <td>
                  	  <button type="button" class="btn btn-default">
  						 <span class="glyphicon glyphicon-headphones"></span>
  					  </button>
				  </td>
                  <td>
                      <button type="button" class="btn btn-default">
  						<span class="glyphicon glyphicon-download-alt"></span>
					  </button>
				  </td>
                </tr>
                </s:iterator>
            </s:iterator>      
                </tbody>
            </table>
            </div>
          </div>
          <!-- //热门单曲 -->
          
          <!-- 专辑 -->
          <div role="tabpanel" class="tab-pane" id="second">
            
            <div class="row">
            <s:iterator value="#attr.sing.cd" var="cd" status="st">
            <s:if test="(#st.getCount()%5)+1!=0">
            	<div class="col-xs-3" title="Sleep Alone">
		            <div class="play_name111"> 
		            <img src="cd/<s:property value="cdImg"/>" alt="..." class="img-thumbnail" style="height: 200px;">
		            <div class="ico_play"></div>    
		            </div>
		            <div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;"><s:property value="cdName"/></div> 
				</div>
			</s:if>
			<s:if test="(#st.getIndex()+1)%4==0">
				<div class="row"><div class="col-md-1">&nbsp;</div></div>
			<div class="row"><div class="col-md-1">&nbsp;</div></div>
			</s:if>
			</s:iterator>
			</div>
          </div>
          <!-- //专辑 -->
          
          <!-- mv -->
          <div role="tabpanel" class="tab-pane" id="third">
            <div class="row">
             <s:iterator value="#attr.sing.cd" var="cd" status="st">
             <s:if test="(#st.getCount()%5)+1!=0">
				<div class="col-xs-4" title="<s:property value="#attr.sing.artist"/>">
            		<div class="play_name222"> 
            			<img src="minCSS/SINGERcssANDjs/mqdefault (2).webp" alt="..." class="img-thumbnail">
            			<div class="ico_play222"></div>    
            		</div>
            		<div style="color:#FF8200; width:130px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">
		           		<s:property value="#attr.sing.artist"/>-
		           		<s:property value="cdName"/>
            		</div> 
				</div>
				</s:if>
			<s:if test="(#st.getIndex()+1)%4==0">
				<div class="row"><div class="col-md-1">&nbsp;</div></div>
			<div class="row"><div class="col-md-1">&nbsp;</div></div>
			</s:if>	
			</s:iterator>
			</div>
			<div class="row"><div class="col-md-1">&nbsp;</div></div>
          </div>
          <!-- //mv -->
          
          <!-- 资料 -->
          <div role="tabpanel" class="tab-pane" id="fourth"> 
            <div class="row">  	
            <div class="col-md-12">
	<p><s:property value="#attr.sing.singIntroduction"/></p>
	<br><br>
	<strong style="font-family: FontName; font-size:1.5em; color:#ff8200;" >TA的基本档案:</strong><br>
	        </div>
	        <div class="col-md-6">
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="陈奕迅">
	        <strong>中文名：</strong>&nbsp;<s:property value="#attr.sing.artist"/><br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="阿臣、医生、E神、E臣、陈小胖、所长">
	        <strong>别名：</strong>&nbsp;阿臣、医生、E神、E臣、陈小胖、所长<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="香港">
	        <strong>出生地：</strong>&nbsp;<s:property value="#attr.sing.area"/><br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="1.71米">
	        <strong>身高：</strong>&nbsp;1.71米<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="O型">
	        <strong>血型：</strong>&nbsp;O型<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="香港">
	        <strong>主要成就：</strong>&nbsp;香港<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="汉族">
	        <strong>民族：</strong>&nbsp;汉族<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="唱歌、游泳、网球、看戏、聊天">
	        <strong>兴趣爱好：</strong>&nbsp;唱歌、游泳、网球、看戏、聊天<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="搞怪、执着">
	        <strong>最鲜明的个性：</strong>&nbsp;搞怪、执着<br>
	        </div>
	        </div>
	        <div class="col-md-6">
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="Eason Chan">
	        <strong>外文名：</strong>&nbsp;Eason Chan<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="中国香港">
	        <strong>国籍：</strong>&nbsp;<s:property value="#attr.sing.area"/><br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="歌手、演员">
	        <strong>职业：</strong>&nbsp;歌手、演员<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="72kg">
	        <strong>体重：</strong>&nbsp;72kg<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="狮子座">
	        <strong>星座：</strong>&nbsp;狮子座<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="《爱情转移》、《十年》、《浮夸》、《k歌之王》">
	        <strong>代表作品：</strong>&nbsp;《爱情转移》、《十年》、《浮夸》、《k歌之王》<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="1974年7月27日">
	        <strong>出生日期：</strong>&nbsp;1974年7月27日<br>
	        </div>
	        <div style="width:330px; white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="钢琴、吉他、小提琴、口琴、手风琴、鼓、萨克">
	        <strong>最擅长的乐器：</strong>&nbsp;钢琴、吉他、小提琴、口琴、手风琴、鼓、萨克<br>
	        </div>
	        </div>
	      <div class="col-md-12">&nbsp;</div>
	      <div class="col-md-12"><strong style="font-family: FontName; font-size:1.5em; color:#ff8200;" >从艺历程:</strong><br>
	      <strong>新秀比赛</strong><br><p>　　陈奕迅于1995年暑假期间回香港参加TVB举办的第14届新秀歌唱大赛，成为该届冠军，随即跟华星唱片公司签下歌星合约，正式踏入香港乐坛。</p><br>
	      <strong>华星时期</strong><br><p>　　于1996年推出首张个人同名大碟《陈奕迅》，其后《与我常在》和《我的快乐时代》推出后，渐受大众认识及注视。《我的快乐时代》获得首个叱吒乐坛流行榜颁奖典礼的“叱吒乐坛至尊唱片大奖”。</p><p>　　1999年，发行《幸福》、《天佑爱人》和《新生活》 等专辑，其中的代表作如《幸福摩天轮》和《每一个明天》等。同年与梅艳芳合唱《同声一哭。并在10月7日至10日于香港体育馆举行一连四场的“Big Live陈奕迅大个唱99”演唱会。</p><br>
	      <strong>英皇时期</strong><br><p>　　2000年 陈奕迅转投英皇娱乐旗下品牌Music Plus，与谢霆锋，何嘉莉，叶佩雯，容祖儿和王杰成为公司重要歌手；相继推出的专辑大卖《打得火热》、《Shall We Dance? Shall We Talk!》、《The Easy Ride》、《The Line Up》、《Eason 4 A Change & Hits》和《Live For Today》均成为热卖作品，其中《Shall We Talk》、《打得火热》、《K歌之王》、《明年今日》均进占流行榜冠军。陈并于2000-2002年 三度夺得“四台联颁音乐大奖--传媒大奖”，连续三届成为香港四大电子传媒音乐颁奖典礼大赢家；在2001和2002年度 《叱咤乐坛流行榜颁奖典礼》连续两次夺得“叱咤乐坛男歌手金奖”。而在英皇发展期间，于2001年及2003年 在香港体育馆分别举行两次名为《The Easy Ride》（共9场）及《Third Encounter》（共7场）演唱会。</p><p>　　在2003年度 凭国语专辑《Special Thanks To...》夺得台湾金曲奖“最佳国语男演唱人”和“最佳专辑”，成为了继张学友后首位夺得这个大奖的香港男歌手，亦是第一个同时夺得这两个奖项的香港歌手。</p><p>　　2003年 他与英皇唱片公司因未能就续约问题达成共识关系, 而遭到“雪藏” 。同时其任职香港房屋署总屋宇设备工程师的父亲陈裘大被控受贿罪成入狱，此事对陈奕迅打击甚大。在整个2004年 除接拍电影外，陈奕迅的事业处于休息状态。</p><br>
	      <strong>新艺宝时期</strong><br><p>　　2005年 陈奕迅加盟环球唱片旗下新艺宝唱片公司，新城电台于3月17日 举行一场名为新城唱好陈奕迅05出击音乐会。而作为“复出”的首张专辑《U87》亦于6月7日 推出（U87是他录制专辑时的麦克风型号），四首主打歌（《夕阳无限好》、《阿牛》、《浮夸》及《葡萄成熟时》）获香港各大传媒流行榜周冠军。《U87》为2005年 香港最高销售量的粤语非精选专辑。《U87》更获Time时代周刊选为“2005年最值得购买的五大亚洲唱片”，并对陈奕迅的音乐有很高的评价，指他带领了香港的音乐潮流。</p><p>　　2006年 推出专辑《Life Continues》，主打歌《最佳损友》获香港各大传媒流行榜周冠军。2006年10月21日 于正东10周年演唱会与张学友合唱《热辣辣》、《天下太平》，及互唱《如果这都不算爱》、《最佳损友》，被许多人形容为新的“左麟右李”。</p><p>　　2006年2月 陈奕迅相隔3年后再次于香港体育馆举行了一连9场《Get a Life》演唱会，门票开售首天即售完。演唱会后推出EP《Life Continues》热卖，主打歌《最佳损友》获香港各大传媒流行榜周冠军。其后获奥比斯选为“光明大使”，并探访印度的失明儿童。11月 推出专辑《What's Going On》，其中包括多首冠军歌如《裙下之臣》、《黑择明》和《富士山下》，《富士山下》的国语版《爱情转移》亦成为2007年内地各颁奖礼的大赢家。</p><p>　　2007年1月1日 于2006年度再 度夺走“叱咤乐坛男歌手金奖”和“叱咤乐坛我最喜爱的男歌手”两个大奖；1月13日 夺得“2006最受欢迎男歌星”。1月13日 于2006年度 十大劲歌金曲颁奖典礼首次夺得“最受欢迎男歌星”奖项。</p><p>　　2007年4月 推出国语专辑《认了吧》，在专辑宣传期间，分别于中港台各地举行校园巡回演唱会，并凭此专辑再次提名第19届台湾金曲奖“最佳国语男演唱人”，年度最佳港台专辑。10月 推出专辑《Listen to Eason Chan》，是为一次大突破，整张专辑只有一首慢歌《crying in the party》，其余则是各种类型的快歌。10月24日至11月6日、11月9日至10日 于香港体育馆举行《Eason's Moving On Stage 1》演唱会，因反应热烈关系，一共六度加场至16场。其后两年展开世界巡回演唱会。</p><p>　　2008年1月1日 凭著《Listen to Eason Chan》于2007年度 叱咤乐坛流行榜颁奖典礼夺得“叱咤乐坛男歌手金奖”和“叱咤乐坛我最喜爱的男歌手”，是继2005年度 的商台颁奖礼后，连续第三次同时夺得这两项大奖。2008年1月12日 于2007年度 十大劲歌金曲颁奖典礼中同时夺得“最受欢迎男歌星”及“亚太区最受欢迎香港男歌星”。1月20日 于2007年度 十大中文金曲颁奖音乐会连续三届夺得“最优秀流行男歌手奖”、亦再次夺得“四台联颁音乐大奖－传媒大奖”。在此之前，他与刘德华都一人得过4次传媒大奖，加上2007年 陈奕迅共得该奖5次，刷新纪录成为获传媒大奖最多的歌手，亦是第五次成为香港四大电子传媒音乐颁奖典礼的年度大赢家。8月13日，推出国语专辑《不想放手》。凭此专辑再次提名第20届台湾金曲奖“最佳国语男演唱人”及“最佳国语专辑奖”。</p><p>　　2009年1月1日 于2008年度 叱咤乐坛流行榜颁奖典礼，连续四届夺得“叱咤乐坛我最喜爱的男歌手”。1月3日 于2008年度 十大劲歌金曲颁奖典礼连续二届夺得“亚太区最受欢迎香港男歌星”。3月23日 推出专辑《H3M》，由Moving On Stage演唱会班底每人写一首歌完成。陈奕迅亦交上冠军曲《沙龙》，其他冠军曲包括《七百年后》和《allegro opus 3.3am》。6月27日 于第二十届台湾金曲奖凭专辑《不想放手》第二次夺得“最佳国语专辑奖”，并成为第一位夺得此奖两次的非台湾男歌手。9月21日 推出国语专辑《上五楼的快活》，并凭此专辑再次提名第21届台湾金曲奖“最佳国语男演唱人”。</p><p>　　2010年3月12日 推出EP《Time Flies(EP)》，其中包括三首三台冠军歌《无人之境》、《陀飞轮》及《一丝不挂》。3月 于香港体育馆举行的《DUO陈奕迅2010演唱会》，并邀请好友谢霆锋等作嘉宾。5月，陈奕迅举行他个人首次欧洲巡回演唱会，地点分别在英国伦敦皇家阿尔伯特音乐厅（Royal Albert Hall）、曼彻斯特阿波罗剧院（Manchester Apollo）以及荷兰鹿特丹阿侯伊体育馆（Ahoy Rotterdam）。伦敦以及曼彻斯特站的演唱会门票均在正式售票数小时内售罄。陈奕迅是继已故歌手罗文后，第二位进驻Royal Albert Hall演出的香港歌手。10月6日，DUO 陈奕迅2011演唱会台北及高雄站同时开卖，门票三小时即售罄，主办单位宣布台北站再加场。另外，陈奕迅也成了首位站上高雄巨蛋的香港歌手。10月15日，推出EP《Taste the Atmosphere》。12月29日 陈奕迅于新城劲爆颁奖礼共夺5个半奖成为大赢家，凭《一丝不挂》夺全球劲爆歌曲大奖。</p><p>　　2011年1月1日 2010年度 叱吒乐坛流行榜颁奖典礼中获得五个奖，亦成为大赢家。包括夺得叱咤乐坛男歌手金奖，叱咤乐坛我最喜爱的男歌手等奖项。4月16日 陈奕迅在四川成都举行DUO陈奕迅2011成都演唱会。</p><p>　　2012年 1月4日 王菲陈奕迅将联袂表演《因为爱情》登上2012年央视龙年春晚；12月1号晚 陈奕迅将以《Feel Free！Feel music！》音乐力量新姿态登陆北京万事达中心举办演唱会。12月11日晚 华语金曲奖2012在广州海心沙举行，陈奕迅共获包括全球华人至尊歌手、十大华语唱片在内的6项大奖，成为当晚的最大赢家。</p><p>　　2013年发行专辑《The Key》。</p><p>　　2014年5月15日发行国语概念专辑《米·闪》。该专辑共收录11首歌曲，并且融合了两种不同的风格 ，凭借此专辑在第26届台湾金曲奖获得最佳国语男歌手奖。</p><p>　　2015年6月27日，在第26届金曲奖的舞台上演出组曲《八号风球》，其是由26首香港歌手的歌组合而成。同日，陈奕迅，时隔了12年后拿下第二座国语金曲歌王。 7月10日发行粤语专辑《准备中 Getting Ready》。</p><br>
	      </div>
	      <div class="col-md-12">&nbsp;</div>
	       <div class="col-md-12"><strong style="font-family: FontName; font-size:1.5em; color:#ff8200;" >荣誉记录:</strong><br>
	       <p>1999年十大劲歌金曲奖 《幸福摩天轮》</p>
	       <p>2000年CASH金帆音乐奖 - 最佳男歌手演绎奖（流行音乐） 《K歌之王》</p>
	       <p>2001年第二十四届十大中文金曲颁奖典礼 - 十大中文金曲 《Shall We Talk》</p>
	       <p>2001年十大劲歌金曲颁奖典礼 - 金曲金奖 《Shall We Talk》</p>
	       <p>第二十五届十大中文金曲颁奖礼 - 十大中文金曲 《明年今日》</p>
	       <p>第二十五届十大中文金曲颁奖礼 - 全球华人至尊金曲奖 《明年今日》</p>
	       <p>第十四届台湾金曲奖 - 最佳国语男演唱人奖</p>
	       <p>第十四届台湾金曲奖 - 最佳国语专辑《Special Thanks To...》</p>
	       <p>2003年十大劲歌金曲颁奖典礼 - 十大劲歌金曲《十面埋伏》</p>
	       <p>2005年CASH 金帆音乐奖 - 最佳男歌手演绎奖（流行音乐） 《浮夸》</p>
	       <p>2005 年度新城劲爆颁奖礼 — 劲爆男歌手</p>
	       <p>2006年十大劲歌金曲颁奖礼 – 最受欢迎男歌星</p>
	       <p>2006年十大劲歌金曲颁奖礼 – 十大劲歌金曲《最佳损友》</p>
	       <p>第29届十大中文金曲颁奖礼 - 优秀流行歌手大奖</p>
	       <p>第29届十大中文金曲颁奖礼 - 十大中文金曲《最佳损友》</p>
	       <p>第29届十大中文金曲颁奖礼 - 最优秀流行男歌手</p>
	       <p>2007 叱咤乐坛流行榜颁奖礼--十年我最爱歌曲《K歌之王》</p>
	       <p>2007 十大劲歌金曲颁奖典礼--最受欢迎男歌星</p>
	       <p>2007 十大劲歌金曲颁奖典礼--亚太区最受欢迎香港男歌星</p>
	       <p>2007 十大中文金曲颁奖礼--最优秀流行男歌手大奖</p>
	       <p>2008 年度TVB8金曲榜颁奖典礼 --最受欢迎男歌手奖</p>
	       <p>2008 年度星光大典--港台地区年度男歌手</p>
	       <p>2008 第31届十大中文金曲颁奖典礼--最优秀流行男歌手奖</p>
	       <p>2008 中歌榜 年度最佳男歌手（港台）</p>
	       <p>2009 第六届劲歌王颁奖典礼——港台地区最受欢迎男歌手</p>
	       <p>2009 第32届十大中文金曲颁奖典礼- 全国最佳歌手奖男歌手</p>
	       <p>2009 第32届十大中文金曲颁奖典礼- 全年最高销量男歌手</p>
	       <p>2010 第33届十大中文金曲颁奖典礼- 最优秀流行男歌手</p>
	       <p>2011 香港十大中文金曲奖- 优秀流行歌手、十大金曲奖、最佳男歌手、全年最高销量男歌手、“最优秀流行男歌手”五大奖项。</p>
	       <p>2012年 第十二届全球华语歌曲排行榜 - 最佳男歌手</p>
	       <p>2013年 第35届十大中文金曲 - 十大歌曲奖《重口味》</p>
	       <p>2013年 第35届十大中文金曲 - 最优秀流行男歌手</p>
	       <p>2013年 第35届十大中文金曲 - 全球华人至尊金曲奖《重口味》</p>
	       <p>2013年 第35届十大中文金曲 - 全年最高销量歌手大奖</p>
	       <p>2015年 第37届十大中文金曲-音乐会优秀流行歌手大奖(获奖)</p>
	       <p>2015年 第37届十大中文金曲-音乐会最优秀流行男歌手大奖(获奖)</p>
	       <p>电影奖项</p>
	       <p>2008年 第45届 台湾电影金马奖最佳男配角 破事儿 （提名）</p>
	       <p>2005年 第5届 华语电影传媒大奖最佳男主角 爱作战 （提名）</p>
	       <p>2001年 第20届 香港电影金像奖最佳男配角 薰衣草 （提名）</p>    
	       </div>
            	</div>
            </div>
            <!-- //资料 -->
            
          </div>
        </div>
    
	</div>
	<script src="js/bootstrap.min.js"></script>
		<script>
		tabSlide();

		$('.nav-tabs li').on('shown.bs.tab', function() {
		  $('#magic-line').remove();
		  tabSlide();
		});

		function tabSlide() {
		  $("#example-one").append("<li id='magic-line'></li>");
		  var $magicLine = $("#magic-line");
		  $magicLine
		    .width($(".active").width())
		    .css("left", $(".active a").position().left)
		    .data("origLeft", $magicLine.position().left)
		    .data("origWidth", $magicLine.width());
		  $("#example-one li").find("a").hover(function() {
		    $el = $(this);
		    leftPos = $el.position().left;
		    newWidth = $el.parent().width();
		    $magicLine.stop().animate({
		      left: leftPos,
		      width: newWidth
		    });
		  }, function() {
		    $magicLine.stop().animate({
		      left: $magicLine.data("origLeft"),
		      width: $magicLine.data("origWidth")
		    });
		  });

		}
		</script>				
	
			
	</div>
	</div>
	<i class="line"> </i>
	<i class="line-in"> </i>
	<!-- <i class="line-in line-in1"> </i> -->
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
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>MV页面</title>
<link rel="shortcut icon" type="image/x-icon" href="images/yuexinicon.png" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" media="all" />	
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


<link rel="stylesheet" href="./Metro Blocks_files/css_HUN2Y1W2XwjNntGaugjIuXw3UmlS95JQloQNfkKbae0.css">
<style>.md-layer-1-0-0{background:#f87a12;z-index:995;color:#ffffff !important;text-align:center;font-size:3.3333333333333em;font-weight:400;}.md-layer-1-0-1{background:#d136d1;z-index:997;color:#ffffff !important;text-align:center;font-size:2em;font-weight:200;font-family:Open Sans;}.md-layer-1-0-2 a{background:#52527a;border:1px solid #ffffff;color:#ffffff !important;text-align:center;font-size:1.5em;font-weight:300;}.md-layer-1-0-2{z-index:998}.md-layer-1-0-3{background:#1e64f0;z-index:996;color:#ffffff !important;text-align:left;font-size:2em;font-weight:300;}.md-layer-1-0-4{z-index:1000;}.md-layer-1-1-0{z-index:996;}.md-layer-1-1-1{z-index:997;}.md-layer-1-1-2{z-index:998;}.md-layer-1-1-3{z-index:999;}.md-layer-1-1-4{z-index:1000;}.md-layer-1-1-5{z-index:995;color:#52ebff !important;font-size:2.5em;font-family:Open Sans;}.md-layer-1-1-6{z-index:994;color:#12fa19 !important;font-size:5.8333333333333em;font-family:Open Sans;}.md-layer-1-1-7{z-index:993;color:#fae500 !important;font-size:2.5em;font-family:Open Sans;}
</style>
<link rel="stylesheet" href="./Metro Blocks_files/css_sABfjjkuPKIbegYLu8V7yYGscj-t4DKRkZ9gPITMS_Q.css">
  <script src="./Metro Blocks_files/js_MJci03N4eHbE-cFGAMR5LNLhg8SzIJbEwgLedVvIIs8.js"></script>
<script src="./Metro Blocks_files/js_E77Ls0Xe1GIR2OLpq85xkclWmwyNal_hW6ksU08bimE.js"></script>
<script>(function($) {
      $(document).ready(function() {
          effectsIn = Drupal.settings.inEffects;
          effectsOut = Drupal.settings.outEffects;
          var options = Drupal.settings.md_slider_options_1;
          $("#md-slider-1").mdSlider(options);
      });
    })(jQuery);</script>
<script>jQuery.extend(Drupal.settings, {"basePath":"\/metro-blocks\/","pathPrefix":"","ajaxPageState":{"theme":"metroblocks","theme_token":"zx_syQ2yue2C7BlkjG9A5lHp92x84Jp7kkTxAXax6q8","js":{"sites\/all\/modules\/jquery_update\/replace\/jquery\/1.8\/jquery.min.js":1,"misc\/jquery.once.js":1,"misc\/drupal.js":1,"sites\/all\/libraries\/isotope\/jquery.isotope.min.js":1,"sites\/all\/modules\/lightbox2\/js\/lightbox.js":1,"sites\/all\/modules\/md_slider\/js\/jquery.touchwipe.js":1,"sites\/all\/modules\/md_slider\/js\/mdvideobox.js":1,"sites\/all\/modules\/md_slider\/js\/modernizr.js":1,"sites\/all\/modules\/md_slider\/js\/jquery.easing.js":1,"sites\/all\/modules\/md_slider\/js\/md-slider.js":1,"0":1,"sites\/all\/themes\/metroblocks\/js\/vendor\/custom.modernizr.js":1,"sites\/all\/themes\/metroblocks\/js\/foundation.min.js":1,"sites\/all\/themes\/metroblocks\/js\/jquery.easing.1.3.min.js":1,"sites\/all\/themes\/metroblocks\/js\/jquery.wipetouch.min.js":1,"sites\/all\/themes\/metroblocks\/js\/jquery.everslider.min.js":1,"sites\/all\/themes\/metroblocks\/js\/jquery.parallax-1.1.3.js":1,"sites\/all\/themes\/metroblocks\/js\/jquery.appear.js":1,"sites\/all\/themes\/metroblocks\/js\/scripts.js":1},"css":{"modules\/system\/system.base.css":1,"modules\/system\/system.messages.css":1,"modules\/system\/system.theme.css":1,"sites\/all\/modules\/calendar\/css\/calendar_multiday.css":1,"modules\/comment\/comment.css":1,"sites\/all\/modules\/date\/date_api\/date.css":1,"sites\/all\/modules\/date\/date_popup\/themes\/datepicker.1.7.css":1,"modules\/field\/theme\/field.css":1,"sites\/all\/modules\/mymoun_base\/css\/style.css":1,"modules\/node\/node.css":1,"modules\/search\/search.css":1,"modules\/user\/user.css":1,"sites\/all\/modules\/views\/css\/views.css":1,"sites\/all\/modules\/ckeditor\/ckeditor.css":1,"sites\/all\/modules\/ctools\/css\/ctools.css":1,"sites\/all\/modules\/isotope\/css\/isotope.css":1,"sites\/all\/modules\/lightbox2\/css\/lightbox.css":1,"sites\/all\/modules\/md_slider\/css\/animate.css":1,"sites\/all\/modules\/md_slider\/css\/md-slider.css":1,"0":1,"sites\/all\/modules\/md_slider\/css\/md-slider-style.css":1,"sites\/all\/modules\/flickr\/flickr.css":1,"sites\/all\/themes\/zurb-foundation\/css\/normalize.css":1,"sites\/all\/themes\/zurb-foundation\/css\/foundation.min.css":1,"sites\/all\/themes\/metroblocks\/css\/animate-custom.css":1,"sites\/all\/themes\/metroblocks\/css\/custom.css":1,"sites\/all\/themes\/metroblocks\/css\/everslider.css":1,"sites\/all\/themes\/metroblocks\/css\/vendor\/component.css":1,"1":1,"2":1}},"jcarousel":{"ajaxPath":"\/metro-blocks\/jcarousel\/ajax\/views"},"lightbox2":{"rtl":"0","file_path":"\/metro-blocks\/(\\w\\w\/)public:\/","default_image":"\/metro-blocks\/sites\/all\/modules\/lightbox2\/images\/brokenimage.jpg","border_size":10,"font_color":"000","box_color":"fff","top_position":"","overlay_opacity":"0.8","overlay_color":"000","disable_close_click":true,"resize_sequence":0,"resize_speed":400,"fade_in_speed":400,"slide_down_speed":600,"use_alt_layout":false,"disable_resize":false,"disable_zoom":false,"force_show_nav":false,"show_caption":true,"loop_items":false,"node_link_text":"View Image Details","node_link_target":false,"image_count":"Image !current of !total","video_count":"Video !current of !total","page_count":"Page !current of !total","lite_press_x_close":"press \u003Ca href=\u0022#\u0022 onclick=\u0022hideLightbox(); return FALSE;\u0022\u003E\u003Ckbd\u003Ex\u003C\/kbd\u003E\u003C\/a\u003E to close","download_link_text":"","enable_login":false,"enable_contact":false,"keys_close":"c x 27","keys_previous":"p 37","keys_next":"n 39","keys_zoom":"z","keys_play_pause":"32","display_image_size":"original","image_node_sizes":"()","trigger_lightbox_classes":"","trigger_lightbox_group_classes":"","trigger_slideshow_classes":"","trigger_lightframe_classes":"","trigger_lightframe_group_classes":"","custom_class_handler":0,"custom_trigger_classes":"","disable_for_gallery_lists":true,"disable_for_acidfree_gallery_lists":true,"enable_acidfree_videos":true,"slideshow_interval":5000,"slideshow_automatic_start":true,"slideshow_automatic_exit":true,"show_play_pause":true,"pause_on_next_click":false,"pause_on_previous_click":true,"loop_slides":false,"iframe_width":600,"iframe_height":400,"iframe_border":1,"enable_video":false},"inEffects":["bounceIn","bounceInDown","bounceInUp","bounceInLeft","bounceInRight","fadeIn","fadeInUp","fadeInDown","fadeInLeft","fadeInRight","fadeInUpBig","fadeInDownBig","fadeInLeftBig","fadeInRightBig","flipInX","flipInY","foolishIn","lightSpeedIn","puffIn","rollIn","rotateIn","rotateInDownLeft","rotateInDownRight","rotateInUpLeft","rotateInUpRight","twisterInDown","twisterInUp","swap","swashIn","tinRightIn","tinLeftIn","tinUpIn","tinDownIn","vanishIn"],"outEffects":["bombRightOut","bombLeftOut","bounceOut","bounceOutDown","bounceOutUp","bounceOutLeft","bounceOutRight","fadeOut","fadeOutUp","fadeOutDown","fadeOutLeft","fadeOutRight","fadeOutUpBig","fadeOutDownBig","fadeOutLeftBig","fadeOutRightBig","flipOutX","flipOutY","foolishOut","hinge","holeOut","lightSpeedOut","puffOut","rollOut","rotateOut","rotateOutDownLeft","rotateOutDownRight","rotateOutUpLeft","rotateOutUpRight","rotateDown","rotateUp","rotateLeft","rotateRight","swashOut","tinRightOut","tinLeftOut","tinUpOut","tinDownOut","vanishOut"],"md_slider_options_1":{"fullwidth":true,"transitionsSpeed":"800","width":"1140","height":"480","enableDrag":true,"responsive":true,"loop":true,"showLoading":true,"loadingPosition":"bottom","showArrow":true,"showBullet":false,"posBullet":"2","showThumb":false,"posThumb":"1","slideShowDelay":"5000","slideShow":true,"styleBorder":"0","styleShadow":"0","videoBox":false}});</script>
  <!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

		   
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
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<!--滚动画面-->
		
<section class="l-slider">
              <section class="block block-md-slider block-md-slider-1">   
      <div class="md-slide-wrap md-slide-responsive md-slide-fullwidth" style="height: 380px;"><div class="md-item-wrap"><div id="md-slider-1" class="md-slide-items" data-thumb-width="100" data-thumb-height="75">
          <div class="md-slide-item slide-1" data-timeout="6000" data-transition="strip-up-right,strip-right-up" data-thumb="http://themes.webdevia.com/metro-blocks/sites/default/files/styles/md_slider_1_thumb/public/bg-6.jpg?itok=5GWFlkG4" style="top: 0px; left: 0px; height: 480px; display: block;">
    <div class="md-mainimg"><img src="./Metro Blocks_files/maxresdefault.jpg" alt="" style="width: 1903px; height: auto; top: -300.904px; left: 0px;"></div>
    <div class="md-objects" style="width: 1140px; font-size: 99%;">
          <div class="md-object md-layer-1-0-0 lightSpeedIn" data-x="0" data-y="143" data-width="370" data-height="39" data-start="400" data-stop="4800" data-easein="lightSpeedIn" data-easeout="lightSpeedOut" data-padding-top="10" data-padding-bottom="10" data-padding-left="10" data-padding-right="10" style="font-family: FontName; width: 32.4561%; height: 8.125%; top: 29.7917%; left: 0%; display: block; padding: 10px;">
                        全视角360度的体验            </div>
          <div class="md-object md-layer-1-0-1 fadeInRight" data-x="135" data-y="212" data-width="243" data-height="25" data-start="400" data-stop="4700" data-easein="fadeInRight" data-easeout="fadeOutRight" data-padding-top="7" data-padding-bottom="7" data-padding-left="7" data-padding-right="7" style="font-family: FontName; width: 21.3158%; height: 5.20833%; top: 44.1667%; left: 11.8421%; display: block; padding: 7px;">
                        亲临现场一样的感觉！           </div>
          <div class="md-object none md-layer-1-0-2 fadeInDownBig" data-x="106" data-y="356" data-width="155" data-height="23" data-start="500" data-stop="4700" data-easein="fadeInDownBig" data-easeout="fadeOutDownBig" data-padding-top="5" data-padding-bottom="5" data-padding-left="5" data-padding-right="5" style="width: 13.5965%; height: 4.79167%; top: 74.1667%; left: 9.29825%; display: block;">
                        <a href="360videoDemo.jsp" style="font-family: FontName; padding: 7px;">现在就去观看</a>
            </div>
          <div class="md-object md-layer-1-0-3 fadeInLeft" data-x="1" data-y="90" data-width="211" data-height="27" data-start="300" data-stop="4800" data-easein="fadeInLeft" data-easeout="fadeOutLeft" data-padding-top="7" data-padding-bottom="7" data-padding-left="7" data-padding-right="7" style="font-family: FontName; width: 18.5088%; height: 5.625%; top: 18.75%; left: 0.0877193%; display: block; padding: 7px;">
                        挑战传统MV             </div>
          <div class="md-object md-layer-1-0-4 fadeInRightBig" data-x="696" data-y="3" data-width="410" data-height="477" data-start="500" data-stop="5000" data-easein="fadeInRightBig" style="width: 35.9649%; height: 99.375%; top: 0.625%; left: 61.0526%; display: block;">
                        <img src="./Metro Blocks_files/man-2.png" alt="man-2.png">
            </div>
        </div>
</div>
    <div class="md-slide-item slide-2" data-timeout="6000" data-thumb="http://themes.webdevia.com/metro-blocks/sites/default/files/styles/md_slider_1_thumb/public/bg-3.jpg?itok=GMjW4sLO" style="display: none; height: 480px;">
    <div class="md-mainimg"><img src="./Metro Blocks_files/bg-3.jpg" alt="" style="width: 1903px; height: auto; top: -121.45px; left: 0px;"></div>
    <div class="md-objects" style="width: 1140px; font-size: 99%;">
          <div class="md-object white-shadow2 md-layer-1-1-2" data-x="491" data-y="151" data-width="203" data-height="207" data-start="300" data-stop="5000" data-easein="bounceIn" style="width: 17.807%; height: 43.125%; top: 31.4583%; left: 43.0702%; display: none;">
                        <img src="./Metro Blocks_files/s-5.jpg" alt="s-5.jpg">
            </div>
          <div class="md-object white-shadow2 md-layer-1-1-3" data-x="808" data-y="145" data-width="212" data-height="210" data-start="200" data-stop="5000" data-easein="bounceIn" style="width: 18.5965%; height: 43.75%; top: 30.2083%; left: 70.8772%; display: none;">
                        <img src="./Metro Blocks_files/s-8.jpg" alt="s-8.jpg">
            </div>
          <div class="md-object white-shadow2 md-layer-1-1-4" data-x="691" data-y="37" data-width="118" data-height="117" data-start="100" data-stop="5000" data-easein="bounceIn" style="width: 10.3509%; height: 24.375%; top: 7.70833%; left: 60.614%; display: none;">
                        <img src="./Metro Blocks_files/s-3.jpg" alt="s-3.jpg">
            </div>
          <div class="md-object md-layer-1-1-5" data-x="0" data-y="140" data-width="117" data-height="37" data-start="1500" data-stop="5000" data-easein="flipInX" style="font-family: FontName; width: 10.2632%; height: 7.70833%; top: 29.1667%; left: 0%; display: none;">
                        MEANTIME            </div>
          <div class="md-object md-layer-1-1-6" data-x="0" data-y="174" data-width="439" data-height="73" data-start="1700" data-stop="5000" data-easein="flipInX" style="font-family: FontName; width: 38.5088%; height: 15.2083%; top: 36.25%; left: 0%; display: none;">
                        Beatsteaks            </div>
          <div class="md-object md-layer-1-1-7" data-x="259" data-y="245" data-width="186" data-height="38" data-start="1900" data-stop="5000" data-easein="flipInX" style="font-family: FontName; width: 16.3158%; height: 7.91667%; top: 51.0417%; left: 22.7193%; display: none;">
                                                                                       来自德国柏林            </div>
        </div>
</div>
    </div><div class="md-arrow" style="opacity: 0;"><div class="md-arrow-left"><span></span></div><div class="md-arrow-right"><span></span></div></div></div><div class="loading-bar-hoz loading-bar-bottom"><div class="br-timer-glow" style="left: 432.84px;"></div><div class="br-timer-bar" style="width: 532.84px;"></div></div></div> 
</section>
</section>

<!--滚动画面-->

<!--热门MV-->	
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row">
	<div class="col-xs-12 text-left">
	<img src="images/fireMV.png"/>
	<small style="font-family: FontName; font-size:2em; color:#777;" >热门</small><small style="font-size:1.5em; color:#777;" > M V</small>	
	</div>
</div>
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row">
	<div class="col-md-6">
		<figure class="effect-bubba1" style="max-width:100%;">
		<a href="360videoDemo.jsp"><img class="img-thumbnail" src="videoImages/BeatsteaksMeantime.png" title="点击观看" /></a>
		</figure>
		<span style="position: absolute;color: #fff;bottom: 35px;right: 415px;"><strong>Meantime 现场版</strong></span>
		<span style="position: absolute;color: #99FF00;bottom: 13px;right: 453px;"><strong>Beatsteaks</strong></span>
		<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>02:37</span></div>	
	</div>
	<div class="col-md-3">
	<div>
	<figure class="effect-bubba2">
	<a href="360videoDemo1.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/NoaNeal.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 157px;"><strong>Graffiti 完整版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 194px;"><strong>NoaNeal</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>03:05</span></div>
	</div>
	<div>
	<figure class="effect-bubba2" style="position: absolute;top:156px; max-width:94.3%;">
	<a href="videoDemo2.jsp"><img class="img-thumbnail" style="max-width:94.3%;" src="videoImages/trouble.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: -133px;right: 99px;"><strong>Trouble is a friend live</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: -150px;right:209px;"><strong>Lenka</strong></span>
	<div style="position: absolute;bottom: -147px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>03:39</span></div>
	</div>
	</div>
	<div class="col-md-3">
	<div>
	<figure class="effect-bubba2">
	<a href="videoDemo1.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/ribuluo.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 160px;"><strong>日不落 完整版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 207px;"><strong>蔡依林</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>03:41</span></div>
	</div>
	<div>
	<figure class="effect-bubba2" style="position: absolute;top:156px; max-width:94.3%;">
	<a href="videoDemo3.jsp"><img class="img-thumbnail" style="max-width:94.3%;" src="videoImages/sunshine girl.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: -133px;right: 113px;"><strong>Sunshine Girl 官方版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: -150px;right:183px;"><strong>Moumoon</strong></span>
	<div style="position: absolute;bottom: -147px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>03:49</span></div>
	</div>
	</div>
</div>
<!--热门MV-->	
	
<!--360°MV-->		
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row">
	<div class="col-xs-12 text-left">
	<img src="images/360_icon.png"/>
	<small style="font-size:1.5em; color:#777;">360°M V</small>	
	</div>
</div>
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row">
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="360videoDemo1.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/NoaNeal.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 157px;"><strong>Graffiti 完整版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 194px;"><strong>NoaNeal</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>03:05</span></div>
	</div>
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="360videoDemo2.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/Noize MC - Yes Future.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 130px;"><strong>Yes Future 完整版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 188px;"><strong>Noize MC</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>03:41</span></div>
	</div>
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="360videoDemo.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/BeatsteaksMeantime.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 137px;"><strong>Meantime 现场版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 175px;"><strong>Beatsteaks</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>02:37</span></div>
	</div>
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="360videoDemo3.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/D'Cinnamons - Sweet Memories.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 95px;"><strong>Sweet Memories 现场版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 161px;"><strong>D'Cinnamons</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>04:13</span></div>
	</div>
</div>
<!--360°MV-->

<!--首发 MV-->
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row">
	<div class="col-xs-12 text-left">
	<img src="images/newMV.jpg"/>
	<small style="font-family: FontName; font-size:2em; color:#777;" >首发</small><small style="font-size:1.5em; color:#777;" > M V</small>	
	</div>
</div>
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row">
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="videoDemo4.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/girlfriend.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 141px;"><strong>girlfriend 录音版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 161px;"><strong>Avril Lavigne</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>04:01</span></div>
	</div>
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="videoDemo5.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/nideai.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 159px;"><strong>你的爱 官方版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 206px;"><strong>王力宏</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>04:26</span></div>
	</div>
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="videoDemo6.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/What Do You Mean.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 101px;"><strong>What Do You... 录音版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 159px;"><strong>Justin Bieber</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>03:25</span></div>
	</div>
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="videoDemo7.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/aibudanxing.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 146px;"><strong>爱不单行 官方版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 208px;"><strong>罗志祥</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>04:40</span></div>
	</div>
</div>
<!--首发 MV-->

<!--流行 MV-->
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row">
	<div class="col-xs-12 text-left">
	<img src="images/popmv.png"/>
	<small style="font-family: FontName; font-size:2em; color:#777;" >流行</small><small style="font-size:1.5em; color:#777;" > M V</small>	
	</div>
</div>
<div class="row"><div class="col-md-1">&nbsp;</div></div>
<div class="row">
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="videoDemo8.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/nuannuan.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 192px;"><strong>暖暖 live</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 206px;"><strong>梁静茹</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>03:50</span></div>
	</div>
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="videoDemo9.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/wikey in the.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 109px;"><strong>Whiskey The Jar live</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 190px;"><strong>Metallica</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>05:10</span></div>
	</div>
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="videoDemo10.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/take on me.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 142px;"><strong>Take On Me live</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 218px;"><strong>A Ha</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>04:51</span></div>
	</div>
	<div class="col-md-3">
	<figure class="effect-bubba2">
	<a href="videoDemo11.jsp"><img class="img-thumbnail" style="max-width:100%;" src="videoImages/ainidesuming.png" title="点击观看" /></a>
	</figure>
	<span style="position: absolute;color: #fff;bottom: 22px;right: 130px;"><strong>爱你的宿命 官方版</strong></span>
	<span style="position: absolute;color: #99FF00;bottom: 5px;right: 207px;"><strong>张信哲</strong></span>
	<div style="position: absolute;bottom: 9px;right:26px;color: #fff;background: rgba(85, 85, 85, 0.61);padding: 5px 10px;"><span>04:15</span></div>
	</div>
</div>
<!--流行 MV-->			
			
			
		</div>
	<i class="line"> </i>
	<i class="line-in"> </i>
	<i class="line-in line-in1"> </i>
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
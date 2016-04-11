<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<title>新增歌手</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="back_css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="back_css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="back_css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="back_css/layout.css" />
    <link rel="stylesheet" type="text/css" href="back_css/elements.css" />
    <link rel="stylesheet" type="text/css" href="back_css/icons.css" />
    
    <!-- new jquery -->
    <script type="text/javascript" src="js/jquery.min.js"></script>

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="back_css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="back_css/compiled/personal-info.css" type="text/css" media="screen" />

<style type="text/css">
html,body,p,th,td,input,select,textarea,button,div {padding:0; margin:0;font-family: "microsoft yahei",Tahoma, sans-serif ; font-size:12px; line-height:180%;}
html,body{background:#F6F6F6;}
dl,ol,dt,dd,ul,li,form,h1,h2,h3,h4,h5,h6 {margin:0; padding:0;list-style:none; }
input,select,textarea,button{vertical-align:middle;resize:none;}
.clear{clear:both;overflow:hidden; height:1px;}
.clearfix{overflow:auto;height:1%}
img{border:0; vertical-align:middle}
body,a,a:visited{font-size:12px;color:#000;text-decoration:none;}
a:hover{ text-decoration:underline;color:#333}
a,a:hover{text-decoration:none}img{border:0}ul{list-style:none;margin:0;}label{color:#6CBD45;font-size:14px;font-weight:bold;padding-bottom:0.5em;margin:0;}



.city_input{border:1px solid #d6d6d6;width:180px;height:30px;background:url(images/ts-indexcity.png) no-repeat right;line-height:30px;margin-top:5px;text-indent:5px;}、
</style> 
<style type="text/css">
*{margin:0;padding:0;font-family: "宋体", Arial, "新宋体";font-size:12px;color:#555555;list-style:none;} 
.clear{clear:both;height:0;visibility:hidden;}
a{text-decoration:none;cursor:pointer;}
a:hover{color:red;text-decoration:underline;}
a img{border:0;vertical-align:middle;}
</style>
<link href="css/cityLayout.css" type="text/css" rel="stylesheet">
<link href="back_css/time.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/jcDate.css" media="all" />
<link href="back_css/userIn1.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
<div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <button type="button" class="btn btn-navbar visible-phone" id="menu-toggler">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <a class="brand" href="back_index.jsp"><img src="back_img/logo.png" /></a>

            <ul class="nav pull-right">                
                <li class="hidden-phone">
                    <input class="search" type="text" />
                </li>
                <li class="settings hidden-phone">
                    <a role="button">
                    <%
			          	String adId = (String)session.getAttribute("adId");
			     	%>
                        <i style="font-size:15px;">您好，<%=adId %></i>
                    </a>
                </li>
                <li class="settings hidden-phone">
                    <a href="back_exit" role="button">
                        <i class="icon-share-alt"></i>
                    </a>
                </li>
            </ul>            
        </div>
    </div>
<%-- <s:include value="back_head.jsp"></s:include> --%>
	    <!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li>                
                <a href="back_index.jsp">
                    <i class="icon-home"></i>
                    <span>主页</span>
                </a>
            </li>          
			
           <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-picture"></i>
                    <span>歌手管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="active submenu">
                    <li><a href="is-sing.jsp" class="active">新增歌手</a></li>
                    <li><a href="page.action?type=singer">查看歌手</a></li>
                    <!--<li><a href="user-profile.jsp">User profile</a></li>-->
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>专辑管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="is-cd.jsp">新增专辑</a></li>
                    <li><a href="pageCD?type=cd">查看专辑</a></li>
                    <!--<li><a href="user-profile.jsp">User profile</a></li>-->
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-group"></i>
                    <span>音乐管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="is-music.jsp">新增音乐</a></li>
                    <li><a href="pageMusic?type=music">查看音乐</a></li>
                    <!--<li><a href="update-music.jsp">查看音乐详情</a></li>-->
                </ul>
            </li>            
            
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-calendar-empty"></i>
                    <span>客户信息</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="pageUser?type=user">查看客户</a></li>
                   <!-- <li><a href="user-profile.jsp">User profile</a></li>-->
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-th-large"></i>
                    <span>订单管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="order-list.jsp">查看订单</a></li>
                   <!-- <li><a href="user-profile.jsp">User profile</a></li>-->
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-code-fork"></i>
                    <span>积分管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="Integral.jsp">积分充值</a></li>
                    <li><a href="getAllDetail">充值记录</a></li>
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-cog"></i>
                    <span>反馈管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="getAllFeed">查看反馈</a></li>
                    <!--<li><a href="user-profile.jsp">User profile</a></li>-->
                </ul>
            </li>
          
        </ul>
    </div>
    <!-- end sidebar -->

    <div class="content wide-content" style="margin-left:177px; height:700px;">
        <div class="container-fluid">
            <div class="settings-wrapper" id="pad-wrapper">               

                <div class="info" style="position:relative;top:-130px;right:80px" >
 
        <div>
        <h5 style="position:absolute;top:90px;">新增歌手</h5>
        	<form action="addSinger" method="post"  enctype="multipart/form-data">           
                <label>歌手姓名：</label><input class="text" name="singer.artist" type="text"  style="width: 205px;"/><br/>
                
                <label>性别：</label><input class="sex1" name="singer.singerSex" type="radio" value="男" /><p class="man">男</p>
                			<input class="sex2" name="singer.singerSex" type="radio" value="女" /><p class="woman">女</p><br/>
                            <input class="sex3" name="singer.singerSex" type="radio" value="组合" /><p class="ser">组合</p><br/>
           
                <label class="bir">出生日期：</label>
                	<div>
                      <input name="singer.singerbir" class="jcDate" style="width:200px;height:20px;line-height:20px;padding:4px;" />
                    </div>
                    <br/>
    
                            
<style type="text/css">
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

                <label class="area">所在地：</label>
                	<div style="position:absolute; left: 80px;top:185px;">
						<input name="singer.area" id="city" type="text" value="请选择/输入城市名称">
					</div><br/>
									
<script type="text/javascript">
$("#city").click(function (e) {
	SelCity(this,e);
});
</script>


                <!-- <label class="song">曲风</label><input class="text" name="singer.style" type="text" /><br/> -->
                
          		<div class="field-box">
                      <label >曲风:</label>
                      <div class="ui-select" style="position:relative; left: 85px;top: -30px; height: 30px; width: 210px;">
	                     <select name="singer.style" id="user_time">
	                           <option value="" >请选择曲风</option>
	                           <option value="流行" >流行</option>
	                           <option value="摇滚" >摇滚</option>
	                           <option value="电音">电音</option>
	                           <option value="说唱">说唱</option>
	                           <option value="经典">经典</option>
	                           <option value="爵士">爵士</option>
	                           <option value="民谣">民谣</option>
	                           <option value="乡村">乡村</option>
	                    </select> 
                   	 </div>
                  </div>
                  
                                          <style type="text/css">
#preview{width:140px;height:140px;border:1px solid #CCCCCC;overflow:hidden;}
#imghead {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}
</style>
<script type="text/javascript">
        //图片上传预览    IE是用了滤镜。
        function previewImage(file)
        {
          var MAXWIDTH  = 140; 
          var MAXHEIGHT = 140;
          var div = document.getElementById('preview');
          if (file.files && file.files[0])
          {
              div.innerHTML ='<img id=imghead>';
              var img = document.getElementById('imghead');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file.files[0]);
          }
          else //兼容IE
          {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead>';
            var img = document.getElementById('imghead');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
          }
        }
        function clacImgZoomParam( maxWidth, maxHeight, width, height ){
            var param = {top:0, left:0, width:width, height:height};
            if( width>maxWidth || height>maxHeight )
            {
                rateWidth = width / maxWidth;
                rateHeight = height / maxHeight;
                 
                if( rateWidth > rateHeight )
                {
                    param.width =  maxWidth;
                    param.height = Math.round(height / rateWidth);
                }else
                {
                    param.width = Math.round(width / rateHeight);
                    param.height = maxHeight;
                }
            }
             
            param.left = Math.round((maxWidth - param.width) / 2);
            param.top = Math.round((maxHeight - param.height) / 2);
            return param;
        }
</script>
                  
                <label>歌手图片:</label>
                 <div id="preview" style="position:relative;right:-85px;top:-40px;">
    				<img class="img-circle" id="imghead" style="width:60px; height:60px;">
			    </div>
                <input name="upload" class="file" type="file" onchange="previewImage(this)" /><br/> 
                
                
                
                <label>歌手简介:</label><textarea class="text" name="singer.singIntroduction" style="height: 80px;"></textarea><br/> 
            	<input name=type type="hidden" value="singer"/>
            	

 
            	
            	
            	 
               <div class="span11 field-box actions" style="position:relative;right:-85px;top:40px;">
                    <input type="submit" class="btn-glow primary" value="保存" />
                    <span>OR</span>
                    <input type="reset" class="btn-glow success" value="重置" />
               </div>
            </form>
        </div>

	</div>
	
	
	
            </div>
        </div>
    </div>
	


<script src="back_js/jquery-latest.js"></script>
<script src="back_js/bootstrap.min.js"></script>
<script src="back_js/theme.js"></script>
    

<s:if test="msg != null"> 
	<script  type="text/javascript">
		var msg = "${msg}";
		alert(msg);
	</script>
</s:if>
</body>
</html>
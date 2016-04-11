<%@page import="vo.CD"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="vo.Singer"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<<html>
<head>
	<title>Detail Admin - My Info</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="back_css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="back_css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="back_css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="back_css/layout.css" />
    <link rel="stylesheet" type="text/css" href="back_css/elements.css" />
    <link rel="stylesheet" type="text/css" href="back_css/icons.css" />

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="back_css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="back_css/compiled/personal-info.css" type="text/css" media="screen" />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body style="overflow-y:hidden;">
	<s:include value="back_head.jsp"></s:include>
	<s:action name="is-cd.jsp" executeResult="false"></s:action>
	<s:action name="getCDById" executeResult="false"></s:action>
	<s:action name="singerName" executeResult="false"/>
	<!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="back_index.jsp">
                    <i class="icon-home"></i>
                    <span>主页</span>
                </a>
            </li>            
			
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-picture"></i>
                    <span>歌手管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="is-sing.jsp">新增歌手</a></li>
                    <li><a href="page.action?type=singer">查看歌手</a></li>
                </ul>
            </li>
            <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>专辑管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="active submenu">
                    <li><a href="is-cd.jsp">新增专辑</a></li>
                    <li><a href="pageCD?type=cd">查看专辑</a></li>
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
                </ul>
            </li>
          
        </ul>
    </div>
    <!-- end sidebar -->
   	<!-- main container .wide-content is used for this layout without sidebar :)  -->
    <div class="content wide-content" style="margin-left:177px; height:700px;">
        <div class="container-fluid">
            <div class="settings-wrapper" id="pad-wrapper">
                <div class="span3 avatar-box">
                    <div class="personal-image">
                        <img src="cd/<s:property value="#attr.cds.cdImg"/>" class="avatar img-circle" style="width: 160px;height: 160px;"/>
                    </div>
                </div>
                 <div class="info" style="margin-left: 160px;">  
                   <h5 class="personal-title" style="font-size:26px; font-family:'华文行楷'; position: relative;left:80px; ">修改专辑</h5>
                   <%-- <%
                       	List list = (List)request.getAttribute("cds");
                       	for(Object obj:list){
						Object[] objs = (Object[])obj;
						Singer singer = (Singer)objs[0];
						CD cd = (CD)objs[1];
                   %> --%>
                   <div>
                    <form action="updateCD" method="post" enctype="multipart/form-data"  style="margin-left:177px; margin-top: 30px;">
                    <input class="text" name="cd.cdId" type="hidden" value="<s:property value="#attr.cds.cdId"/>"/>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">专辑名:</label>
                            <input class="span5 inline-input" type="text" name="cd.cdName" value="<s:property value="#attr.cds.cdName"/>" />
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">发布时间:</label>
                            <input class="span5 inline-input" type="text" name="cd.releaseTime" value="<s:date name="#attr.cds.releaseTime" format="yyyy-MM-dd"/>" />
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
                        
                        
                         <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">专辑图片:</label>
                             <div id="preview" style="position:relative;right:-80px;top:-10px;">
    							<img class="img-circle" id="imghead" style="width:60px; height:60px;">
			    			</div>
                             <input style="position:relative;right:-80px;top:-10px;" name="upload" type="file" onchange="previewImage(this)"/>
                        </div>
                        
                        
                        
                        <div class="field-box" style="position:relative;top:-20px;">
                            <label>收藏量：</label>
                            <input class="span5 inline-input" type="text" name="cd.releaseTime" value="<s:property value="#attr.cds.collectNum"/>" readonly/>
                        </div>
                        <div class="field-box" style="position:relative;top:-20px;">
                            <label style="font-size:18px; font-family:'华文行楷';">歌手名:</label>
                            <div class="ui-select"><div align="center"> 
                            	</div>
                            	<select name="cd.singer.singerId" id="user_time_zone">
                                   	<s:iterator value="#attr.singers" var="singer" status="st">
                                    <option value="<s:property value="singerId"/>" <s:if test="#attr.cds.singer.singerId==singerId">selected="selected"</s:if> >
							  			<s:property value="artist"/>
                                    </option>
			                        </s:iterator>
                                </select>
                            </div>
                        </div>
                        <label style="position:relative;top:-17px;">专辑简介:</label>
                        <textarea  class="from-control" class="text" name="cd.cdIntroduction" style="position:relative;top:-17px;width:380px;height:180px; pading-left:-10px">&nbsp;&nbsp;<s:property value="#attr.cds.cdIntroduction"/>
                        </textarea><br/>
                        <input name=type type="hidden" value="cd"/>
                        <div class="span6 field-box actions" style="position:relative;top:-22px;">
                            <input type="submit" class="btn-glow primary" value="保存" />
                            <span>OR</span>
                            <input type="reset" class="btn-glow success" value="重置" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- end main container -->


	<!-- scripts -->
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
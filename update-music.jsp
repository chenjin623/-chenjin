<%@page import="vo.Singer"%>
<%@page import="vo.CD"%>
<%@page import="vo.Music"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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

    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body style="overflow-y:hidden;">
	<s:include value="back_head.jsp"></s:include>
	<!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li>                
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
            <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-group"></i>
                    <span>音乐管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="active submenu">
                    <li><a href="is-music.jsp">新增音乐</a></li>
                    <li><a href="pageMusic?type=music" class="active">查看音乐</a></li>
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
                    <li><a href="Integral-list.jsp">充值记录</a></li>
                    <!--<li><a href="user-profile.jsp">User profile</a></li>-->
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-cog"></i>
                    <span>反馈管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="Feedback-list.jsp">查看反馈</a></li>
                    <!--<li><a href="user-profile.jsp">User profile</a></li>-->
                </ul>
            </li>
          
        </ul>
    </div>
    <!-- end sidebar -->
	<!-- main container .wide-content is used for this layout without sidebar :)  -->
	<s:action name="getMusicById" executeResult="false"></s:action>
	<s:action name="getAllSinger" executeResult="false"></s:action>
    <div class="content wide-content" style="margin-left:177px; height:700px;">
        <div class="container-fluid">
            <div class="settings-wrapper" id="pad-wrapper">               

                <!-- edit form column -->
                <div class="span7 personal-info">
                    
                    <h5 class="personal-title" style="font-size:26px; font-family:'华文行楷';">修改音乐</h5>
					<%-- <%
		              	List list = (List)request.getAttribute("list");
		              	for(int i=0;i<list.size();i++){
		              		Object[] objs = (Object[])list.get(i);
							Music music = (Music)objs[0];
							CD cd = (CD)objs[1];
							Singer singer = (Singer)objs[2];
		               %> --%>
                    <form action="updateMusic" method="post" enctype="multipart/form-data">
                    	<input class="text" name="music.musicId" type="hidden" value="<s:property value="#attr.list.musicId"/>"/>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">歌名：</label>
                            <input class="span5 inline-input" type="text" name="music.musicName" value='<s:property value="#attr.list.musicName"/>' />
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">歌词：</label>
                            <input type="file" name="lyric" value="<s:property value="#attr.list.lyric"/>"/>
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">MV：</label>
                            <input type="file" name="MV" value="<s:property value="#attr.list.MV"/>"/>
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">歌曲：</label>
                            <input type="file" name="song" value="<s:property value="#attr.list.song"/>"/>
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">发布时间：</label>
                            <%-- <s:property value="#attr.list.cd.cdName"/>111
                            <s:property value="#attr.list.cd.singer.artist"/>111 --%>
                            <input class="span5 inline-input" type="text" name="music.releaseTime" value="<s:date name="#attr.list.releaseTime" format="yyyy-MM-dd"/>" />
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">歌手名:</label>
                            <div class="ui-select">
                                 	<select id="user_time_zone"  onchange="quallCDName()">
                                   	<s:iterator value="#request.singers" var="singer" status="st">
	                                   <option value="<s:property value="singerId"/>" <s:if test="#attr.list.cd.singer.singerId==singerId">selected="selected"</s:if>>
								  			<s:property value="artist"/>
	                                   </option>
			                        </s:iterator>
                                </select>
                            </div>
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">专辑名:</label>
                            <div class="ui-select">
 	                            <select name="music.cd.cdId" id="user_time">
 	                            	<option value="<s:property value="#attr.list.cd.cdId"/>">
								  			<s:property value="#attr.list.cd.cdName"/>
	                                </option>
	                            </select> 
                            </div>
                        </div> 
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">语种:</label>
                            <div class="ui-select">
 	                            <select name="music.musiclanguage" id="user_time">
                                    <option value="国语" <s:if test="#attr.list.musiclanguage=='国语'.toString()">selected="selected"</s:if>>国语</option>
                                    <option value="粤语" <s:if test="#attr.list.musiclanguage=='粤语'.toString()">selected="selected"</s:if>>粤语</option>
                                    <option value="欧美" <s:if test="#attr.list.musiclanguage=='欧美'.toString()">selected="selected"</s:if>>欧美</option>
                                    <option value="韩语" <s:if test="#attr.list.musiclanguage=='韩语'.toString()">selected="selected"</s:if>>韩语</option>
                                    <option value="日语" <s:if test="#attr.list.musiclanguage=='日语'.toString()">selected="selected"</s:if>>日语</option>
                                    <option value="俄语" <s:if test="#attr.list.musiclanguage=='俄语'.toString()">selected="selected"</s:if>>俄语</option>
                                    <option value="法语" <s:if test="#attr.list.musiclanguage=='法语'.toString()">selected="selected"</s:if>>法语</option>
                                    <option value="泰语" <s:if test="#attr.list.musiclanguage=='泰语'.toString()">selected="selected"</s:if>>泰语</option>
	                            </select> 
                            </div>
                        </div>
                        <input name=type type="hidden" value="music"/>
                        <div class="span6 field-box actions">
                            <input type="submit" class="btn-glow primary" value="保存" />
                            <span>OR</span>
                            <input type="reset" value="重置" class="reset" />
                        </div>
                    </form>
                    <%-- <%} %> --%>
                </div>
            </div>
        </div>
    </div>
    <!-- end main container -->


	<!-- scripts -->
    <script src="back_js/jquery-latest.js"></script>
    <script src="back_js/bootstrap.min.js"></script>
    <script src="back_js/theme.js"></script>
	<script type="text/javascript">
  		function quallCDName()
  		{
  			//创建ActiveXObject对象
  			var xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  			//获取用户输入的用户名
  			var singerId = document.getElementById("user_time_zone").value;
  			//var userName = document.InsMusicForm.singer.singerName.value;
  			//alert(singerId);
  			//生成url
  			var url = "getCDBySingerId?cd.singer.singerId="+singerId;
  			//alert(url);
  			//和指定url建立异步连接
			xmlHttp.open("GET", url, true);
			//设置回调函数
			xmlHttp.onreadystatechange=function() {
			alert(xmlHttp.readyState);
				if (xmlHttp.readyState == 4) {
				alert(xmlHttp.responseText);
					var doc = xmlHttp.responseXML;//获取响应XML的“根节点”
				    var innerHtml = "";
	  					var cds = doc.getElementsByTagName("cd"); 
	  					for(var i = 0 ;i<cds.length;i++){
	  						var id = cds[i].getElementsByTagName("cdId")[0].text;
	  						var name = cds[i].getElementsByTagName("cdName")[0].text;
	  						if(id==<s:property value="#attr.list.cd.cdId"/>){
	  							var str = "<option value='"+id+"' selected='selected'>"+name+"</option>";
	  						}
	  						var str = "<option value='"+id+"' >"+name+"</option>";
	  						innerHtml+=str;
  						}
  						document.getElementById("user_time").innerHTML=innerHtml;
				}
				}
			//发送异步请求
			xmlHttp.send();
  		}
  	</script>
</body>
</html>
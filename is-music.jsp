<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>新增音乐</title>
    
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
	<s:action name="singerName" executeResult="false"/>
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
                    <li><a href="pageCD?type=CD">查看专辑</a></li>
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
                    <li><a href="is-music.jsp" class="active">新增音乐</a></li>
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
                    <li><a href="getAllFeed">查看反馈</a></li>
                    <!--<li><a href="user-profile.jsp">User profile</a></li>-->
                </ul>
            </li>
          
        </ul>
    </div>
    <!-- end sidebar -->
	<!-- main container .wide-content is used for this layout without sidebar :)  -->
    <div class="content wide-content" style="margin-left:177px;>
        <div class="container-fluid">
            <div class="settings-wrapper" id="pad-wrapper">               

                <!-- edit form column -->
                <div class="span7 personal-info"">
                    
                    <h5 class="personal-title" style="font-size:26px; font-family:'华文行楷';">新增音乐</h5>

                    <form action="addMusic" method="post" enctype="multipart/form-data">
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">歌名：</label>
                            <input class="span5 inline-input" name="music.musicName" type="text" value="" />
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">歌词：</label>
                            <input type="file" name="lyric"/>
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">MV：</label>
                            <input type="file" name="MV"/>
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">歌曲：</label>
                            <input type="file" name="song"/>
                        </div>
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">发布时间：</label>
                            <input class="span5 inline-input" type="text" name="music.releaseTime" value="" />
                        </div>
                        <div class="field-box">
                            <!-- <label style="font-size:18px; font-family:'华文行楷';">下载量：</label> -->
                            <input class="span5 inline-input" type="hidden" name="music.downNum" value="0" readonly />
                        </div>
                        <div class="field-box">
                            <!-- <label style="font-size:18px; font-family:'华文行楷';">点击量：</label> -->
                            <input class="span5 inline-input" type="hidden" name="music.clickNum" value="0" readonly/>
                        </div>
                        <div class="field-box" name="singer">
                            <label style="font-size:18px; font-family:'华文行楷';">歌手名:</label>
                            <div class="ui-select">
                                <select  name="cd.singer.singerId" id="user_time_zone" onchange="quallCDName()" >
                                   	<s:iterator value="#attr.singers" var="singer" status="st">
                                    <option id="select" value="<s:property value="singerId"/>">
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
 	                            	
	                            </select> 
                            </div>
                        </div> 
                        <div class="field-box">
                            <label style="font-size:18px; font-family:'华文行楷';">语种:</label>
                            <div class="ui-select">
 	                            <select name="music.musiclanguage" id="user_time"> 	
                                    <option value="国语">国语</option>
                                    <option value="粤语">粤语</option>
                                    <option value="欧美">欧美</option>
                                    <option value="韩语">韩语</option>
                                    <option value="日语">日语</option>
                                    <option value="俄语">俄语</option>
                                    <option value="法语">法语</option>
                                    <option value="泰语">泰语</option>
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
                </div>
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
	  						var str = "<option value='"+id+"'>"+name+"</option>";
	  						innerHtml+=str;
  						}
  						document.getElementById("user_time").innerHTML=innerHtml;
				}
				}
			//发送异步请求
			xmlHttp.send();
  		}
  	</script>
    <!-- end main container -->
	<script src="back_js/ajax.js"></script>

	<!-- scripts -->
    <script src="back_js/jquery-latest.js"></script>
    <script src="back_js/bootstrap.min.js"></script>
    <script src="back_js/theme.js"></script>

</body>
</html>
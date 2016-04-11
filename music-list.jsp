<%@page import="vo.Singer"%>
<%@page import="vo.CD"%>
<%@page import="vo.Music"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>查看音乐</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="back_css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="back_css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="back_css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="back_css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="back_css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="back_css/layout.css" />
    <link rel="stylesheet" type="text/css" href="back_css/elements.css" />
    <link rel="stylesheet" type="text/css" href="back_css/icons.css" />

    <!-- this page specific styles -->
    <link rel="stylesheet" href="back_css/compiled/index.css" type="text/css" media="screen" />    

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
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
    

	<!-- main container -->
    <div class="content">
        
        <!-- settings changer -->
        <div class="skins-nav">
            <a href="#" class="skin first_nav selected">
                <span class="icon"></span><span class="text">Default</span>
            </a>
            <a href="#" class="skin second_nav" data-file="css/skins/dark.css">
                <span class="icon"></span><span class="text">Dark skin</span>
            </a>
        </div>
        
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <div class="span10 pull-right">
                        <input type="text" class="span5 search" placeholder="Type a user's name..." />
                        
                        <!-- custom popup filter -->
                        <!-- styles are located in css/elements.css -->
                        <!-- script that enables this dropdown is located in js/theme.js -->
                        

                        <a href="is-music.jsp" class="btn-flat success pull-right">
                            <span>&#43;</span>
                            新增音乐
                        </a>
                    </div>
                </div>

                <!-- Users table -->
                <div class="row-fluid table">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="span4 sortable" style="font-size:15px;">
                                	<span class="line"></span>歌曲名
                                </th>
                                <th class="span3 sortable" style="font-size:15px;">
                                    <span class="line"></span>歌手名
                                </th>
                                <th class="span2 sortable" style="font-size:15px;">
                                    <span class="line"></span>专辑名
                                </th>
                                <th class="span3 sortable align-right" style="font-size:15px;">
                                    <span class="line"></span>操作
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        <!-- row -->
                        <s:iterator value="object" var="obj" status="st">
                        <%-- <%
		              	List list = (List)request.getAttribute("list");
		              	for(int i=0;i<list.size();i++){
		              		Object[] objs = (Object[])list.get(i);
							Music music = (Music)objs[0];
							CD cd = (CD)objs[1];
							Singer singer = (Singer)objs[2];
		               %> --%>

                        <tr class="first">
                            <td>
                               <!--  <a href="musicInfo.jsp" class="name">11111111111</a> -->
                                <a href="musicInfo?music.musicId=${obj[0].musicId}" class="name">${obj[0].musicName}</a>
                            </td>
                            <td>
                                <a href="getSinger?singer.singerId=${obj[2].singerId}" class="name">${obj[2].artist}</a>
                            </td>
                            <td>
                            	<a href="cdInfo?cd.cdId=${obj[1].cdId}" class="name">${obj[1].cdName}</a>
                            </td>
                            <td class="align-right">
                                <a href="update-music.jsp?music.musicId=${obj[0].musicId}" class="name">修改</a>
                                <a href="deleteMusic?music.musicId=${obj[0].musicId}">删除</a>
                            </td>
                        </tr>
                       <%--  <%} %> --%>
                        </s:iterator>
                        </tbody>
                    </table>
                </div>
                <%-- <div class="gigantic pagination" style="position: absolute; left:920px; top: 550px; ">
                    <a href="pageMusic.action?type=music&pageIndex=1">&laquo;</a>
                    <s:if test="pageIndex>1">
                    	<a href="pageMusic?type=music&pageIndex=<s:property value="pageIndex-1"/>">&lsaquo;</a>
				  	</s:if>
                    <input class="text" type="text" value="<s:property value="pageIndex"/>"  readonly style="height: 21px; width: 100px;"/>
                    
				  	<s:if test="pageIndex<totalPage">
	                    <a href="pageMusic?type=music&pageIndex=<s:property value="pageIndex+1"/>">&rsaquo;</a>
			  		</s:if>
                    <a href="pageMusic?type=music&pageIndex=<s:property value="totalPage"/>">&raquo;</a>
               </div> --%>
               <div class="pagination pull-right">
                    <ul>
                    	<s:if test="pageIndex>1">
                    		<li><a href="pageMusic?type=music&pageIndex=<s:property value="1"/>">&#8249;</a></li>
				  		</s:if>
				  		<s:if test="pageIndex<=2">
				  			<s:set id="begin" value="1"/>
				  		</s:if>
				  		<s:else>
				  			<s:set id="begin" value="pageIndex-2"/>
				  		</s:else>
				  		<s:if test="pageIndex+4>totalPage">
				  			<s:set id="end" value="totalPage"/>
				  		</s:if>
				  		<s:else>
				  			<s:set id="end" value="pageIndex+2"/>
				  		</s:else>
                        <s:iterator begin="begin" end="end" status="st" var="i">
                        	<li>
                        		<a 
                        			<s:if test="pageIndex==#i">class="active"</s:if>
                        			href="pageMusic?type=music&pageIndex=<s:property value="#i"/>">
                        			<s:property value="#i"/>
                        		</a>
                        	</li>
                        </s:iterator>
                        <s:if test="pageIndex<totalPage">
                        	<li><a href="pageMusic?type=music&pageIndex=<s:property value="totalPage"/>">&#8250;</a></li>
			  			</s:if>
                    </ul>
                </div>
                
                <!-- end users table -->
            </div>
        </div>
    </div>
    <!-- end main container -->

	<!-- 分页样式 -->
    <!-- <link rel="stylesheet" type="text/css" href="back_css/jqpagination.css" /> -->
	<!-- scripts -->
    <script src="back_js/jquery-latest.js"></script>
    <script src="back_js/bootstrap.min.js"></script>
    <script src="back_js/theme.js"></script>
 	<!-- 分页js -->
   <%--  <script src="back_js/jquery-1.7.2.min.js"></script>
    <script src="back_js/jquery.jqpagination.js"></script> --%>
</body>
</html>
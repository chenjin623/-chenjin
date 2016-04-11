<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
 <link href="back_css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="back_css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="back_css/layout.css" />

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="back_css/lib/font-awesome.css" />
    

</head>

<body>
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <a class="brand" href="back_index.jsp"><img src="back_img/logo.png" /></a>
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="active"><a href="back_index.jsp">主页</a></li>
                    <li><a href="music-list.jsp">音乐管理</a></li>
                    <li><a href="cd-list.jsp">专辑管理</a></li>
                    <li><a href="getAllSinger">歌手管理</a></li>
                    <li><a href="user-list.jsp">客户管理</a></li>
                    <li><a href="order-list.jsp">订单管理</a></li>
                    <li><a href="Integral-list.jsp">积分管理</a></li>
                    <li><a href="Feedback-list.jsp">反馈管理</a></li>
                </ul>
            </div>
            <ul class="nav pull-right">
                <li class="hidden-phone">
                    <input class="search" type="text" />
                </li>
                <li class="settings">
                    <a href="personal-info.jsp" role="button">
                    <%
			          	String adId = (String)session.getAttribute("adId");
			     	%>
                        <span class="navbar_icon" style="font-size:15px;">您好，<%=adId %></span>
                    </a>
                </li>
                <li id="fat-menu" class="dropdown">
                    <a href="back_exit" role="button" class="logout">
                        <i class="icon-share-alt"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>

<%@page import="vo.CD"%>
<%@page import="vo.Music"%>
<%@page import="vo.Singer"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'topMusicclickNum.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  		<%
				List list = (List)request.getAttribute("list");
              	for(int i=0;i<list.size();i++){
              		Object[] objs = (Object[])list.get(i);
					CD cd = (CD)objs[0];
					Singer singer = (Singer)objs[1];
		 %>
  		<div class="might-grid">
			<div class="grid-might">
				<a href="single.jsp"><img src="cd/<%=cd.getCdImg() %>" class="img-responsive" alt=""> </a>
			</div>
			<div class="might-top">
				<p>&nbsp;&nbsp;&nbsp;专辑名称：<%=cd.getCdName()%></p>
				<p>&nbsp;&nbsp;&nbsp;歌　　手：<%=singer.getArtist() %></p> 
				<p>&nbsp;&nbsp;&nbsp;发行日期：<%=cd.getReleaseTime()%></p> 
				<a href="getCdInfo?cd.cdId=<%=cd.getCdId()%>">&nbsp;&nbsp;&nbsp;点击查看 <i> </i></a>
			</div>
			<div class="clearfix"></div>
		</div>
		<%} %>
  </body>
</html>

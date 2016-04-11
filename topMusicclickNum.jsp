<%@page import="vo.Music"%>
<%@page import="vo.Singer"%>
<%@page import="vo.CD"%>
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
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  			
              <%
              	List list = (List)request.getAttribute("list");
              	for(int i=0;i<list.size();i++){
              		Object[] objs = (Object[])list.get(i);
					Music music = (Music)objs[0];
					CD cd = (CD)objs[1];
					Singer singer = (Singer)objs[2];
               %>
              <tbody>
              	<%if(i==0){ %>
                <tr class="danger">
                  <td><%=i+1 %></td>
                  <td><%=music.getMusicName() %></td>
                  <td><%=singer.getArtist() %></td>
                  <td><%=music.getClickNum() %></td>
                </tr>
                <%} 
                  if(i==1){
                %>
                <tr class="warning">
                   <td><%=i+1 %></td>
                  <td><%=music.getMusicName() %></td>
                  <td><%=singer.getArtist() %></td>
                  <td><%=music.getClickNum() %></td>
                </tr>
                <%} 
                  if(i==2){
                %>
                <tr class="active">
                   <td><%=i+1%></td>
                  <td><%=music.getMusicName() %></td>
                  <td><%=singer.getArtist() %></td>
                  <td><%=music.getClickNum() %></td>
                </tr>
                <%} 
                  if(i>3){
                %>
                 <td><%=i+1%></td>
                 <td style="width: 20px;"><%=music.getMusicName() %></td>
                 <td><%=singer.getArtist() %></td>
                 <td><%=music.getClickNum() %></td>
                 <%} %>
                </tbody>
                <%}%>
                <%-- <s:iterator value="#attr.list" var="" status="st">
                </s:iterator> --%>
		
  </body>
</html>

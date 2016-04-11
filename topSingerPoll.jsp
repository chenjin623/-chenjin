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
      <s:iterator value="#attr.singers" var="singer" status="st">
      <tbody>
      	<s:if test="#st.getIndex()==0">
       <tr class="danger">
         <td><s:property value="#st.getCount()"/></td>
         <td><s:property value="artist"/></td>
         <td><s:property value="poll"/></td>
       </tr>
       </s:if>
       <s:if test="#st.getIndex()==1">
       <tr class="warning">
         <td><s:property value="#st.getCount()"/></td>
         <td><s:property value="artist"/></td>
         <td><s:property value="poll"/></td>
       </tr>
       </s:if>
       <s:if test="#st.getIndex()==2">
       <tr class="active">
         <td><s:property value="#st.getCount()"/></td>
         <td><s:property value="artist"/></td>
         <td><s:property value="poll"/></td>
       </tr>
       </s:if>
       <s:if test="#st.getIndex()>3">
       	<td><s:property value="#st.getCount()"/></td>
         <td><s:property value="artist"/></td>
         <td><s:property value="poll"/></td>
       </s:if>                          
      </tbody>
      </s:iterator>
  </body>
</html>

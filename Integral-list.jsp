<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>充值记录</title>
    
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
    <link href="back_css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="back_css/compiled/tables.css" type="text/css" media="screen" />

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
             <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-code-fork"></i>
                    <span>积分管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class=" active submenu">
                    <li><a href="Integral.jsp">积分充值</a></li>
                    <li><a href="getAllDetail" class="active">充值记录</a></li>
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


	<!-- main container -->
    <div class="content">
        
        
        <div class="container-fluid">
            <div id="pad-wrapper">
                <!-- orders table -->
                <div class="table-wrapper orders-table section">
                    <div class="row-fluid head">
                        <div class="span12">
                            <h4>充值记录</h4>
                        </div>
                    </div>

                    <div class="row-fluid filter-block">
                        <div class="pull-right">
                            <input type="text" class="search order-search" placeholder="Search for an order.." />
                        </div>
                    </div>

                    <div class="row-fluid">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th class="span2">
                                        充值记录编号
                                    </th>
                                    <th class="span3">
                                        充值时间
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                       所充值积分数
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                        用户名
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                        管理员
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- row -->
                                <s:iterator value="#attr.list" var="list" status="st">
                                <tr class="first">
                                    <td>
                                        <s:property value="deId"/>
                                    </td>
                                    <td>
                                        <s:date name="rechTime" format="yyyy-MM-dd" nice="false"/>
                                    </td>
                                    <td>
                                        <s:property value="rechNum"/>
                                    </td>
                                    <td>
                                        <s:property value="user.userId"/>
                                    </td>
                                    <td>
                                        <s:property value="admin.adId"/>
                                    </td>
                                </tr>
                                </s:iterator>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- end orders table -->

            </div>
        </div>
    </div>
    <!-- end main container -->

	<!-- scripts -->
    <script src="back_js/jquery-latest.js"></script>
    <script src="back_js/bootstrap.min.js"></script>
    <script src="back_js/theme.js"></script>

</body>
</html>
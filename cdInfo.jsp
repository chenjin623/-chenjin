<%@page import="vo.CD"%>
<%@page import="vo.Singer"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>专辑详细信息</title>
    
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
	<s:include value="back_head2.jsp"></s:include>
	
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
                <ul class=" submenu">
                    <li><a href="is-sing.jsp">新增歌手</a></li>
                    <li><a href="page.action?type=singer" class="active">查看歌手</a></li>
                    <!--<li><a href="user-profile.jsp">User profile</a></li>-->
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


	<!-- main container -->
    <div class="content">
        
        <!-- settings changer -->
        
        
    <div class="content wide-content">
        <div class="container-fluid">
            <div class="settings-wrapper" id="pad-wrapper">
                <!-- avatar column -->
                <div class="span3 avatar-box">
                    <div class="personal-image">
                        <img src="images/TheBestDamnThing.png" class="avatar img-circle" style="width: 160px; height: 160px;"/>
                        <%-- cd/<s:property value="#attr.cds.cdImg --%>
                    </div>
                </div>

                <!-- edit form column -->
                <div class="span7 personal-info">
                    <div class="alert alert-info">
                        <i class="icon-lightbulb"></i>
                        专辑详细信息
                    </div>
                    <form action="cdInfo" method="post"/>
                        <div class="field-box">
                            <label>专辑名:</label>
                            <input class="span5 inline-input" type="text" value="<s:property value="#attr.cds.cdName"/>" readonly/>
                        </div>
                        <div class="field-box">
                            <label>发布时间：</label>
                            <input class="span5 inline-input" type="text" value="<s:date name="#attr.cds.releaseTime" format="yyyy-MM-dd"/>" readonly/>
                        </div>
                        <div class="field-box">
                            <label>收藏量：</label>
                            <input class="span5 inline-input" type="text" value="<s:property value="#attr.cds.collectNum"/>" readonly/>
                        </div>
                        <div class="field-box">
                            <label>歌手名:</label>
                            <input class="span5 inline-input" type="text" value="<s:property value="#attr.cds.singer.artist"/>" readonly />
                        </div>
                        <%-- <div class="field-box">
                            <label>简介：</label>
                            <input class="span5 inline-input" type="text" value="<s:property value="#attr.cds.cdIntroduction"/>" readonly/>
                        </div> --%>
                        <label>专辑简介:</label><textarea disabled="disabled" class="from-control" style="background-color:#FFFFFF; width:380px;height:180px; pading-left:-10px">&nbsp;&nbsp;<s:property value="#attr.cds.cdIntroduction"/>
                        </textarea><br/>
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

    <script type="text/javascript">
        $(function () {

            // toggle form between inline and normal inputs
            var $buttons = $(".toggle-inputs button");
            var $form = $("form.new_user_form");

            $buttons.click(function () {
                var mode = $(this).data("input");
                $buttons.removeClass("active");
                $(this).addClass("active");

                if (mode === "inline") {
                    $form.addClass("inline-input");
                } else {
                    $form.removeClass("inline-input");
                }
            });
        });
    </script>

</body>
</html>
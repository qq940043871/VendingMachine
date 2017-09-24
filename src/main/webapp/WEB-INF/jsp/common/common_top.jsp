	<!-- 顶部导航栏 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vend.entity.VendUser" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib prefix="menu" uri="/menu-tags"%>
<%@ taglib prefix="code" uri="/code-tags"%>
<%@ taglib prefix="role" uri="/role-tags"%>
<div id="header">
  <h1><a href="dashboard.html"></a></h1>
</div>
<%
	String path5 = request.getContextPath();
	String basePath5 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path5 + "/";
%>
<!--close-Header-part-->
<!--top-Header-menu-->

<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">欢迎${sessionScope.vendUser.username}</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="<%=basePath5%>user/self"><i class="icon-user"></i>个人信息</a></li>
        <li><a href="<%=basePath5%>user/editpwd"><i class="icon-edit"></i>修改密码</a></li>
        <!--  <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> 我的任务</a></li>-->
        <li class="divider"></li>
        <li><a href="<%=basePath5%>/logout"><i class="icon-share-alt"></i>退出</a></li>
      </ul>
    </li>
    <!-- <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">消息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> 新消息</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> 收件箱</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> 发件箱</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> 发送</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>-->
    <li class="">
	   <a title="" href="javascript:void(0)" onclick="clearcache()">
	        <i class="icon icon-trash"></i>
	        <span class="text">清除缓存</span>
	   </a>
    </li>
    <shiro:hasPermission name="login:log">
    <li class="">
	   <a title="" href="<%=basePath5%>/syslog/syslogs">
	        <i class="icon icon-file-alt"></i>
	        <span class="text">登录日志</span>
	   </a>
    </li>
    </shiro:hasPermission>
    <li class="">
	    <a title="" href="<%=basePath5%>/logout">
		    <i class="icon icon-share-alt"></i> 
		    <span class="text">退出</span>
       </a>
    </li>
  </ul>
</div>
<script type="text/javascript">
var basePath5="<%=basePath5%>";
function clearcache(){
    $.post(basePath5+'/clearcache', function(result) {
        window.location.reload();
    }, 'json');
}
</script>
<!--close-top-Header-menu-->
<!--start-top-serch
<div id="search">
  <input type="text" placeholder="输入搜索内容..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>-->
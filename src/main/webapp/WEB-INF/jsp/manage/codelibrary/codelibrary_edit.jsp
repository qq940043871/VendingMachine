<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>自动售货机管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="../../common/common_css.jsp" %>
</head>
<body>

<!--Header-part-->
<%@ include file="../../common/common_top.jsp" %>
<!--Header-part-->

<!--sidebar-menu-->
<%@ include file="../../common/common_left.jsp" %>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> 
      <a href="<%=basePath1%>welcome" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 首页</a>
      <a href="<%=basePath1%>codeCatalog/codeCatalogs" class="current">商品列表</a>
    </div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="row fluid">
      <input type="hidden" name="currentPage" id="currentPage" value="1" />
		<div class="span12">
		  <div class="widget-box">
		      <div class="widget-title"> <span class="icon"><i class="icon-info-sign"></i></span>
                 <h5>商品修改</h5>
              </div>
              
			  <div class="widget-content nopadding">
			    <sf:form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/codeLibrary/edit" enctype="multipart/form-data" commandName="codeLibrary" name="basic_validate" id="basic_validate" novalidate="novalidate">
	              <sf:hidden path="id"/>
	              <sf:hidden path="codeno"/>
	              <div class="control-group">
	                <label class="control-label">参数类别编码</label>
	                <div class="controls">
	                  <sf:input path="itemno"/>
	                  <span for="required" generated="true" class="help-inline"> <sf:errors path="itemno" cssClass="errors" style="color:#b94a48;"></sf:errors></span>
	                </div>
	              </div>
	              <div class="control-group">
	                <label class="control-label">参数类别值</label>
	                <div class="controls">
	                  <sf:input path="itemname"/>
	                  <span for="required" generated="true" class="help-inline"> <sf:errors path="itemname" cssClass="errors" style="color:#b94a48;"></sf:errors></span>
	                </div>
	              </div>
	               <div class="control-group">
	                <label class="control-label">详细描述</label>
	                <div class="controls">
	                  <sf:textarea path="extend1"/>
	                  <span for="required" generated="true" class="help-inline"> <sf:errors path="extend1" cssClass="errors" style="color:#b94a48;"></sf:errors></span>
	                </div>
	              </div>
	              <div class="form-actions">
	                <input type="submit" value="修改" class="btn btn-success">
	              </div>
	            </sf:form>
			  </div>
		  </div>
		</div>
    </div>
  </div>
</div>
<!--end-main-container-part-->

<!--Footer-part-->

<%@ include file="../../common/common_bottom.jsp" %>

<!--end-Footer-part-->
<%@ include file="../../common/common_js.jsp" %>
</body>
</html>
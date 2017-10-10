<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="base.util.DateUtil" %>
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
      <a href="<%=basePath1%>machine/machines" class="current">机器销售统计列表</a>
    </div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="row fluid">
      <sf:form action="sales" method="post" id="Paramform" class="form-horizontal">
      <input type="hidden" name="currentPage" id="currentPage" value="1" />
		<div class="span12">
		  <div class="widget-box">
		      <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                 <h5>机器销售统计列表</h5>
              </div>
              
			  <div class="widget-content">
			      <table style="margin-bottom:5px;">
			            <tr>
		                  <th>机器码:</th>
			              <th><input type="text" name="machineCode" id="machineCode" placeholder="按机器销售统计名搜索"/>&nbsp;&nbsp;</th>
		                  <th>
		                  <input type="text" name="beginTime" id="beginTime" class="Wdate span2" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});" value="<%=DateUtil.getCurrentDateStr()%>" placeholder="开始时间"/>
		                  </th>
		                  <th>
		                  <input type="text" name="endTime" id="endTime" class="Wdate span2" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});" value="<%=DateUtil.format(DateUtil.addDays(DateUtil.parseDate(DateUtil.getCurrentDateStr()),1))%>" placeholder="结束时间"/>
		                  </th>
		                  <th><input type="submit" value="搜索" class="btn btn-info"/>&nbsp;&nbsp;</th>
		                </tr>
			      </table>
			
			      <table class="table table-bordered table-striped with-check">
			         <thead>
			            <tr>
			              <th><input type="checkbox" onclick="selectAll('machinecode');" id="all" name="title-table-checkbox" /></th>
		                  <th>机器码</th>
		                  <th>消费用户数</th>
		                  <th>销售量</th>
		                  <th>销售额</th>
		                  <th>免费数量</th>
		                </tr>
			         </thead>
			         <tbody>
			           <c:forEach items="${list}" var="vendMachine" varStatus="st">
				           <tr class="gradeX">
					          <th><input type="checkbox" name="Id" id="Id" value="${vendMachine.id}"/></th>
			                  <td>${vendMachine.machinecode}</td>
			                  <td><a class="badge badge-info">${vendMachine.user_num}</a></td>
			                  <td><a class="badge badge-info">${vendMachine.sell_num}</a></td>
			                  <td><a style="color:red;font-weight:600;">${vendMachine.sell_amount}</a></td>
			                  <td><a class="badge badge-info">${vendMachine.free_num}</a></td>
			                </tr>
			           </c:forEach>
			         </tbody>
			      </table>
			  </div>
			  <div class="pagination alternate">
	              <ul>
	                <li><a href="javascript:changeCurrentPage('1')">首页</a></li>
	                <li><a href="javascript:changeCurrentPage('${page.currentPage -1}')">上一页</a></li>
	                <li class="active"> <a href="#">${page.currentPage}/${page.totalPage}</a> </li>
	                <li><a href="javascript:changeCurrentPage('${page.currentPage+1}')">下一页</a></li>
	                 <li><a href="javascript:changeCurrentPage('${page.totalPage}')">尾页</a></li>
	                <li>&nbsp;&nbsp;&nbsp;&nbsp;跳至第&nbsp; 
	                   <input id="currentPageText" type='text' value='${page.currentPage}' style="width:27px;height:15px;" />&nbsp;页&nbsp;
	                   <a href="javascript:changeCurrentPage2()" style="float:right;">GO</a>
	                </li>
	              </ul>
             </div>
		  </div>
		</div>
     </sf:form>
    </div>
  </div>
</div>

<!--end-main-container-part-->

<!--Footer-part-->
<%@ include file="../../common/common_bottom.jsp" %>

<!--end-Footer-part-->
<%@ include file="../../common/common_js.jsp" %>
<script type="text/javascript">
function delconfirm(id){
	 if(confirm("确定要删除吗?")){
		window.location.href=basePath+"machine/"+id+"/del";
	 }
}
</script>
<script src="<%=basePath2 %>resources/js/back/machine_list.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/DatePicker/WdatePicker.js"></script>
</body>
</html>

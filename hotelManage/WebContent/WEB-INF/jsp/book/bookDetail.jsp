<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <link href="${ctx}/resource/css/bootstrap.css" rel="stylesheet">
    <link href="${ctx}/resource/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="${ctx}/resource/css/stylesheet.css" rel="stylesheet">
    <link href="icon/font-awesome.css" rel="stylesheet">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.html">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.html">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.html">
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.html">
    <style type="text/css">
    .input{ width:40px;
	text-align:center;}
	.daohanglink{
		height:40px; line-height:40px; vertical-align:middle; width:100%;
		background-color:rgb(248,248,248);
		margin-bottom:15px;
		}
	.daohanglink span{
		margin-left:5px;}
	.daohang{
	float: left;
	height: 15px;
	width: 5px;
	border-left-width: 5px;
	border-left-style: solid;
	border-left-color: #036;
	margin-top:12px;
	margin-left:15px;
		}
    </style>
<script type="text/javascript" src="${ctx}/resource/js/jquery.js"></script>
<script src="js/jquery-1.10.2.js"></script>
    <script src="${ctx}/resource/js/jquery-ui-1.10.3.js"></script>
    <script src="${ctx}/resource/js/bootstrap.js"></script>
    <script src="js/library/jquery.collapsible.min.js"></script>
    <script src="js/library/jquery.mCustomScrollbar.min.js"></script>
    <script src="js/library/jquery.mousewheel.min.js"></script>
    <script src="js/library/jquery.uniform.min.js"></script>
    <script src="js/library/jquery.sparkline.min.js"></script>
    <script src="js/library/chosen.jquery.min.js"></script>
    <script src="js/library/jquery.easytabs.js"></script>
    <script src="js/library/flot/excanvas.min.js"></script>
    <script src="js/library/flot/jquery.flot.js"></script>
    <script src="js/library/flot/jquery.flot.pie.js"></script>
    <script src="js/library/flot/jquery.flot.selection.js"></script>
    <script src="js/library/flot/jquery.flot.resize.js"></script>
    <script src="js/library/flot/jquery.flot.orderBars.js"></script>
    <script src="js/library/maps/jquery.vmap.js"></script>
    <script src="js/library/maps/maps/jquery.vmap.world.js"></script>
    <script src="js/library/maps/data/jquery.vmap.sampledata.js"></script>
    <script src="js/library/jquery.autosize-min.js"></script>
    <script src="js/library/charCount.js"></script>
    <script src="js/library/jquery.minicolors.js"></script>
    <script src="js/library/jquery.tagsinput.js"></script>
    <script src="js/library/fullcalendar.min.js"></script>
    <script src="js/library/footable/footable.js"></script>
    <script src="js/library/footable/data-generator.js"></script>
    <script src="js/library/bootstrap-datetimepicker.js"></script>
    <script src="js/library/bootstrap-timepicker.js"></script>
    <script src="js/library/bootstrap-datepicker.js"></script>
    <script src="js/library/bootstrap-fileupload.js"></script>
    <script src="js/library/jquery.inputmask.bundle.js"></script>
    <script src="js/library/jquery.dataTables.js"></script>
    <script src="${ctx}/resource/js/flatpoint_core.js"></script>
    <script src="${ctx}/resource/js/datatables.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户 管理</title>
</head>
<body>
 <div id="content"> <!-- Content start -->
      <div class="inner_content">
          <div class="widgets_area">
                <div class="row-fluid">
                    <div class="span12">
                         <div  class="daohanglink"style="">
                           <span class="daohang"></span>
                           <span>首页</span><span>></span>
                           <span>系统管理</span><span>></span>
                           <span>用户管理</span><span>></span>
                           <span>用户详情</span>
<!--                            <a  href="添加用户.html" class="label label-warning" style="float:right; margin:8px;">添加</a> -->
                         </div>
                        <div class="well brown">
                            <div class="well-content" style="border:0px;">
                            <div >
                                         <div>用户名：${user.userName}</div>
                                         <div>密码：${user.passWord}</div>
                                         <div>邮箱：${user.email}</div>
                                         <div>性别：<c:if test="${user.sex == 1 }"> 
								                                               男 
								               </c:if> 
 								               <c:if test="${user.sex == 2 }">
								                                               女 
 								               </c:if> </div>
                                         <div>手机号码：${user.phone}</div>
                                         <div>证件号：${user.idCard}</div>
                                         <div>创建时间：<fmt:formatDate value="${user.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                                         <div>状态：<c:if test="${user.isDelete == 1 }"> 
								                                              已刪除 
 								               </c:if> 
								               <c:if test="${user.isDelete == 2 }">
								                                               未刪除 
 								               </c:if></div>
 						   </div>
                                 <div class="panel-foot text-center">
<%--       <pg:pager  url="${ctx}/manage_userList.do" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" > --%>
<%-- 		<pg:param name="userName" value="${userName1}"/> --%>
<%-- 		<pg:last>   --%>
<%-- 			共${pagers.total}记录,共${pageNumber}页,   --%>
<%-- 		</pg:last>   --%>
<%-- 			当前第${curPage}页  --%>
  
<%--         <pg:first>   --%>
<%--     		<a href="${pageUrl}">首页</a>   --%>
<%-- 		</pg:first>   --%>
<%-- 		<pg:prev>   --%>
<%--     		<a href="${pageUrl}">上一页</a>   --%>
<%-- 		</pg:prev>   --%>
      
<%--        	<pg:pages>   --%>
<%--         	<c:choose>   --%>
<%--             	<c:when test="${curPage eq pageNumber}">   --%>
<%--                 	<font color="red">[${pageNumber }]</font>   --%>
<%--             	</c:when>   --%>
<%--             	<c:otherwise>   --%>
<%--                		<a href="${pageUrl}">${pageNumber}</a>   --%>
<%--             	</c:otherwise>   --%>
<%--         	</c:choose>   --%>
<%--     	</pg:pages> --%>
             
<%--         <pg:next>   --%>
<%--     		<a href="${pageUrl}">下一页</a>   --%>
<%-- 		</pg:next>   --%>
<%-- 		<pg:last>   --%>
<%-- 			<c:choose>   --%>
<%--             	<c:when test="${curPage eq pageNumber}">   --%>
<!--                 	<font color="red">尾页</font>   -->
<%--             	</c:when>   --%>
<%--             	<c:otherwise>   --%>
<%--                		<a href="${pageUrl}">尾页</a>   --%>
<%--             	</c:otherwise>   --%>
<%--         	</c:choose>  --%>
    		  
<%-- 		</pg:last> --%>
<%-- 	</pg:pager> --%>
    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
//     $(function () {
// 		$('#addnew').click(function(){
// 			window.location.href="${ctx}/userlogin/addNodeurl";
// 		 });
//     });

//     function del(id)
// 	{
// 		if(confirm("确定要删除吗？"))
// 		{
// 			url="${ctx}/userlogin/delnode?id="+id;
//     		$.ajax({
//     			//cache: true,
//     			type : "post",
//     			url : url,
//     			dataType :'json',
//     			async : false,
//     			error : function(request) {
//     				return false;
//     			},
//     			success : function(data) {
//     				console.log(data)
//     				if(data.status ==1){
// 						 alert(data.desc);
// 						 window.location.href="${ctx}/userlogin/Node";
// 					 }else{
// 						 alert(data.desc);
// 				 }
//     			}
//     		});		
// 		}
// 	}
</script>
</html>
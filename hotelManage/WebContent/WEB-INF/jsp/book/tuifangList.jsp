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
    <script src="${ctx}/resource/js/flatpoint_core.js"></script>
    <script src="${ctx}/resource/js/datatables.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>房客管理</title>
</head>
<body>
 <div id="content"> <!-- Content start -->
      <div class="inner_content">
          <div class="widgets_area">
                <div class="row-fluid">
                    <div class="span12">
                      <form action="book_tuifangList.do" method="post" >
                         <div  class="daohanglink"style="">
                           <span class="daohang"></span>
                           <span>首页</span><span>></span>
                           <span>房客管理</span><span>></span>
                           <span>结账管理</span>
                           <span></span>
                           <span></span>
                           <span></span>
                           <span></span>
                           <span><label>用户名</label>
                           <input name="userName" type="text"  value="" class="text_add" placeholder="输入用户名"  style=" width:250px"/></span>
                           <span><button type="submit" class="btn_search">查询</button></span>
                         </div>
                         </form>
                        <div class="well brown">
                            <div class="well-content" style="border:0px;">
                                <table class="table table-striped table-bordered table-hover datatable">
                                    <thead>
                                        <tr>
                                            <th width="20%">用户名</th>
                                            <th width="25%">消费项目(客房预订)</th>
                                            <th width="25%">消费项目(附加消费)</th>
                                            <th width="20%">消费金额</th>
                                             <th width="10%">是否结账</th>
                                        </tr>
                                         </thead>
                                    <tbody>
                                     <c:forEach  items="${userRoomList}" var="ul" varStatus="l">
                                        <tr>
                                      
                                            <td align="center">${ul.userName}</td>
                                            <td><c:if test="${ul.roomCatName==null || ul.roomCatName==''}">
								                                             暂无此项
								               </c:if>
								               <c:if test="${ul.roomCatName!=null}">
								                     ${ul.roomCatName}                    
								               </c:if>
								            </td>
                                            <td>
                                            <c:if test="${ul.cname==null || ul.cname==''}">
								                                             暂无此项
								               </c:if>
								               <c:if test="${ul.cname!=null}">
								                     ${ul.cname}                    
								               </c:if>
								             </td>
                                             <td>￥${ul.price*ul.roomNumber*ul.day+ul.itemPrice}</td>
                                             <td>
                                            <a class="btn" href="${ctx}/book_payList.do?roomId=${ul.roomId}&bookId=${ul.bookId}" title="结账">结账</a>
                                            </td>
                                        </tr>
                                            </c:forEach>
                                    </tbody>
                                </table>
                                
<!--                                  <div class="panel-foot text-center"> -->
<%--       <pg:pager  url="${ctx}/book_tuifangList.do" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" > --%>
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
<!--     </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
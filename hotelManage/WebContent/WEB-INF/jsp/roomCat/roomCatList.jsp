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
<title>客房类型管理</title>
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
                           <span>基本信息管理</span><span>></span>
                             <span>客房类型管理</span>
                           <a href="${ctx}/roomCat_addRoomCat.do" class="label label-warning" style="float:right; margin:8px;">添加</a> 
                         </div>
                         <!--   private int id; 
	private String rName;
	private String image;//首页图片
	private double price;//价格
	private int type;//1代表 单人房 2 双人房
	private int num;//剩余数 -->
                        <div class="well brown">
                            <div class="well-content" style="border:0px;">
                                <table class="table table-striped table-bordered table-hover datatable">
                                    <thead>
                                        <tr>
                                            <th width="15%">类型序号</th>
                                             <th width="15%">类型名称</th>
                                            <th width="15%">客房价格</th>
                                            <th width="25%">客房图片</th>
                                             <th width="15%">剩余数量</th>
                                            <th width="15%">操作</th>
                                        </tr>
                                       </thead>
                                    <tbody>
                                     <c:forEach items="${pagers.datas}" var="roomCat" varStatus="l">
                                        <tr>
                                          <td align="center">${l.index+1 }</td>
<%--                                            <td><c:if test="${roomCat.id == 1}"> --%>
<!-- 							                                            单人间 -->
<%-- 							               </c:if> --%>
<%-- 							               <c:if test="${roomCat.id == 2 }"> --%>
<!-- 							                                           双人间 -->
<%-- 							               </c:if> --%>
<%-- 							               <c:if test="${roomCat.id == 3}"> --%>
<!-- 							                                         三人间 -->
<%-- 							               </c:if> --%>
<%-- 							               <c:if test="${roomCat.id == 4}"> --%>
<!-- 							                                           标准间 -->
<%-- 							               </c:if>  --%>
<!--                                           </td> -->
                                           <td>${roomCat.roomCatName}</td>
                                           <td>￥${roomCat.price}</td>
                                            <td><img src="${roomCat.image}" style="height: 100px;width: 100px"></td>
                                            <td>${roomCat.num}</td>
                                            <td>
                                            <a class="btn" href="${ctx}/roomCat_updateRoomCat.do?roomCatId=${roomCat.id}" title="修改"><i class="icon-inbox"></i></a>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                
                                 <div class="panel-foot text-center">
      <pg:pager  url="${ctx}/roomCat_roomCatList.do" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" >
		<pg:param name="userName" value="${userName1}"/>
		<pg:last>  
			共${pagers.total}记录,共${pageNumber}页,  
		</pg:last>  
			当前第${curPage}页 
  
        <pg:first>  
    		<a href="${pageUrl}">首页</a>  
		</pg:first>  
		<pg:prev>  
    		<a href="${pageUrl}">上一页</a>  
		</pg:prev>  
      
       	<pg:pages>  
        	<c:choose>  
            	<c:when test="${curPage eq pageNumber}">  
                	<font color="red">[${pageNumber }]</font>  
            	</c:when>  
            	<c:otherwise>  
               		<a href="${pageUrl}">${pageNumber}</a>  
            	</c:otherwise>  
        	</c:choose>  
    	</pg:pages>
             
        <pg:next>  
    		<a href="${pageUrl}">下一页</a>  
		</pg:next>  
		<pg:last>  
			<c:choose>  
            	<c:when test="${curPage eq pageNumber}">  
                	<font color="red">尾页</font>  
            	</c:when>  
            	<c:otherwise>  
               		<a href="${pageUrl}">尾页</a>  
            	</c:otherwise>  
        	</c:choose> 
    		  
		</pg:last>
	</pg:pager>
    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
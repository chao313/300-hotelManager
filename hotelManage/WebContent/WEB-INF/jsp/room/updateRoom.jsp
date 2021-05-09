<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <link href="${ctx}/resource/css/bootstrap.css" rel="stylesheet">
    <link href="${ctx}/resource/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="${ctx}/resource/css/stylesheet.css" rel="stylesheet">
    <link href="${ctx}/resource/css/index.css" rel="stylesheet">
    <link href="icon/font-awesome.css" rel="stylesheet">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.html">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.html">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.html">
                    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.html">
<script src="${ctx}/resource/js/jquery-1.10.2.js"></script>
<script src="${ctx}/resource/js/jquery-ui-1.10.3.js"></script>
<script src="${ctx}/resource/js/bootstrap.js"></script>
<script src="${ctx}/resource/js/flatpoint_core.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改客房</title>
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
                           <span>客房管理</span><span>></span>
                           <span>修改客房</span>
                           <!--   private int id; 
    private String roomName;//房间号
    private String remark;//房间描述
    private String image;//房间图片
    private  Room_cat room_cat;//房间分类
    private int isLive;//1 无人预订(空房) 2 已预订 3 已入住  4 故障 5 已结账
    private int floor; //楼层 1:1层 2:2层 -->
                         </div>
                        <div class="well brown">
                         <form action="room_roomUpdate.do"  method="post" enctype="multipart/form-data">
                            <div class="form_list"><label class="lable_title">房间号&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <input class="form_input" name="roomName" type="text" value="${room.roomName }"/>
                                <input class="form_input" name="id" type="hidden" value="${room.id }"/>
                            </div>
                            <div class="form_list"><label class="lable_title">楼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;层&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <select name="floor" >
		                     <c:if test="${room.floor == 1}">
						            <option value="1" selected="selected">1层</option>
						     </c:if>
		                     <c:if test="${room.floor == 2}">
						            <option value="1" selected="selected">2层</option>
						     </c:if>
		                     <c:if test="${room.floor == 3}">
						            <option value="1" selected="selected">3层</option>
						     </c:if>
		                     <c:if test="${room.floor == 4}">
						            <option value="1" selected="selected">4层</option>
						     </c:if>
		                     <c:if test="${room.floor == 5}">
						            <option value="1" selected="selected">5层</option>
						     </c:if>
				            </select>
                            </div>
                            <div class="form_list"><label class="lable_title">房间描述</label>
                            <input class="form_input" name="remark" type="text" value="${room.remark }"/></div>
                            <div class="form_list"><label class="lable_title">房间图片</label>
                           <input class="form_input" type="file" name="file" id=""  value="${room.image }"></div>
                            <div class="form_list"><label class="lable_title">房间分类</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <select name="room_cat.id" >
                              <c:forEach  items="${roomCatList}" var="rcl" varStatus="l">
                              <c:choose>
                              <c:when test="${room.room_cat.id== rcl.id}">
                                  <option value="${rcl.id }" selected="selected">${rcl.roomCatName }</option>
                               </c:when>
                              <c:otherwise>
                                        <option value="${rcl.id }">${rcl.roomCatName }</option>
                              </c:otherwise>
                              </c:choose>
                              </c:forEach>
<%--                              <c:if test="${room.room_cat.id == 1}"> --%>
<!-- 				            <option value="1" selected="selected">单人间</option> -->
<%-- 				            </c:if> --%>
<%--                              <c:if test="${room.room_cat.id == 2}"> --%>
<!-- 				            <option value="1" selected="selected">双人间</option> -->
<%-- 				            </c:if> --%>
<%--                              <c:if test="${room.room_cat.id == 3}"> --%>
<!-- 				            <option value="1" selected="selected">三人间</option> -->
<%-- 				            </c:if> --%>
<%--                              <c:if test="${room.room_cat.id == 4}"> --%>
<!-- 				            <option value="1" selected="selected">标准间</option> -->
<%-- 				            </c:if> --%>
				            </select>
                            </div>
                            <div class="form_list"><label class="lable_title">房间状态&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <select name="isLive" >
                             <c:if test="${room.isLive == 1}">
				            <option value="1" selected="selected">空房</option>
				             </c:if>
                             <c:if test="${room.isLive == 2}">
				            <option value="1" selected="selected">已预订</option>
				             </c:if>
                             <c:if test="${room.isLive == 3}">
				            <option value="1" selected="selected">已入住</option>
				             </c:if>
                             <c:if test="${room.isLive == 4}">
				            <option value="1" selected="selected">故障</option>
				             </c:if>
                             <c:if test="${room.isLive == 5}">
				            <option value="1" selected="selected">已结账</option>
				             </c:if>
				            </select>
                            </div>
                            <div class="form_list"><input type="submit" class="submit" value="&nbsp;&nbsp;修&nbsp;&nbsp;改&nbsp;&nbsp;"></div>
                         </form>   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
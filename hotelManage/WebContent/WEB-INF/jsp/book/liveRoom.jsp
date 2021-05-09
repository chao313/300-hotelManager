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
                         <div  class="daohanglink"style="">
                           <span class="daohang"></span>
                           <span>首页</span><span>></span>
                           <span>房客管理</span><span>></span>
                           <span>预定转入住管理</span><span>></span>
                           <span>客户预定信息</span>
                         </div>
                        <div class="well brown">
                            <div class="well-content" style="border:0px;">
                            <div >
                                         <div>客户：${book.bookUser.userName}</div>
                                          <div>性别：<c:if test="${book.bookUser.sex == 1 }"> 
								                                               男 
								               </c:if> 
 								               <c:if test="${book.bookUser.sex == 2 }">
								                                               女 
 								               </c:if> </div>
                                         <div>联系电话：${book.bookUser.phone}</div>
                                            <div>邮箱：${book.bookUser.email}</div>
                                         <div>证件类型：<c:if test="${book.bookUser.cardType == 0}">
							                                              二代身份证 
							               </c:if>
							               <c:if test="${book.bookUser.cardType == 1 }">
							                                               护照
							               </c:if>
							               <c:if test="${book.bookUser.cardType == 2}">
							                                            港澳通行证
							               </c:if>
							               <c:if test="${book.bookUser.cardType == 3}">
							                                            台湾通行证
							               </c:if></div>
                                         <div>证件号码：${book.bookUser.idCard}</div>
 								          <div>房间号：${book.room.roomName}</div>
                                          <div>楼层：<c:if test="${book.room.floor == 1}">
							                                            1层
							               </c:if>
							               <c:if test="${book.room.floor == 2 }">
							                                           2层
							               </c:if>
							               <c:if test="${book.room.floor == 3}">
							                                          3层
							               </c:if>
							               <c:if test="${book.room.floor == 4}">
							                                           4层
							               </c:if> 
							              <c:if test="${book.room.floor == 5}">
							                                           5层                        
							               </c:if></div>
                                         <div>房间图片：<img src="${book.room.image}" style="height: 100px;width: 100px"></div>
                                         <div>入住时间：<fmt:formatDate value="${book.reachTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                                         <div>离店时间：<fmt:formatDate value="${book.leaveTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
 								               <div>入住人数：${book.roomNumber}</div>
 								               <div>入住状态： <c:if test="${book.status == 1 }">
								                                             已预定
								               </c:if>
								               <c:if test="${book.status == 2 }">
								                                               已入住
								               </c:if>
								               </div>
 								              <c:if test="${book.status == 1 }">
								              <div class="label label-warning"  style="margin-left: 218px; cursor: pointer;"> <a  href="${ctx}/book_live.do?bookId=${book.id}"><span >办理入住</span></a></div>
								               </c:if>
 								             
 								            
 						    </div>
                                 <div class="panel-foot text-center">
                                  </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
function ruzhu(name){
	var con = $("#content").val();
//	${ctx}/sayMood_photoDetail.do?id=${data.id}
  var date = getNowFormatDate();
	 $.ajax({
		type : 'post',
		url : ctx+"/message_sendMessage.do?content="+con,
		dataType : "json",
		success : function(data) {
			if(data.result == 2){
				alert("您会员已经到期了，暂时不能聊天，请充值后再聊天！！！")
				return false;
			}else{
				$(".news_d").append(" <div class='mess_right'><div class='nameMe'><span class='messtime'>"+name+"</span>&nbsp;&nbsp;:&nbsp;&nbsp;<span class='messtime'>"+date+"</span></div><div class='message_right_con'>"+con+"</div> </div>");
				$("#content").val("");
				$('.news_d').scrollTop( $('.news_d')[0].scrollHeight );
			}
		},
		error : function() {
			alert("error");
		}
	});
}
</script>
</html>
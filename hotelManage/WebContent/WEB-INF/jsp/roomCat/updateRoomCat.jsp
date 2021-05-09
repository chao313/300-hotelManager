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
<title>新增客房</title>
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
                           <span>新增客房</span>
                           <!--   private int id; 
    private String roomName;//房间号
    private String remark;//房间描述
    private String image;//房间图片
    private  Room_cat room_cat;//房间分类
    private int isLive;//1 无人预订(空房) 2 已预订 3 已入住  4 故障 5 已结账
    private int floor; //楼层 1:1层 2:2层 -->
                         </div>
                        <div class="well brown">
                         <form action="roomCat_roomCatUpdate.do"  method="post" enctype="multipart/form-data">
                             <input class="form_input" name="id" type="hidden" value="${room_cat.id }"/>
                            <div class="form_list"><label class="lable_title">类别名称&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <input class="form_input" name="roomCatName" type="text" value="${room_cat.roomCatName }"/>
                            </div>
                            <div class="form_list"><label class="lable_title">客房类型&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <input class="form_input" name="type" type="text" value="${room_cat.type }"/>
                            </div>
                            <div class="form_list"><label class="lable_title">客房价格&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <input class="form_input" name="price" type="text" value="${room_cat.price }"/></div>
                            <div class="form_list"><label class="lable_title">房间图片&nbsp;&nbsp;&nbsp;&nbsp;</label>
                           <input class="form_input" type="file" name="file" id="" value="${room_cat.image }"/></div>
                            <div class="form_list"><label class="lable_title">剩余数量&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <input class="form_input" name="num" type="text" value="${room_cat.num }"/>
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
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
<title>新增商品</title>
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
                           <span>基础信息管理</span><span>></span>
                           <span>商品管理</span><span>></span>
                            <span>新增商品</span>
                           <!-- private long  price;//商品价格
	private int number;//商品数量
	private int isDelete;//是否删除:1是2不是
	private String remark;//备注
	private String image;//商品图片
	private String itemName;//商品名字
	private Item_cat item_cat; //商品类别外键
	private User itemUser;//商品和用户关联  -->
                         </div>
                        <div class="well brown">
                         <form action="item_itemAdd.do"  method="post" enctype="multipart/form-data">
                            <div class="form_list"><label class="lable_title">商品名称</label>
                            <input class="form_input" name="itemName" type="text"/>
                            </div>
                            <div class="form_list"><label class="lable_title">商品描述</label>
                            <input class="form_input" name="remark" type="text"/></div>
                            <div class="form_list"><label class="lable_title">商品图片</label>
                           <input class="form_input" type="file" name="file" id="" ></div>
                            <div class="form_list"><label class="lable_title">商品类别</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <select name="item_cat.cid" >
                              <c:forEach  items="${itemCatList}" var="icl" varStatus="l">
                               <option value="${icl.cid }">${icl.cname }</option>
                              </c:forEach>
				            </select>
                            </div>
                            <div class="form_list"><input type="submit" class="submit" value="&nbsp;&nbsp;新&nbsp;&nbsp;增&nbsp;&nbsp;"></div>
                         </form>   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
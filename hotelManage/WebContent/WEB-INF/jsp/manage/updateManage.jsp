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
<title>修改管理员</title>
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
                           <span>酒店人员权限管理</span><span>></span>
                           <span>修改管理员</span>
                           <!-- private int id;
	private int sex;//1男2女
	private String name; //用户名
	private String passWord;//密码
	private String phone;//联系电话
    private String idCard;//证件号码
    private int isDelete;//是否删除；1是2不是
	private int type;//管理员类型 0：普通管理员 1：超级管理员
	private String email;//邮箱
	private Date createTime; //创建时间 -->
                         </div>
                        <div class="well brown">
                         <form action="manage_updateAuth.do"  method="post" >
                            <div class="form_list"><label class="lable_title">账号名称</label><input class="form_input" name="name" type="text" value="${manage.name}" /></div>
                             <input type="hidden" name="id"  value="${manage.id}"/>
                             <div class="form_list"><label class="lable_title">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                             <input class="form_input" name="passWord" type="text" value="${manage.passWord}"/></div>
                            <div class="form_list"><label class="lable_title">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</label>
                            <input class="form_input" type="text" name="email" value="${manage.email}"/></div>
                            <div class="form_list"><label class="lable_title">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <input type="radio" name="sex" value="1" <c:if test="${manage.sex == 1 }"> checked="checked" </c:if> >&nbsp;&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 <input type="radio" name="sex"  value="2"<c:if test="${manage.sex == 2 }"> checked="checked"   </c:if>>&nbsp;&nbsp;女</div>
                            <div class="form_list"><label class="lable_title">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机</label>
                            <input class="form_input" type="text" name="phone" value="${manage.phone}"/></div>
                            <div class="form_list"><label class="lable_title">证件号码</label>
                            <input class="form_input" type="text" name="idCard" value="${manage.idCard}"/></div>
                            <div class="form_list"><label class="lable_title">分配角色</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="type" value="1" <c:if test="${manage.type == 1 }"> checked="checked" </c:if>>&nbsp;&nbsp;超级管理员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="type" value="0"<c:if test="${manage.type == 0}"> checked="checked" </c:if>>&nbsp;&nbsp;普通管理员</div>
                            <div class="form_list"><input type="submit" class="submit" id="save" value="&nbsp;&nbsp;提&nbsp;&nbsp;交&nbsp;&nbsp;"></div>
                         </form>   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
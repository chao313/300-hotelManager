<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="${ctx}/resource/css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/resource/js/jquery.js"></script>
 <link href="${ctx}/resource/css/bootstrap.css" rel="stylesheet">
    <link href="${ctx}/resource/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="${ctx}/resource/css/stylesheet.css" rel="stylesheet">
    <link href="${ctx}/resource/css/index.css" rel="stylesheet">
    <link href="${ctx}/resource/icon/font-awesome.css" rel="stylesheet">
    <script src="${ctx}/resource/js/jquery-1.10.2.js"></script>
    <script src="${ctx}/resource/js/jquery-ui-1.10.3.js"></script>
    <script src="${ctx}/resource/js/bootstrap.js"></script>
    <script src="${ctx}/resource/js/library/jquery.collapsible.min.js"></script>
    <script src="${ctx}/resource/js/library/jquery.mCustomScrollbar.min.js"></script>
    <script src="${ctx}/resource/js/library/jquery.mousewheel.min.js"></script>
    <script src="${ctx}/resource/js/library/jquery.uniform.min.js"></script>
    <script src="${ctx}/resource/js/library/jquery.sparkline.min.js"></script>
    <script src="${ctx}/resource/js/library/chosen.jquery.min.js"></script>
    <script src="${ctx}/resource/js/library/jquery.easytabs.js"></script>
    <script src="${ctx}/resource/js/library/flot/excanvas.min.js"></script>
    <script src="${ctx}/resource/js/library/flot/jquery.flot.js"></script>
    <script src="${ctx}/resource/js/library/flot/jquery.flot.pie.js"></script>
    <script src="${ctx}/resource/js/library/flot/jquery.flot.selection.js"></script>
    <script src="${ctx}/resource/js/library/flot/jquery.flot.resize.js"></script>
    <script src="${ctx}/resource/js/library/flot/jquery.flot.orderBars.js"></script>
    <script src="${ctx}/resource/js/library/maps/jquery.vmap.js"></script>
    <script src="${ctx}/resource/js/library/maps/maps/jquery.vmap.world.js"></script>
    <script src="${ctx}/resource/js/library/maps/data/jquery.vmap.sampledata.js"></script>
    <script src="${ctx}/resource/js/library/jquery.autosize-min.js"></script>
    <script src="${ctx}/resource/js/library/charCount.js"></script>
    <script src="${ctx}/resource/js/library/jquery.minicolors.js"></script>
    <script src="${ctx}/resource/js/library/jquery.tagsinput.js"></script>
    <script src="${ctx}/resource/js/library/fullcalendar.min.js"></script>
    <script src="${ctx}/resource/js/library/footable/footable.js"></script>
    <script src="${ctx}/resource/js/library/footable/data-generator.js"></script>
    <script src="${ctx}/resource/js/library/bootstrap-datetimepicker.js"></script>
    <script src="${ctx}/resource/js/library/bootstrap-timepicker.js"></script>
    <script src="${ctx}/resource/js/library/bootstrap-datepicker.js"></script>
    <script src="${ctx}/resource/js/library/bootstrap-fileupload.js"></script>
    <script src="${ctx}/resource/js/library/jquery.inputmask.bundle.js"></script>
    <script src="${ctx}/resource/js/flatpoint_core.js"></script>

    <!-- Le fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.html">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.html">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.html">
      <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.html">
          <script src="${ctx}/resource/js/calendar.js"></script>
    <script src="${ctx}/resource/js/forms.js"></script>
    <script src="${ctx}/resource/js/dashboard.js"></script>
<script>
    function getclassname(obj){
		if(document.getElementsByClassName('link_onclick').length==0){
			obj.className='link_onclick';
			obj.id='link_onclick';
			}else{
				var obj1=document.getElementById('link_onclick');
				obj1.className='111';
				obj1.id='1';
				obj.className='link_onclick';
			   obj.id='link_onclick';
			}
		
		}
    </script>
    
    <script>
        jQuery('#vmap').vectorMap({
            map:"world_en",
            backgroundColor:null,
            color:"#ffffff",
            hoverOpacity:.7,
            selectedColor:"#2d91ef",
            enableZoom:0,
            showTooltip:1,
            values:sample_data,
            scaleColors:["#8cc3f6","#5c86ac"],
            normalizeFunction:"polynomial",
            onRegionClick:function(){alert("This Region has "+(Math.floor(Math.random()*10)+1)+" users!"
            )}
        });

        jQuery(document).ready(function($) {
            $('.footable').footable();
            $('.responsive_table_container').mCustomScrollbar({
                set_height: 400,
                advanced:{
                  updateOnContentResize: true,
                  updateOnBrowserResize: true
                }
            });

            $('.responsive_table_container_2').mCustomScrollbar({
                set_height: 520,
                advanced:{
                  updateOnContentResize: true,
                  updateOnBrowserResize: true
                }
            });
        });
    </script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登陆</title>
</head>
</html>
<body>
    <header class="dark_grey">
     <!-- Header start -->
       <div class="top">
<%--     <div class="logo1">    
    <img src="${ctx}/resource/image/logo.png" /> 
              酒店后台管理平台
    </div>--%>
<!--     <div> 酒店后台管理平台</div> -->
     <div class="login">
   <a href="${ctx}/login_tuichu.do"> <img src="${ctx}/resource/image/login.png"  /></a>
    </div>
    <div class="username" style="color: black"> 
      你好：${userName}
    </div>
    <div class="user" >
    <img src="${ctx}/resource/image/user.png" />
    </div>
   

</div>
       
    </header>

    <div id="main_navigation" class="dark_navigation"> <!-- Main navigation start -->
        <div class="inner_navigation" >

            <ul class="main" >
                <li ><a class="expand"  href="dashboard.html"><i class="icon-home"></i>&nbsp;&nbsp;系统管理</a>
                    <ul class="sub_main" style="background-color: #20477C;">
                          <div style=" height:8px; width:100%;"></div>
                          <li><a href="${ctx}/manage_userList.do" target="right" onClick="getclassname(this)">用户管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                          <li><a href="${ctx}/log_logList.do" target="right" onClick="getclassname(this)">日志管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                           <c:if test="${type1 == 1 }">
                          <li><a href="${ctx}/manage_authList.do" target="right" onClick="getclassname(this)">酒店人员权限&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                         </c:if>	
                           <div style=" height:8px; width:100%;"></div>
                        
                    </ul>
                </li>
                 <li ><a class="expand"  href="dashboard.html"><i class="icon-table"></i>&nbsp;&nbsp;房客管理</a>
                    <ul class="sub_main" style="background-color: #20477C;">
                          <div style=" height:8px; width:100%;"></div>
                          <li><a href="${ctx}/book_bookList.do" target="right" onClick="getclassname(this)">客房预定管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                          <li><a href="${ctx}/book_liveList.do" target="right" onClick="getclassname(this)">预定转入住管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                          <li><a href="${ctx}/book_changeRoomList.do" target="right" onClick="getclassname(this)">换房管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li> 
                          <li><a href="${ctx}/book_tuifangList.do" target="right" onClick="getclassname(this)">结账管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                           <div style=" height:8px; width:100%;"></div>
                        
                    </ul>
                </li>
                <li><a href="${ctx}/room_roomList.do" target="right" onClick="getclassname(this)"><i class="icon-calendar"></i>&nbsp;&nbsp;客房管理</a>
                   
                </li>
                <li><a href="${ctx}/book_moneyList.do" target="right" onClick="getclassname(this)"><i class="icon-tasks"></i>&nbsp;&nbsp;财务查询</a>  </li>
                 <li ><a class="expand"  href="dashboard.html"><i class="icon-signal"></i>&nbsp;&nbsp;基础信息管理</a>
                    <ul class="sub_main" style="background-color: #20477C;">
                          <div style=" height:8px; width:100%;"></div>
                          <li><a href="${ctx}/roomCat_roomCatList.do" target="right" onClick="getclassname(this)">客房类型管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                          <li><a href="${ctx}/itemCat_itemCatList.do" target="right" onClick="getclassname(this)">商品类别管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
<%--                            <li><a href="${ctx}/item_itemCatList.do" target="right" onClick="getclassname(this)">商品类别二级&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li> --%>
                          <li><a href="${ctx}/item_itemList.do" target="right" onClick="getclassname(this)">商品管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                          <li><a href="${ctx}/manage_suggestList.do" target="right" onClick="getclassname(this)">建议管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li> 
<!--                           <li><a href="权限管理.html" target="right" onClick="getclassname(this)">会员管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li> -->
                           <div style=" height:8px; width:100%;"></div>
                        
                    </ul>
                </li>
                 <li ><a class="expand"  href="dashboard.html"><i class="icon-warning-sign"></i>&nbsp;&nbsp;PA(公共区域)管理</a>
                    <ul class="sub_main" style="background-color: #20477C;">
                          <div style=" height:8px; width:100%;"></div>
                          <li><a href="${ctx}/room_healthList.do" target="right" onClick="getclassname(this)">酒店卫生管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                          <li><a href="${ctx}/mistake_mistakeList.do" target="right" onClick="getclassname(this)">异常情况管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                          <li><a href="${ctx}/need_needList.do" target="right" onClick="getclassname(this)">客户需求管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                          <li><a href="${ctx}/buy_buyList.do" target="right" onClick="getclassname(this)">酒店物品采购&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                          <li><a href="${ctx}/mistake_repairList.do" target="right" onClick="getclassname(this)">维修管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="float:right;font-size:20px;">></font></a></li>
                           <div style=" height:8px; width:100%;"></div>
                    </ul>
                </li>
            </ul>
        </div>
    </div>

    <div id="content" class="no-sidebar">
     <!-- Content start -->
 
          <iframe  class="inner_navigation1" name="right" src="${ctx}/main.jsp" frameborder="0" width="100%" scrolling="auto" height="100%"></iframe> 

               <!-- Content END --> 
            </div>
            
        </div>
    </div>


    
  </body>






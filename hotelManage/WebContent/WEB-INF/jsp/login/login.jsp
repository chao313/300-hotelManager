<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="${ctx}/resource/css/login.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="${ctx}/resource/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${ctx}/resource/assets/font-awesome/4.2.0/css/font-awesome.min.css" />
		<!-- text fonts -->
		<link rel="stylesheet" href="${ctx}/resource/assets/fonts/fonts.googleapis.com.css" />
		<!-- ace styles -->
		<link rel="stylesheet" href="${ctx}/resource/assets/css/ace.min.css" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="${ctx}/resource/assets/css/ace-rtl.min.css" />
<style type="text/css">
	.login-layout{
	background-color: #319bcf;
	}

.login-container{
	margin-left:auto;
	margin-right:auto;
    top:20%;
	margin-top: 150px;

}
</style>
<script type="text/javascript" src="${ctx}/resource/js/jquery.js"></script>
<script type="text/javascript">
			window.jQuery || document.write("<script src='${ctx}/resource/assets/js/jquery.min.js'>"+"<"+"/script>");
</script>
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${ctx}/resource/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			 $(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			 });
			});
			
			
			
			//you don't need this, just used for changing background
			jQuery(function($) {
			 $('#btn-login-dark').on('click', function(e) {
				$('body').attr('class', 'login-layout');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-light').on('click', function(e) {
				$('body').attr('class', 'login-layout light-login');
				$('#id-text2').attr('class', 'grey');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-blur').on('click', function(e) {
				$('body').attr('class', 'login-layout blur-login');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'light-blue');
				
				e.preventDefault();
			 });
			});
		</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>??????</title>
</head>
<body class="login-layout" >
		<div class="main-container" >
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="white" id="id-text2">??????????????????</span>
								</h1>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												?????????????????????
											</h4>

											<div class="space-6"></div>

											<form action="manage_index.do" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input name="name" type="text" class="form-control"value="" placeholder="?????????" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input name="passWord" type="password" class="form-control" value="" placeholder="??????" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
<!-- 														<label class="inline"> -->
<!-- 															<input type="checkbox" class="ace" /> -->
<!-- 															<span class="lbl"> ??????</span> -->
<!-- 														</label> -->

														<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110" id="login" >??????</span>
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

<!-- 											<div class="social-or-login center"> -->
<!-- 												<span class="bigger-110">???????????????</span> -->
<!-- 											</div> -->

<!-- 											<div class="space-6"></div> -->

<!-- 											<div class="social-login center"> -->
<!-- 												<a class="btn btn-primary"> -->
<!-- 													<i class="ace-icon fa fa-facebook"></i> -->
<!-- 												</a> -->

<!-- 												<a class="btn btn-info"> -->
<!-- 													<i class="ace-icon fa fa-twitter"></i> -->
<!-- 												</a> -->

<!-- 												<a class="btn btn-danger"> -->
<!-- 													<i class="ace-icon fa fa-google-plus"></i> -->
<!-- 												</a> -->
<!-- 											</div> -->
										</div><!-- /.widget-main -->

										<div class="toolbar clearfix">
<!-- 											<div> -->
<!-- 												<a href="#" data-target="#forgot-box" class="forgot-password-link"> -->
<!-- 													<i class="ace-icon fa fa-arrow-left"></i> -->
<!-- 													???????????? -->
<!-- 												</a> -->
<!-- 											</div> -->

<!-- 											<div> -->
<!-- 												<a href="#" data-target="#signup-box" class="user-signup-link"> -->
<!-- 													?????? -->
<!-- 													<i class="ace-icon fa fa-arrow-right"></i> -->
<!-- 												</a> -->
<!-- 											</div> -->
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="ace-icon fa fa-key"></i>
												????????????
											</h4>

											<div class="space-6"></div>
											<p>
												???????????????????????????????????????
											</p>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="Email" />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>

													<div class="clearfix">
														<button type="button" class="width-35 pull-right btn btn-sm btn-danger">
															<i class="ace-icon fa fa-lightbulb-o"></i>
															<span class="bigger-110">????????????</span>
														</button>
													</div>
												</fieldset>
											</form>
										</div><!-- /.widget-main -->

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												????????????
												<i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="ace-icon fa fa-users blue"></i>
												????????????
											</h4>

											<div class="space-6"></div>
											<p>????????????: </p>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="??????" />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="?????????" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="??????" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="????????????" />
															<i class="ace-icon fa fa-retweet"></i>
														</span>
													</label>

													<label class="block">
														<input type="checkbox" class="ace" />
														<span class="lbl">
															??????
															<a href="#">????????????</a>
														</span>
													</label>

													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="ace-icon fa fa-refresh"></i>
															<span class="bigger-110">??????</span>
														</button>

														<button type="button" class="width-65 pull-right btn btn-sm btn-success">
															<span class="bigger-110">??????</span>

															<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
														</button>
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												<i class="ace-icon fa fa-arrow-left"></i>
												????????????
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.signup-box -->
							</div><!-- /.position-relative -->

<!-- 							<div class="navbar-fixed-top align-right"> -->
<!-- 								<br /> -->
<!-- 								&nbsp; -->
<!-- 								<a id="btn-login-dark" href="#">Dark</a> -->
<!-- 								&nbsp; -->
<!-- 								<span class="blue">/</span> -->
<!-- 								&nbsp; -->
<!-- 								<a id="btn-login-blur" href="#">Blur</a> -->
<!-- 								&nbsp; -->
<!-- 								<span class="blue">/</span> -->
<!-- 								&nbsp; -->
<!-- 								<a id="btn-login-light" href="#">Light</a> -->
<!-- 								&nbsp; &nbsp; &nbsp; -->
<!-- 							</div> -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->
		<div style="text-align:center;">
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="resources/assets/img/favicon.png">
<!--     Fonts and icons     -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

<!-- CSS Files -->
<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/assets/css/material-kit.css" rel="stylesheet" />
<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.navbar-header{
height: 30px;
}
</style>
<script>
$(function(){
	
	$("#login").on('click', function(){
		$.ajax({
			url : "login"
			, type : "post"
			, data : {"userid" : $('#userid').val(), "password" : $('#password').val()}
			, success : function(resp) {
				if(resp == "errorMsg") {
					$(".dropdown").attr("class", "dropdown open");
					$('#error_text').html('<div class="form-group label-floating has-error"><label class="control-label">ID 또는 비밀번호가 틀리셨습니다.</label><input type="email" value="" class="form-control" /><span class="material-icons form-control-feedback">clear</span></div>');
					/* '<div class="alert alert-info"> <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true"><i class="material-icons">clear</i></span></button><b>Info alert:</b> 내용</div>' */
				} else {
					location.href=resp;
				}
			}
		});
	});
	
	$("#joinid").blur( function(){
		$.ajax({
			url: "join"
			, type: "get"
			, data: {"userid" : $("#joinid").val()}
			, success : function(resp){
				alert(resp);
				this.attr("class", "form-group label-floating has-error");
			}
		});
	});
	
	var loc = $(location).attr('pathname');
	
	if(loc == "/boot03/comu"){
		$("#comu").attr("class", "active");
	}else if(loc == "/boot03/mypage"){
		$("#mypage").attr("class", "active");		
	}else if(loc == "/boot03/shared"){
		$("#shared").attr("class", "active");		
	}else if(loc == "/boot03/howto"){
		$("#howto").attr("class", "active");		
	}else if(loc == "/boot03/aboutus"){
		$("#aboutus").attr("class", "active");		
	}else{
		$("#home").attr("class", "active");
	}
	
});
</script>
</head>
<body>

	<!-- Navbar -->
	<nav
		class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll" style="background-image: url('resources/images/galaxy-3.jpg'); font-color:red;">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navigation-index">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="#">
					<div class="logo-container">
						<div class="brand"></div>
					</div>
				</a>
			</div>

			<div class="collapse navbar-collapse" id="navigation-index">
				<ul class="nav navbar-nav navbar-right">
					<li id="home"><a href=".">MAIN</a></li>
					<li id="comu"><a href="comu">COMU</a></li>
					<li id="mypage"><a href="mypage">MyPage</a></li>
					<li id="shared"><a href="shared">Shared</a></li>
					<li id="howto"><a href="howto">HOW TO</a></li>
					<li id="aboutus"><a href="aboutus">ABOUT US</a></li>
					<li><a href="#"></a></li>
					<c:if test="${empty loginId}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" id="log">Login <b class="caret"></b>
						</a>
							<ul class="dropdown-menu dropdown-menu-right">
								<li>
									<div class="col-sm-12">
										<!-- <div id="error_text"></div> -->
											<form class="form" method="post" action="login">
										<div class="content">
												<div class="input-group">
													<span class="input-group-addon"> <i
														class="material-icons">face</i>
													</span> <input type="text" class="form-control" placeholder="ID"
														name="userid" id="userid"> <a href="#pablo"
														class="btn btn-simple btn-primary btn-lg"> </a>
												</div>
												<div class="input-group">
													<span class="input-group-addon"> <i
														class="material-icons">lock_outline</i>
													</span> <input type="password" placeholder="Password"
														class="form-control" name="password" id="password" />
												</div>
										</div>
											</form>
										<div class="footer text-center">
											<a href="#pablo" class="btn btn-simple btn-primary btn-lg">
												<button class="btn btn-primary" id="login">LOGIN</button>
											</a>
											<hr>
											<div id="error_text"></div>
											<a href="#pablo" class="btn btn-simple btn-primary btn-lg">
												<button class="btn btn-primary btn-simple"
													data-toggle="modal" data-target="#joinModal">JOIN</button>
												<button class="btn btn-primary btn-simple"
													data-toggle="modal" data-target="#findModal">FIND</button>
											</a>
										</div>
					</c:if>
					<c:if test="${not empty loginId}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Logout<b class="caret"></b>
						</a>
							<ul class="dropdown-menu dropdown-menu-right">
								<li>
									<div class="col-sm-12">
										<div class="content">
											<a href="#pablo" class="btn btn-simple btn-primary btn-lg">
												${loginId} 님이 로그인 중입니다. </a>
										</div>
									</div>
								</li>
								<li>
									<div class="col-sm-12">
										<div class="content">
											<form class="form" method="post" action="logout">
												<div class="footer text-center">
													<a href="#pablo" class="btn btn-simple btn-primary btn-lg">
														<button class="btn btn-primary">LOGOUT</button>
													</a>
												</div>
											</form>
										</div>
									</div>
								</li>
							</ul>
					</c:if>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->


	<!-- Start joinModal -->
	<div class="modal fade" id="joinModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="material-icons">clear</i>
					</button>
					<h4 class="modal-title">JOIN</h4>
				</div>
				<div class="modal-body">
					<form class="form" method="post" action="join">
						<div class="content">
							<div class="input-group">
								<span class="input-group-addon"> <i
									class="material-icons">face</i>
								</span> <input type="text" class="form-control" placeholder="ID"
									name="userid" id="joinid">
							</div>

							<div class="input-group">
								<span class="input-group-addon"> <i
									class="material-icons">email</i>
								</span> <input type="text" class="form-control" placeholder="E-MAIL"
									name="email">
							</div>

							<div class="input-group">
								<span class="input-group-addon"> <i
									class="material-icons">lock_outline</i>
								</span> <input type="password" placeholder="Password.."
									class="form-control" name="password" />
							</div>
							<div class="input-group">
								<span class="input-group-addon"> <i
									class="material-icons">lock</i>
								</span> <input type="password" placeholder="Password...."
									class="form-control" />
							</div>

							<div class="input-group">
								<span class="input-group-addon"> <i
									class="material-icons">help_outline</i>
								</span>

								<div class="form-group">
									<select class="select form-control" name="question">
										<option value="volvo" selected>Choose Question</option>
										<option value="saab">1. 이름은?</option>
										<option value="mercedes">2. 별명은?</option>
										<option value="audi">3. 고향은?</option>
									</select>
								</div>
							</div>

							<div class="input-group">
								<span class="input-group-addon"> <i
									class="material-icons">help</i>
								</span> <input type="text" placeholder="Answer" class="form-control"
									name="answer" />
							</div>
						</div>
						<div class="footer text-center">
							<a href="#pablo" class="btn btn-simple btn-primary btn-lg">
								<button class="btn btn-primary">JOIN !</button>
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--  End joinModal -->

	<!-- Start findModal -->
	<div class="modal fade" id="findModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="material-icons">clear</i>
					</button>
					<h4 class="modal-title">FIND</h4>
				</div>
				<div class="modal-body">
					<form class="form" method="post" action="find">
						<div class="content">
							<div class="input-group">
								<span class="input-group-addon"> <i
									class="material-icons">face</i>
								</span> <input type="text" class="form-control" placeholder="ID"
									name="userid" id="joinid">
							</div>

							<div class="input-group">
								<span class="input-group-addon"> <i
									class="material-icons">email</i>
								</span> <input type="text" class="form-control" placeholder="E-MAIL"
									name="email" id="email">
							</div>
							
							<div class="input-group">
								<span class="input-group-addon"> <i
									class="material-icons">help_outline</i>
								</span>

								<div class="form-group">
									<select class="select form-control" name="question">
										<option value="volvo" selected>Choose Question</option>
										<option value="saab">1. 이름은?</option>
										<option value="mercedes">2. 별명은?</option>
										<option value="audi">3. 고향은?</option>
									</select>
								</div>
							</div>

							<div class="input-group">
								<span class="input-group-addon"> <i
									class="material-icons">help</i>
								</span> <input type="text" placeholder="Answer" class="form-control"
									name="answer" />
							</div>
						</div>
						<div class="footer text-center">
							<a href="#pablo" class="btn btn-simple btn-primary btn-lg">
								<button class="btn btn-primary">find !</button>
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--  End findModal -->


</body>


<script src='resources/js/jaudio.min.js'></script>
<script src='resources/js/main.js'></script>

<!--   Core JS Files   -->
<script src="resources/assets/js/jquery.min.js" type="text/javascript"></script>
<script src="resources/assets/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="resources/assets/js/material.min.js"></script>

<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="resources/assets/js/nouislider.min.js"
	type="text/javascript"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="resources/assets/js/bootstrap-datepicker.js"
	type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="resources/assets/js/material-kit.js" type="text/javascript"></script>

<script type="text/javascript">
	$().ready(function() {
		// the body of this function is in resources/assets/material-kit.js
		materialKit.initSliders();
		window_width = $(window).width();

		if (window_width >= 992) {
			big_image = $('.wrapper > .header');

			$(window).on('scroll', materialKitDemo.checkScrollForParallax);
		}
	});
</script>
</html>
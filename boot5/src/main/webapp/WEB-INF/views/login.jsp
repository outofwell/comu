<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>JOIN</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

<style>
*{text-decoration: none;}
</style>
<script type="text/javascript" src="resources/jquery-3.1.1.min.js"></script>
<script>
$(function(){
	$("#loginbutton").on('click', function(){
		$.ajax({
			url : "login"
			, type : "post"
			, data : {"userid" : $('#userid2').val(), "password" : $('#password2').val()}
			, success : function(resp) {
				if(resp == "errorMsg") {
					alert("X");
				} else {
					location.href='main';
				}
			}
		});
	});
});
</script>
</head>

<body class="index-page" style="background-image: url('resources/images/galaxy-3.jpg');">
<jsp:include page="navigation.jsp" flush="false"/>

<div class="wrapper" style="background-image: url('resources/images/galaxy-3.jpg');">
	<div class="header" style="background-image: url('resources/images/galaxy-3.jpg'); size:landscape;">
	</div>

	<div class="main main-raised" style="display:block; opacity:0.5; background-origin: border-box;">
		<div class="section section-basic">
	    	<div class="container">
	    		<div class="row" style="opacity:1">
	    		<div class="col-md-12">
	    		<div style="width:600px; margin: auto; border: 3px solid gray; border-radius: 10px; padding: 10px;">
				<h3>LOGIN</h3>
							<div class="content">
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">face</i>
										</span> <input type="text" class="form-control" placeholder="ID"
											name="userid" id="userid2"> 
									</div>
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">lock_outline</i>
										</span> <input type="password" placeholder="Password"
											class="form-control" name="password" id="password2" />
									</div>
							</div>
							<div class="footer text-center">
									<button class="btn btn-primary" id="loginbutton">LOGIN</button>
									<br><a href="find">FIND ID & password</a>
							</div>
					</div>
  	</div>
				</div>

	    	
			</div>
		</div>
		

	</div>
</div>

</body>

	<style>
		.main-raised {
			margin: -550px 30px 0px;
		}
	</style>
</html>

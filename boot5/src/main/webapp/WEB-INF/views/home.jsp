<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<script src="resources/js/jquery-3.1.1.min.js"></script>
<script src="resources/js/qt-main.js"></script>
<title>welcome</title>
</head>

<style>
</style>

<script>
	
</script>

	<body class="index-page">
		<jsp:include page="navigation.jsp" flush="false" />
		<div class="wrapper">
			<div class="header"
				style="background-image: url('resources/images/galaxy.jpg');">
				<div class="qt-particles" id="particlesheader" data-color="#ffffff"
					data-opacity="0.5" data-speed="1"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<div class="brand">
								<h1>COMU</h1>
								<h4>A New Music Creator</h4>
								<br>
								<h3>
									<a href="loginpage" style="color: white; text-decoration:none;">Login</a>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="join" style="color: white; text-decoration:none;">JOIN</a>
								</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
			<c:if test="${loginid!=null}">
				<div class="main main-raised">
				<div class="section section-basic">
			    	<div class="container">
			    		<div class="row">
				    		<div class="col-md-12">
								<h3>MAIN</h3>
			  				</div>
						</div>
		
			    	
					</div>
				</div>
				
			    <footer class="footer">
				    <div class="container">
				    </div>
				</footer>
				</div>
			<style>
			.main-raised {
				margin: -550px 30px 0px;
			}
			</style>
			</c:if>
		</div>
	</body>
</html>

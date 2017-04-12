<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<title>HiCu Testing</title>
</head>

<body class="index-page">
<jsp:include page="navigation.jsp" flush="false"/>

<div class="wrapper">
	<div class="header" style="background-image: url('resources/images/galaxy-3.jpg');">
	</div>

	<div class="main main-raised">
		<div class="section section-basic">
	    	<div class="container">
	    		<div class="row">
					<div class="col-md-6">
						<h3>TEXT</h3><br><br><center>
						<img src="resources/assets/img/mic.png"><br><br>
						<hr>
						<textarea class="form-control" placeholder="Input text" rows="3"></textarea>
						
						<button class="btn btn-primary">▶</button>
						</center>
					</div>
			    	<div class="col-md-6">
			    		<h3>PLAY</h3>
			    		<textarea class="form-control" placeholder="Code Result" rows="8"></textarea>

					</div>
				</div>	
			</div>
		</div>
		
	    <footer class="footer">
		    <div class="container">
		    </div>
		</footer>
	</div>
</div>


</body>
	<style>
		.main-raised {
			margin: -550px 30px 0px;
		}
	</style>
</html>

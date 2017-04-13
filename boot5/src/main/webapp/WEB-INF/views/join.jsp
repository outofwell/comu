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

</head>

<body class="index-page" style="background-image: url('resources/images/galaxy-3.jpg');">
<jsp:include page="navigation.jsp" flush="false"/>

<div class="wrapper" style="background-image: url('resources/images/galaxy-3.jpg');">
	<div class="header" style="background-image: url('resources/images/galaxy-3.jpg'); size:landscape;">
	</div>

	<div class="main main-raised" style="display:block; opacity:0.5;">
		<div class="section section-basic">
	    	<div class="container">
	    		<div class="row">
	    		<div class="col-md-12">
	    		<div style="width:600px; margin: auto; border: 3px solid gray; border-radius: 10px; padding: 10px;">
				<h3>JOIN</h3>
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
					</form>
						<div class="footer text-center">
								<button class="btn btn-primary">JOIN !</button>
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

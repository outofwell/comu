<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="resources/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="resources/assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>HiCu Testing</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="resources/assets/css/material-kit.css" rel="stylesheet"/>

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="resources/assets/css/demo.css" rel="stylesheet" />
	
	<link rel="stylesheet" type="text/css" href="resources/css/main.min.css">
	<script src='resources/js/jaudio.min.js'></script>

	<link href='resources/assets/css/styles.css' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="resources/assets/css/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="shortcut icon" href="resources/assets/img/favicon.ico" type="image/x-icon" />

	<style>
		.main-raised {
			margin: -600px 30px 0px;
		}
	</style>
</head>

<body class="index-page">

<!-- Navbar -->
<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-index">
	        	<span class="sr-only">Toggle navigation</span>
	        	<span class="icon-bar"></span>
	        	<span class="icon-bar"></span>
	        	<span class="icon-bar"></span>
	    	</button>
	    	<a href="#">
	        	<div class="logo-container">
	                <div class="brand">
	                    CoMu
	                </div>
				</div>
	      	</a>
	    </div>

	    <div class="collapse navbar-collapse" id="navigation-index">
	    	<ul class="nav navbar-nav navbar-right">
	    					<li><a href=".">MAIN</a></li>
			            	<li class="active"><a href="comu">COMU</a></li>
                    		<li><a href="hicu">HICU</a></li>
                    		<li><a href="#mypage">MyPage</a></li>
                    		<li><a href="#shared">Shared</a></li>
                            <li><a href="#howto">HOW TO</a></li>
                    		<li><a href="#aboutus">ABOUT US</a></li>
                    		<li><a href="#"></a></li>
                        	<li class="dropdown">
                        		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Login
									<b class="caret"></b>
								</a>
			<ul class="dropdown-menu dropdown-menu-right">
				<li>
					<div class="col-sm-12">
						<div class="content">
							<div class="input-group">
									<span class="input-group-addon">
										<i class="material-icons">face</i>
									</span>
									<input type="text" class="form-control" placeholder="ID">
							</div>
							<div class="input-group">
									<span class="input-group-addon">
										<i class="material-icons">lock_outline</i>
									</span>
									<input type="password" placeholder="Password" class="form-control" />
							</div>
						</div>
						<div class="footer text-center">
								<a href="#pablo" class="btn btn-simple btn-primary btn-lg">
									<button class="btn btn-primary">LOGIN</button>
								</a>
								<hr>
								<a href="#pablo" class="btn btn-simple btn-primary btn-lg">
									<button class="btn btn-primary btn-simple" data-toggle="modal" data-target="#joinModal">JOIN</button><button class="btn btn-primary btn-simple">FIND</button>
								</a>
						</div>
					</div>
				</li>
			</ul>
	    </div>
	</div>
</nav>
<!-- End Navbar -->

<div class="wrapper">
	<div class="header header-filter" style="background-image: url('resources/assets/img/bg2.jpeg');">
	</div>

	<div class="main main-raised">
		<div class="section section-basic">
	    	<div class="container">
	    		<div class="row">
					<div class="col-md-6">	<!-- 왼쪽 -->
						<h3>CODING</h3>
						<div class="row">
							<div class="col-md-10">
								<textarea class="form-control" placeholder="run sample" rows="4"></textarea>
							</div>
							<div class="col-md-2">
								<button class="btn btn-primary">▶</button>
								<button class="btn btn-primary">▼</button>
							</div>
						</div>
						<textarea class="form-control" placeholder="code" rows="10"></textarea>
						
						<div class="row">
							<div class="col-md-10">
								<div id="sliderRegular" class="slider"></div>
							</div>
							<div class="col-md-2">
								<button class="btn btn-primary">▶</button>
							</div>
						</div>
						<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr>
						
					</div>
			    	<div class="col-md-6">	<!-- 오른쪽 -->
			    	<h3>PLAY</h3>
			    	
	
	
	
	
					</div>
				</div>

    <script src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js'></script>
    <script src='resources/js/jaudio.min.js'></script>
    <script src='resources/js/main.js'></script>
	    	
	    	
			</div>
		</div>
		
	    <footer class="footer">
		    <div class="container">
		    </div>
		</footer>
	</div>
</div>

<!-- Start Modal -->
<div class="modal fade" id="joinModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					<i class="material-icons">clear</i>
				</button>
				<h4 class="modal-title">JOIN</h4>
			</div>
			<div class="modal-body">
						<form class="form" method="post" action="join">
							<div class="content">
								<div class="input-group">
									<span class="input-group-addon">
										<i class="material-icons">face</i>
									</span>
									<input type="text" class="form-control" placeholder="ID">
								</div>

								<div class="input-group">
									<span class="input-group-addon">
										<i class="material-icons">email</i>
									</span>
									<input type="text" class="form-control" placeholder="E-MAIL">
								</div>

								<div class="input-group">
									<span class="input-group-addon">
										<i class="material-icons">lock_outline</i>
									</span>
									<input type="password" placeholder="Password.." class="form-control" />
								</div>
								<div class="input-group">
									<span class="input-group-addon">
										<i class="material-icons">lock_outline</i>
									</span>
									<input type="password" placeholder="Password...." class="form-control" />
								</div>

								<!-- If you want to add a checkbox to this form, uncomment this code

						<div class="checkbox">
							<label>
								<input type="checkbox" name="optionsCheckboxes" checked>
								Subscribe to newsletter
							</label>
						</div> -->
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
<!--  End Modal -->






</body>
	<!--   Core JS Files   -->
	<script src="resources/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="resources/assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="resources/assets/js/material.min.js"></script>

	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="resources/assets/js/nouislider.min.js" type="text/javascript"></script>

	<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
	<script src="resources/assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

	<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
	<script src="resources/assets/js/material-kit.js" type="text/javascript"></script>

	<script type="text/javascript">
	
	<script src="resources/assets/js/id3-minimized.js"></script>
	<script src="resources/assets/js/wavesurfer.min.js"></script>
	<script src="resources/assets/js/script.js"></script>

		$().ready(function(){
			// the body of this function is in resources/assets/material-kit.js
			materialKit.initSliders();
            window_width = $(window).width();

            if (window_width >= 992){
                big_image = $('.wrapper > .header');

				$(window).on('scroll', materialKitDemo.checkScrollForParallax);
			}

		});
	</script>
</html>

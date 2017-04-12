
<!doctype html>
<html class="no-js" lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>SONIK HTML TEMPLATE</title>
		<meta name="description" content="The Incredible Music HTML Template">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<link href='resources/https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		<link href='resources/fonts/iconfont/style.css' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="resources/css/qt-main.css"><!-- INCLUDES THE CSS FRAMEWORK VIA #IMPORT AND SASS -->
		<link rel="shortcut icon" type="image/png" href="resources/resources/images/favicon.png"/>
	</head>
	<body class="qt-debug-disabled">
	<!-- QT HEADER END ================================ -->
			
	<!-- ====================== HEADER ================================================ -->
	<header id="home" class="qt-header parallax-container scrollspy" >
		<div class="qt-valign-wrapper">
			<div class="qt-valign">
				<div class="container center-align">
					<img src="resources/images/logo.png" class="logo" alt="Sonik template">
					<h4><a href="#booking" style="color:white;">Logindwdw</a>
							&nbsp;&nbsp;&nbsp;
							<a href="#pablo" style="color:white;" data-toggle="modal" data-target="#joinModal">JOIN</a></h4>
				</div>
			</div>
		</div>
		<div class="qt-particles" id="particlesheader" data-color="#ffffff" data-opacity="0.5" data-speed="1"></div>
	</header> 
	<!-- ====================== HEADER END ================================================ -->

			
	<!-- ====================== MENU ================================================ -->
	<jsp:include page="navigation.jsp" flush="false" />

	<!-- ====================== MENU END ================================================ -->

			<!-- main section  ================================ -->
			<main class="qt-main">
				<!-- ====================== SECTION BOOKING AND CONTACTS ================================================ -->
				<div id="booking" class="section section-booking qt-fullscreen scrollspy  qt-polydecor poly3">
					<div class="qt-valign-wrapper">
						<div class="qt-valign flow-text">
							<h2 class="qt-section-title" data-100p-top="opacity:0;" data-70p-top="opacity:1;">BOOKING<i class="deco"></i></h2>
							<div class="qt-booking-form">
								<ul class="tabs">
							        <li class="tab col s6"><h5><a href="#form" class="active">Booking form</a></h5></li>
							        <li class="tab col s6"><h5><a href="#contacts">Contacts</a></h5></li>
							    </ul>
								<div id="form" class="row">
								    <form class="col s12" method="post" action="email_sender.php">
								    	<input type="hidden" name="antispam" value="x123">
								    	<h4 class="center-align">Get in touch!</h4>
								      	<div class="row">
									        <div class="input-field col s6">
									          <input name="first_name" id="first_name" type="text" class="validate">
									          <label for="first_name">First Name</label>
									        </div>
									        <div class="input-field col s6">
									          <input name="last_name" id="last_name" type="text" class="validate">
									          <label for="last_name">Last Name</label>
									        </div>
								      	</div>
								      	<div class="row">
									        <div class="input-field col s12">
									          <input name="email" id="email" type="email" class="validate">
									          <label for="email">Email</label>
									        </div>
								      	</div>
								      	<div class="row">
									        <div class="input-field col s12">
										      	<textarea name="message" id="message" class="materialize-textarea" maxlength="300"></textarea>
						            			<label for="message">Message</label>
						            		</div>
						            	</div>
						            	<div class="row">
									        <div class="input-field col s12">
										      	<input name="privacy" type="checkbox" id="privacy" value="1" />
				      							<label for="privacy">I red and accept the <a href="#" target="_blank">privacy terms</a>.</label>
						            		</div>
						            	</div>

						            	<div class="row">
									        <div class="input-field col s12">
										      	<p><button class="btn waves-effect waves-light" type="submit" name="action">
											    	<span class="lnr lnr-rocket"></span> Submit
											  	</button></p>
						            		</div>
						            	</div>
								    </form>
							  	</div>
							  	<div id="contacts" class="row qt-contacts">
							  		<div class="col s12">
							  			<h4 class="center-align">Our contacts</h4>
							  			<p><span class="lnr lnr-smartphone"></span><span>+44 443 53 2324</span></p>
							  			<p><span class="lnr lnr-pencil"></span><span>info@bookmenow.com</span></p>
							  			<p><span class="lnr lnr-location"></span><span>Road Avenue, California</span></p>
							  		</div>
							  	</div>
							</div>
				    	</div>
					</div>
				</div>
				<!-- ====================== SECTION BOOKING AND CONTACTS END ================================================ -->

			</main>
			<!-- main section end ================================ -->

			<!-- footer section  ================================ -->
			
	<!-- ====================== FOOTER ================================================ -->
	<footer class="qt-footer parallax-container blue-grey-text text-lighten-5">
		<div class="parallax"><img src="resources/images/galaxy-3.jpg" alt="background"></div>
		<div class="container center-align"  >
			<h3 class="qt-footertitle"><img src="resources/images/logo-footer.png" alt="Sonik Music HTML template"></h3>
			<h5>Copyright 2016 <a href="http://qantumthemes.com">QANTUMTHEMES</a>: TOP MUSIC WEBSITES.</h5>
			<p class="qt-social">
				<a href="#"><span class="qticon-beatport"></span></a>
				<a href="#"><span class="qticon-facebook"></span></a>
				<a href="#"><span class="qticon-twitter"></span></a>
				<a href="#"><span class="qticon-youtube"></span></a>
				<a href="#"><span class="qticon-soundcloud"></span></a>
			</p>
		</div>
		<div class="qt-particles" id="particlesfooter" data-color="#ffffff" data-opacity="0.2" data-speed="1"></div>
	</footer>
	<div class="qt-firefoxfix"></div>
	<!-- ====================== FOOTER END ================================================ -->
		<!-- footer section end  ================================ -->

		<!-- QT FOOTER ================================ -->
		<script src="resources/js/modernizr-custom.js"></script>
		<script src="resources/js/jquery.js"></script><!--  JQUERY VERSION MUST MATCH WORDPRESS ACTUAL VERSION (NOW 1.12) -->
		<script src="resources/js/jquery-migrate.min.js"></script><!--  JQUERY VERSION MUST MATCH WORDPRESS ACTUAL VERSION (NOW 1.12) -->

		<!--  CUSTOM JS LIBRARIES: =========================================================== -->
		<script src="resources/js/materializecss/bin/materialize.min.js"></script>
		<script src="resources/components/slick/slick.min.js"></script>
		<script src="resources/components/skrollr/skrollr.min.js"></script>
		<script src="resources/components/particles/particles.min.js"></script>
		
		<script src="resources/components/swipebox/lib/ios-orientationchange-fix.js"></script>
		<script src="resources/components/swipebox/src/js/jquery.swipebox.min.js"></script>
		
		<!-- MAIN JAVASCRIPT FILE ================================ -->
		<script src="resources/js/qt-main.js"></script>

	</body>
</html>
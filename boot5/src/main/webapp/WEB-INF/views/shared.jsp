<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>SONIK HTML TEMPLATE</title>
		<meta name="description" content="The Incredible Music HTML Template">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	
	    <script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
	    <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
			
		<link href='resources/https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		<link href='resources/components/slick/slick.css' rel='stylesheet' type='text/css'>
		<link href='resources/components/swipebox/src/css/swipebox.min.css' rel='stylesheet' type='text/css'>
		<link href='resources/fonts/iconfont/style.css' rel='stylesheet' type='text/css'>
		<link href='resources/fonts/qticons/qticons.css' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="resources/css/qt-main.css"><!-- INCLUDES THE CSS FRAMEWORK VIA #IMPORT AND SASS -->
		<link rel="shortcut icon" type="image/png" href="resources/resources/images/favicon.png"/>
		
		<style>
		.center{text-align:center;}
		.nav hide-on-med-and-down{    
		margin: 0;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);}
    
		.center, td, tr{
			text-align : center; 
			margin : auto;
		}
		
		.center{
			width: 650px;
		}
		
		td{
			width:80px;
			max-width: 80px;
		}
		.nav hide-on-med-and-down{    
			margin: 0;
		    position: absolute;
		    top: 50%;
		    left: 50%;
		    transform: translate(-50%, -50%);
		}
		
		#div3{
			border: solid 1px black;
		}
		
		#div4{
			background-image: url("resources/covers/trash.png");
			background-size: 10%;
			background-repeat: no-repeat;
			background-position: center;
		}
		
		.font{
			font-size: 14px;
		}
		
		a, a:hover{ text-decoration: none;}

		</style>
		
		<script>
		$(function(){
			
			$('.btn btn-info').sideNav({
				  menuWidth: 300, // Default is 240
				  edge: 'right', // Choose the horizontal origin
				  closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
				}
			  );
		});

		</script>

	</head>
	<body class="qt-debug-disabled">
	<!-- QT HEADER END ================================ -->
				<jsp:include page="navigation.jsp" flush="false" />
	<!-- ====================== MENU ================================================ -->
	<div id="menu" class="qt-menu-wrapper" data-0-top>
		<nav id="stickymenu" class="qt-menu grey-text text-lighten-4"  >
			<!-- desktop menu -->
			<ul class="qt-desktopmenu">
				<li><a href="test">HOME</a></li>
				<li><a href="#presskit">COMU</a></li>
				<li><a href="hicu">HICU</a></li>
				<li><a href="mypage">MYPAGE</a></li>
				<li><a href="shared">SHARED</a></li>
				<li><a href="howto">HOW TO</a></li>
				<li><a href="aboutus">ABOUT US</a></li>
			</ul>
			<!-- mobile menu -->
			<ul id="slide-out" class="side-nav qt-mobilemenu">
				<li><a href="test">Home</a></li>
				<li><a href="#music" class="qwsmoothscroll">Music</a></li>
				<li><a href="#photos" class="qwsmoothscroll">Photos</a></li>
				<li><a href="#bio" class="qwsmoothscroll">Bio</a></li>
				<li><a href="#booking" class="qwsmoothscroll">Booking</a></li>
				<li><a href="#presskit" class="qwsmoothscroll">Presskit</a></li>
				<li><a href="#video" class="qwsmoothscroll">Video</a></li>
			</ul>
			<a href="#" data-activates="slide-out" class="button-collapse qt-menu-switch"><span class="lnr lnr-menu"></span></a>
		</nav>
	</div>
	<!-- ====================== MENU END ================================================ -->


			<!-- main section  ================================ -->
			<main class="qt-main">
				<!-- ====================== SECTION BIOGRAPHY ================================================ -->
				<div id="bio" class="section section-bio parallax-container qt-fullscreen scrollspy" >
					<div class="parallax"><img src="resources/images/galaxy-3.jpg" alt="background"></div>
					<div class="container">
						<div class="qt-framed flow-text"  data-100p-top="opacity:0;" data-80p-top="opacity:0;" data-30p-top="opacity:1;" >
							<h3 class="qt-section-title">shared<i class="deco"></i></h3>
							<div class="content qt-polydecor poly2">
							
							<!-- Collapse -->
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							
							<c:forEach var="board" items="${boardList}" end="0">
								<div class="panel panel-default">
							    <div class="panel-heading" role="tab" id="head${board.boardnum}">
							      <div class="panel-title">
							        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#col${board.boardnum}" aria-expanded="true" aria-controls="col${board.boardnum}">
							         <table class='border' style="table-layout:fixed; margin:-10px;">
								  	 <tr>
									  	 <td rowspan="2" id="imgtable" class='border' style="width:50px; margin:auto; text-align:center;"><img src="resources/covers/${board.cover_re}" alt="image" style="width:50px;height:50px; text-align:center;"></td>
									  	 <td style="text-align:left;"><span style="font-weight: bold;">${board.userid}</span>
									  		<br>${board.title}
									  		<br><span style="color: blue;">Like / Comment</span></td>
									  	 <td>
								  	 </tr>
							  	 	</table>
							        </a>
							      </div>
							    </div>
							    <div id="col${board.boardnum}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="head${board.boardnum}">
							      <div class="panel-body">
							      
							     <table style="table-layout:fixed; margin:-10px;">
							         <tr><td colspan='2'><textarea  class="materialize-textarea" >코드: ${board.content}</textarea></td></tr>
							         <tr><td colspan='2'><textarea  class="materialize-textarea" >내용: ${board.content}</textarea></td></tr>
							      </table>
							      
							       <table class='border' style="table-layout:fixed; margin:-10px;">
								  	 <tr>
									  	 <td id="imgtable" class='border' style="width:50px; margin:auto; text-align:center;">reply ID</td>
									  	 <td style="text-align:left;"><span style="font-weight: bold;">reply content</span>
									  	 <td>
								  	 </tr>
								  	 <tr><td>${board.userid}</td><td nowrap><span style="display:inline;"><input type="text" placeholder="reply" style="width:300px; display:inline;"> <input type="button" value="등록"></span></td></tr>
								  	 
								  	 </table>
								   </div>
							    </div>
							  </div>
							 </c:forEach> 
							  						
							<c:forEach var="board" items="${boardList}" begin="1">
							  <div class="panel panel-default">
							    <div class="panel-heading" role="tab" id="head${board.boardnum}">
							      <div class="panel-title">
							        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#col${board.boardnum}" aria-expanded="false" aria-controls="col${board.boardnum}">
							        <table class='border' style="table-layout:fixed; margin:-10px;">
								  	 <tr>
									  	 <td rowspan="2" id="imgtable" class='border' style="width:50px; margin:auto; text-align:center;"><img src="resources/covers/${board.cover_re}" alt="image" style="width:50px;height:50px; text-align:center;"></td>
									  	 <td style="text-align:left;"><span style="font-weight: bold;">${board.userid}</span>
									  		<br>${board.title}
									  		<br><span style="color: blue;">Like / Comment</span></td>
									  	 <td>
								  	 </tr>
							  	 	</table>
							        </a>
							      </div>
							    </div>
							    <div id="col${board.boardnum}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="head${board.boardnum}">
							      <div class="panel-body">
							      
							     <table style="table-layout:fixed; margin:-10px;">
							         <tr><td colspan='2'><textarea  class="materialize-textarea" >코드: ${board.content}</textarea></td></tr>
							         <tr><td colspan='2'><textarea  class="materialize-textarea" >내용: ${board.content}</textarea></td></tr>
							      </table>
							      
							       <table class='border' style="table-layout:fixed; margin:-10px;">
								  	 <tr>
									  	 <td id="imgtable" class='border' style="width:50px; margin:auto; text-align:center;">reply ID</td>
									  	 <td style="text-align:left;"><span style="font-weight: bold;">reply content</span>
									  	 <td>
								  	 </tr>
								  	 <tr><td>${board.userid}</td><td nowrap><input type="text" placeholder="reply" style="width:300px;"> <input type="button" value="등록"></td></tr>
								  	 
								  	 </table>
								   </div>
							    </div>
							  </div>
							 </c:forEach>
							</div>
							<!-- Collapse END-->
  	
							</div>
						</div>
					</div>
				</div>
				<!-- ====================== SECTION BIOGRAPHY END ================================================ -->

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
		<script src="resources/js/Readmore.js"></script>
		<script>
		    $('#info').readmore({
		      moreLink: '<a href="#">Usage, examples, and options</a>',
		      collapsedHeight: 384,
		      afterToggle: function(trigger, element, expanded) {
		        if(! expanded) { // The "Close" link was clicked
		          $('html, body').animate({scrollTop: element.offset().top}, {duration: 100});
		        }
		      }
		    });
		    $('article').readmore({speed: 500});
 		 </script>
	</body>
</html>
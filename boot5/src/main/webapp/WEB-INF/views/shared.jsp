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

	</body>
</html>
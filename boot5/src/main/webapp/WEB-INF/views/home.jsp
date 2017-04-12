<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<script src="resources/js/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="resources/css/qt-main.css"><!-- INCLUDES THE CSS FRAMEWORK VIA #IMPORT AND SASS -->
		<script src="resources/js/qt-main.js"></script>
<title>HiCu Testing</title>
</head>

<style>
.qt-particles {
  position: absolute;
  top: 0;
  width: 100%;
  height: 100%; }
</style>

<script>

$(function(){
	$.fn.qtparticlesJs = function(){
		if($("body").hasClass("mobile")){
			return;
		}
		$(".qt-particles").each(function(i,c){
			console.log("particlesJs");
			var that= $(this),
				boxid = that.attr("id");
			console.log(boxid);
			particlesJS(boxid, {
				"particles": {
					"number": {
						"value": 160,
						"density": {
							"enable": true,
							"value_area": 800
						}
					},
					"color": {
						"value": !that.attr("data-color") ? "#FFFFFF" : that.attr("data-color")
					},
					"shape": {
						"type": "polygon",
						"stroke": {
							"width": 0,
							"color": "#000000"
						},
						"polygon": {
							"nb_sides": 3
						}
					},
					"opacity": {
						"value":  !that.attr("data-opacity") ? "0.5" : that.attr("data-opacity"),
						"random": true,
						"anim": {
							"enable": true,
							"speed": 1,
							"opacity_min": 0,
							"sync": false
						}
					},
					"size": {
						"value": 5,
						"random": true,
						"anim": {
							"enable": false,
							"speed": 50,
							"size_min": 0.1,
							"sync": false
						}
					},
					"line_linked": {
						"enable": that.attr("data-lines") ? true : false,
						"distance": 150,
						"color": !that.attr("data-color") ? "#FFFFFF" : that.attr("data-color"),
						"opacity": !that.attr("data-opacity") ? "0.5" : that.attr("data-opacity"),
						"width": 1
					},
					"move": {
						"enable": true,
						"speed": !that.attr("data-speed") ? 1 : that.attr("data-speed"),
						"direction": "none",
						"random": true,
						"straight": false,
						"out_mode": "out",
						"bounce": false,
						"attract": {
							"enable": false,
							"rotateX": 600,
							"rotateY": 1200
						}
					}
				},
				"interactivity": {
					"detect_on": "canvas",
					"events": {
						"onhover": {
							"enable": false,
							"mode": "grab"
						},
						"onclick": {
							"enable": true,
							"mode": "push"
						},
						"resize": true
					},
					"modes": {
						"grab": {
							"distance": 140,
							"line_linked": {
								"opacity": 1
							}
						},
						"bubble": {
							"distance": 400,
							"size": 40,
							"duration": 2,
							"opacity": 8,
							"speed": 3
						},
						"repulse": {
							"distance": 200,
							"duration": 0.4
						},
						"push": {
							"particles_nb": 4
						},
						"remove": {
							"particles_nb": 2
						}
					}
				},
				"retina_detect": true
			});
		});
	}
});
</script>

<body class="index-page">
<jsp:include page="navigation.jsp" flush="false"/>
	<div class="wrapper">
		<div class="header" style="background-image: url('resources/images/galaxy-1.jpg'); height:800px;">
<div class="qt-particles" id="particlesheader" data-color="#ffffff" data-opacity="0.5" data-speed="1"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="brand">
							<h1>CO</h1>
							<h4>A New Music Creator</h4>
							<br>
							<h3><a href="#log" style="color:white;">Login</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="#pablo" style="color:white;" data-toggle="modal" data-target="#joinModal">JOIN</a></h3>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="main main-raised">
			<div class="section section-basic">
				<div class="container">
					<div class="row">
						<div class="col-md-6"></div>
						<div class="col-md-6">2번째 칸!!!!<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></div>
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="container"></div>
			</footer>
		</div>
	</div>

</body>
</html>

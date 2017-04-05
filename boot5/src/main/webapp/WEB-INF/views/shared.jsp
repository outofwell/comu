<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <title>Readmore.js: jQuery plugin for long blocks of text</title>
  <meta name="description" content="A smooth, lightweight jQuery plugin for collapsing and expanding long blocks of text with &#8220;Read more&#8221; and &#8220;Close&#8221; links.">
  <meta name="author" content="Jed Foster">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="/node_modules/readmore-js/readmore.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.min.js"></script>


  <style media="screen">
    body { font: 16px/1.5 "Helvetica Neue", Arial, Helvetica, sans-serif; color: #444; }
    code { color: #777; font-family: "Source Code Pro", "Menlo", "Courier New", monospace;}
    a { color: #178DB1; }
    .container { margin: 0 auto; max-width: 960px; }
    #info + .readmore-js-toggle { padding-bottom: 1.5em; border-bottom: 1px solid #999; font-weight: bold;}
    #demo { padding: 0 10%; }
  </style>
</head>


<body class="index-page">
<jsp:include page="navigation.jsp" flush="false"/>

<div class="wrapper">
	<div class="header header-filter" style="background-image: url('resources/assets/img/bg2.jpeg');">
	</div>

	<div class="main main-raised">
		<div class="section section-basic">
	    	<div class="container">
	    		<div class="row">
		    		<div class="col-md-12" style="width:650px;">
		    		<h3>Shared Music</h3>
		    			<!-- 게시글 시작-->
			    		<div class="row" style="border-top: solid lightgray 1px; padding: 10px;">
				    		<div class="col-md-3">
				    		<img src="http://placehold.it/100" />
				    		<button class="btn btn-primary btn-sm">Song1</button>
				    		</div>
				    		<div class="col-md-9">
							  <button class="btn btn-primary btn-xs">Extra Small</button>
							  <article>
						        <p>From this distant vantage point, the Earth might not seem of any particular interest. But for us, it's different. Consider again that dot. That's here. That's home. That's us. On it everyone you love, everyone you know, everyone you ever heard of, every human being who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every "superstar," every "supreme leader," every saint and sinner in the history of our species lived there â€“ on a mote of dust suspended in a sunbeam.</p>
						     	<button class="btn btn-primary btn-sm">구독</button> <button class="btn btn-primary btn-sm">♥</button><br>
						     	<table><tr><td>idid : </td><td>댓글내용~~~~~~~~~~~~~~~</td></tr></table>
						     	<input type="text" placeholder="reply"> <button class="btn btn-primary btn-sm">등록</button>
						      </article>
				    		</div>
			    		</div>
			    		<!-- 게시글 끝 -->
			    		<!-- 게시글 시작-->
			    		<div class="row" style="border-top: solid lightgray 1px; padding: 10px;">
				    		<div class="col-md-3">
				    		<img src="http://placehold.it/100" />
				    		<button class="btn btn-primary btn-sm">Song2</button>
				    		</div>
				    		<div class="col-md-9">
							  <input type="text" value="" placeholder="제목" class="form-control" readonly checked="checked"/>
						      <article>
						        <p>From this distant vantage point, the Earth might not seem of any particular interest. But for us, it's different. Consider again that dot. That's here. That's home. That's us. On it everyone you love, everyone you know, everyone you ever heard of, every human being who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every "superstar," every "supreme leader," every saint and sinner in the history of our species lived there â€“ on a mote of dust suspended in a sunbeam.</p>
						     	<button class="btn btn-primary btn-sm">구독</button> <button class="btn btn-primary btn-sm">♥</button><br>
						     	<table><tr><td>idid : </td><td>댓글내용~~~~~~~~~~~~~~~</td></tr></table>
						     	<input type="text" placeholder="reply"> <button class="btn btn-primary btn-sm">등록</button>
						      </article>
				    		</div>
			    		</div>
			    		<!-- 게시글 끝 -->
			    		
			    		<!-- page navigation start-->
			    		<ul class="pagination pagination-primary">
							<li><a href="#"><</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">></a></li>
						</ul>
						<!-- page navigation end-->
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
		.panel-heading{
		background-color: white;}
		
	</style>
	
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
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

</html>

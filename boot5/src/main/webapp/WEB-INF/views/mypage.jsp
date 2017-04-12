<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />

<title>MY PAGE</title>
<script type="text/javascript" src="resources/jquery-3.1.1.min.js"></script>
<script src="resources/js/Readmore.js"></script>
<script src="/node_modules/readmore-js/readmore.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
			//fileList START======
			$.ajax({
					type : "get",
					url : "fileList",
					success : function(resp) {
						var msg = "<table class='table' id='loadlist'><tr>";
						$.each(
								resp,
								function(index, item) {
									//img 주소 : 테스트용 임시 주소!!
									msg += '<td><img src="resources/covers/'
											+ item.cover_re
											+ '" style="width:60px; height:60px; border-radius:100px;" draggable="true" ondragstart="drag(event)" id='
											+ item.filenum
											+ '><br>';
									msg += '<button class="btn btn-primary btn-xs data-toggle="tooltip" data-placement="top">'
											+ item.file_title
											+ '</button></td>';
									if ((index + 5) % 4 == 0) {
										msg += "</tr><tr>";
									}
								});
						msg += "</tr><table>";
						$("#loader").html(msg);
					}
			});
			//fileList END=====
				
			//boardList START======
			$.ajax({
					type : "get",
					url : "boardList",
					success : function(resp) {
						$.each(resp, function(index, item) {
								var msg ='<div class="row" id="board"><div class="col-md-3">'
								+'<img src="resources/covers/'+item.cover_re+'" style="width: 60px; height: 60px;" /></div><div class="col-md-8">'
								+item.title +'<hr><article>'
								+item.content+'</article>'
								$(".test").append(msg);
						});
					}
			});
			//boardList END=====	
				
	});
		
		
	function allowDrop(ev) {
		ev.preventDefault();
	}
	
	function drag(ev) {
		ev.dataTransfer.setData("text", ev.target.id);
	}
	
	function drop(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		ev.target.appendChild(document.getElementById(data));
		location.href = 'dragwrite?filenum=' + data;
	}
	
	function drop2(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		ev.target.appendChild(document.getElementById(data));
		
		if (confirm("삭제하시겠습니까?")) {
			location.href = 'dragdelete?filenum=' + data;
		} else {
			location.href = 'mypage';
		}
	}
</script>
<style>
#div1, #div2, #div3, #div4 {
	float: left;
	margin: 10px;
	padding: 10px;
	border: 1px solid lightgray;
	border-radius: 5px;
	overflow: auto;
}
#div1 {
	width: 450px;
	height: 300px;
}

#div4{
	background-image: url("resources/covers/trash.png");
	background-size: 50%;
	background-repeat: no-repeat;
	background-position: center;
}

#div2, #div3, #div4 {
	width: 130px;
	height: 110px;
	/*background-image: url("resources/covers/trash.png");*/
}
#board {
	border: solid lightgray 1px;
	padding: 10px;
	border-radius: 5px;
}
td, img {
	text-align: center;
	margin: auto;
}
</style>
</head>

<body class="index-page">
	<jsp:include page="navigation.jsp" flush="false" />

	<div class="wrapper">
		<div class="header header-filter"
			style="background-image: url('resources/assets/img/bg2.jpeg');">
		</div>

		<div class="main main-raised">
			<div class="section section-basic">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<h4>My Files <button class="btn btn-primary btn-xs">edit</button></h4>
							<div id="div1" ondragover="allowDrop(event)">
								<div id="loader"></div>
							</div>
							<br>
							<div>
								<span id="div2"><a href="write">&lt; go write</a></span>
								<span id="div3" ondrop="drop(event)" ondragover="allowDrop(event)">
									Drop & write</span>
								<span id="div4" ondrop="drop2(event)" ondragover="allowDrop(event)"></span>	
							</div>

						</div>
						<div class="col-md-6">
							<!-- 게시글 시작-->
							<h4>My Boards</h4>
							<div class="test"></div>
							<div class="row" id="board">
								<div class="col-md-3">
									<img src="http://placehold.it/80"
										style="width: 80px; height: 80px;" />
								</div>
								<div class="col-md-8">
									board title 1<hr>
									<article>
										<p>From this distant vantage point, the Earth might not
											seem of any particular interest. But for us, it's different.
											Consider again that dot. That's here. That's home. That's us.
											On it everyone you love, everyone you know, everyone you ever
											heard of, every human being who ever was, lived out their
											lives. The aggregate of our joy and suffering, thousands of
											confident religions, ideologies, and economic doctrines,
										</p>
										<button class="btn btn-primary btn-sm">구독</button>
										<button class="btn btn-primary btn-sm">♥</button>
										<br>
										<table>
											<tr>
												<td>id :</td>
												<td>댓글내용~~~~~~~~~~~~~~~</td>
											</tr>
										</table>
										<input type="text" placeholder="reply">
										<button class="btn btn-primary btn-sm">등록</button>
									</article>
								</div>
								<div class="col-md-1"></div>
									<div class="checkbox">
									<label>
										<input type="checkbox" name="optionsCheckboxes"><br>
										Un
									</label>
									</div>
							</div>
						</div>
						<!-- 게시글 끝 -->
					</div>
				</div>

			</div>
		</div>

		<footer class="footer">
			<div class="container"></div>
		</footer>
	</div>
	</div>
</body>
<style>
.main-raised {
	margin: -550px 30px 0px;
}
</style>
<script src="resources/js/Readmore.js"></script>
<script>
	$('#info').readmore({
		moreLink : '<a href="#">Usage, examples, and options</a>',
		collapsedHeight : 384,
		afterToggle : function(trigger, element, expanded) {
			if (!expanded) { // The "Close" link was clicked
				$('html, body').animate({
					scrollTop : element.offset().top
				}, {
					duration : 100
				});
			}
		}
	});
	$('article').readmore({
		speed : 500
	});
</script>
</html>
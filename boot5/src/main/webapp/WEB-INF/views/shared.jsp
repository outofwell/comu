<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>HiC</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />

<style>
* {
	text-decoration: none;
}
</style>

<script type="text/javascript" src="resources/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("button.sub").on("click", function() {
			var board_id = $(this).attr("dd-mm");

			$.ajax({
				method : "GET",
				url : "writeSubscribe",
				data : {
					userid : board_id,
					sub_userid : "${loginId}"
				},
				success : function() {
					alert("sub success");
				},
				error : function() {
					alert("sub error");
				}
			});

			$(this).prop("disabled", true);
		});

		$("button.like").on("click", function() {
			var board_num = $(this).attr("dd-mm");

			var board_id = $(this).attr("likeid");

			$.ajax({
				method : "GET",
				url : "like",
				data : {
					boardnum : board_num,
					userid : board_id,
					like_userid : "${loginId}"
				},
				success : function() {
					alert("like success");
				},
				error : function() {
					alert("like error");
				}
			});
			
			$(this).prop("disabled", true);
		});
	});
</script>

</head>

<body class="index-page">
	<jsp:include page="navigation.jsp" flush="false" />

	<div class="wrapper">
		<div class="header"
			style="background-image: url('resources/images/galaxy-3.jpg');">
		</div>

		<div class="main main-raised">
			<div class="section section-basic">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h3>shared</h3>
							<!-- Collapse -->
							<div class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true" style="width: 600px; margin: auto;">

								<c:forEach var="board" items="${boardList}">
									<div class="panel panel-default">
										<div class="panel-heading" role="tab"
											id="head${board.boardnum}">
											<div class="panel-title">
												<a class="collapsed" role="button" data-toggle="collapse"
													data-parent="#accordion" href="#col${board.boardnum}"
													aria-expanded="false" aria-controls="col${board.boardnum}">
													<table class='border'
														style="table-layout: fixed; margin: -10px;">
														<tr>
															<td rowspan="2" id="imgtable" class='border'
																style="width: 80px; margin: auto; text-align: center;"><img
																src="resources/covers/${board.cover_re}" alt="image"
																style="width: 50px; height: 50px; text-align: center;"></td>
															<td style="text-align: left;"><span
																style="font-weight: bold;">${board.userid}</span> <br>${board.title}
															</td>
														</tr>
													</table>
												</a>
											</div>
										</div>
										<div id="col${board.boardnum}" class="panel-collapse collapse"
											role="tabpanel" aria-labelledby="head${board.boardnum}">
											<div class="panel-body">
												<table>
													<tr>
														<td colspan='2'><textarea class="form-control"
																style="width: 500px;">코드: ${board.content}</textarea></td>
													</tr>
													<tr>
														<td colspan='2'><textarea class="form-control"
																style="width: 500px;">내용: ${board.content}</textarea></td>
													</tr>
													<tr>
														<td><button class="btn btn-primary btn-xs sub"
																dd-mm="${board.userid}">subscribe</button>
															<button class="btn btn-primary btn-xs like"
																dd-mm="${board.boardnum}" likeid="${board.userid}">like</button></td>
													</tr>
													<tr>
														<td id="imgtable" class='border' style="padding: 5px;">reply
															ID</td>
														<td>reply content</td>
													</tr>
													<!-- <tr>
														<td><input type="text" class="form-control"
															placeholder="reply"
															style="width: 400px; display: inline;">
														<td><button>확인</button></td>
													</tr> -->

													<c:forEach var="reply" items="${replyAll}">
														<c:if test="${reply.boardnum == board.boardnum}">
															<tr>
																<td>${reply.userid}</td>
																<td>${reply.replytext}</td>
															</tr>
														</c:if>
													</c:forEach>
												</table>

												<form action="replyWrite" method="get">
													<input type="text" class="form-control" placeholder="reply"
														style="width: 400px; display: inline;" name="replytext"
														id="replytext" /> <input type="hidden" name="boardnum"
														value="${board.boardnum}" /> <input type="submit"
														value="확인" />
												</form>
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
</html>

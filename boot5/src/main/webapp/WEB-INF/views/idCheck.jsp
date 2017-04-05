<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>CoMu</title>
<script type="text/javascript">
	function formCheck() {
		var id = document.getElementById('userid').value;
		/*if (id.length < 3) {
			alert('검색할 ID를 3자 이상 입력하세요.');
			return false;
		} */
		id.focus();
		return true;
	}

	function isSelected(checkId) {
		opener.document.getElementById("userid").value = checkId;
		this.close();
	}
</script>
</head>
<body>
	<h2>[ ID 중복 확인 ]</h2>
	<div>
		<form action="idCheck" method="post" onsubmit="return formCheck()">
			<input type="text" id="userid" name="userid" placeholder="검색할 ID 입력" />
			<input type="submit" value="검색" /><br /> <br />
		</form>
		<c:if test="${not empty checkId}">
			${checkId} : 사용할 수 있는 ID입니다.<br />
			<br />
			<input type="button" value="ID사용하기"
				onclick="isSelected('${checkId}')">
		</c:if>
		<c:if test="${not empty notCheckId}">
			${notCheckId} : 이미 사용중인 ID입니다.
		</c:if>
	</div>
</body>
</html>
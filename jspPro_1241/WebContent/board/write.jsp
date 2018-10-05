<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="../include/header.jsp"%>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
	$(function() {
		$("#btnSave").click(function() {
			document.form1.submit();
		});
	});
</script>
<style type="text/css">
header {
	position: relative;
	height: 50px;
	text-shadow: -3px -3px 3px #cac8c8;
	color: balck;
}

table {
	background-color: #ececec;
	border: 1px solid black;
}

table td {
	border: 1px solid black;
}

#main {
	border: solid 1px white;
}

#navbar-footer {
	background-color: #222;
	color: white;
	height: 75px;
	text-align: center;
}
#container{
    text-align: -webkit-center;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<p class="navbar-brand">라켓모아</p>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="${path}/bootstrap/bootMenu.jsp">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">배드민턴 라켓 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${path}/ractek/yonex.jsp">요넥스</a></li>
						<li><a href="${path}/ractek/victor.jsp">빅터</a></li>
						<li><a href="${path}/ractek/liling.jsp">리닝</a></li>
					</ul></li>
				<li><a href="${path}/board_servlet/list.do">라켓 후기게시판</a></li>
				<li><a href="${path}/guestbook_servlet/list.do">공동구매</a></li>
			</ul>
		</div>
	</nav>

	<div class="container" id="container">

		<header>
			<h3>글쓰기</h3>
		</header>
		<form name="form1" method="post"
			action="${path}/board_servlet/insert.do"
			enctype="multipart/form-data">
			<table>
				<tr>
					<td>작성자</td>
					<td><input name="writer" id="writer"></td>
				</tr>
				<tr>
					<td>라켓 이름</td>
					<td><input name="subject" id="subject" size="60"></td>
				</tr>
				<tr>
					<td>후기</td>
					<td><textarea rows="5" cols="60" name="content" id="content"></textarea></td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td><input type="file" name="file1">(라켓상세정보)</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="passwd" id="passwd"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button" value="확인"
						id="btnSave"></td>
				</tr>
			</table>
		</form>

	</div>

	<div id="navbar-footer">
		<h5>RacketMoa(라켓모아)</h5>
		<h6>주소 : 서울시 강남구 000</h6>
		<h6>전화번호 : 000-0000-0000</h6>
	</div>
</body>
</html>

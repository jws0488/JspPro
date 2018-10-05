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
	function gb_search() {
		document.form1.action = "${path}/guestbook_servlet/list.do";
		document.form1.submit();
	}

	function get() {
		var val = document.getElementById("ex").innerHTML;
		alter(val);
	}

	function set(v) {
		document.getElementById("ex").innerHTML = v;
	}
	function changeImage0() {
		var img = document.getElementById("image");
		img.src = "../images/11.png";
		img.style.width = "500px";
		img.style.height = "450px";
	}
	function changeImage1() {
		var img = document.getElementById("image");
		img.src = "../images/1.jpg";
		img.style.width = "500px";
		img.style.height = "450px";
	}
	function changeImage2() {
		var img = document.getElementById("image");
		img.src = "../images/2.jpg";
		img.style.width = "500px";
		img.style.height = "450px";
	}
	function changeImage3() {
		var img = document.getElementById("image");
		img.src = "../images/3.jpg";
		img.style.width = "500px";
		img.style.height = "450px";
	}
	function changeImage4() {
		var img = document.getElementById("image");
		img.src = "../images/4.jpg";
		img.style.width = "500px";
		img.style.height = "450px";
	}
	function changeImage5() {
		var img = document.getElementById("image");
		img.src = "../images/5.jpg";
		img.style.width = "500px";
		img.style.height = "450px";
	}
	function changeImage6() {
		var img = document.getElementById("image");
		img.src = "../images/6.jpg";
		img.style.width = "500px";
		img.style.height = "450px";
	}
	function changeImage7() {
		var img = document.getElementById("image");
		img.src = "../images/7.jpg";
		img.style.width = "500px";
		img.style.height = "450px";
	}
	function changeImage8() {
		var img = document.getElementById("image");
		img.src = "../images/8.jpg";
		img.style.width = "500px";
		img.style.height = "450px";
	}
</script>
<style type="text/css">
header {
	position: relative;
	height: 85px;
	text-shadow: -3px -3px 3px #cac8c8;
	color: black;
}

table {
	text-align: center;
	background-color: #ececec;
	border: 1px solid black;
}

table td {
	border: 1px solid black;
}

footer {
	height: 100%;
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
			<h2>공동구매</h2>

			<div id="ex">라켓 : 아크세이버 FB</div>
		</header>

		<img id="image" src="../images/11.png" width="500px" height="450px">
		<br> <input type="button" value="아크세이버FB"
			onclick="changeImage0()"> <input type="button"
			value="새로운 내장형T-조인트" onclick="changeImage1()"> <input
			type="button" value="에어로+박스 프레임" onclick="changeImage2()"> <input
			type="button" value="아이소매트릭" onclick="changeImage3()"> <input
			type="button" value="CS카본 나노튜브" onclick="changeImage4()"> <br>
		<input type="button" value="새로운 그로메트 패턴" onclick="changeImage5()">
		<input type="button" value="컨트롤 서포트 캡" onclick="changeImage6()">
		<input type="button" value="솔리드 필 코어" onclick="changeImage7()">
		<input type="button" value="나노메트릭" onclick="changeImage8()"> <br>


		<div id="main">
			<br> (${count}/10)명의 구매희망자가 있습니다.<br> 구매를 희망하시면 글을 남겨 주세요.<br>

			<form name="form1" id="form1" method="post">
				<select name="searchkey" id="searchkey">
					<c:choose>
						<c:when test="${searchkey == 'name'}">
							<option value="name" selected>이름</option>
							<option value="content">주소</option>
							<option value="name_content">이름+주소</option>
						</c:when>

						<c:when test="${searchkey == 'content'}">
							<option value="name">이름</option>
							<option value="content" selected>주소</option>
							<option value="name_content">이름+주소</option>
						</c:when>

						<c:when test="${searchkey == 'name_content'}">
							<option value="name">이름</option>
							<option value="content">주소</option>
							<option value="name_content" selected>이름+주소</option>
						</c:when>
					</c:choose>
				</select> <input name="search" id="search" value="${search}"> <input
					type="button" value="조회" onclick="gb_search()"> <input
					type="button" value="글쓰기"
					onclick="location.href='${path}/guestbook/write.jsp'">
			</form>

			<c:forEach var="dto" items="${list}">
				<form method="post"
					action="${path}/guestbook_servlet/passwd_check.do">

					<input type="hidden" name="idx" value="${dto.idx}">

					<table border="1">
						<tr>
							<td>이름</td>
							<td>${dto.name}</td>
							<td>날짜</td>
							<td>${dto.post_date}</td>
						</tr>
						<tr>
							<td>이메일</td>
							<td colspan="3">${dto.email}</td>
						</tr>
						<tr>
							<td>주소</td>
							<td colspan="4">${dto.content}</td>
						</tr>
						<tr>
							<td colspan="4">비밀번호 <input type="password" name="passwd">
								<input type="submit" value="수정/삭제">
							</td>
						</tr>
					</table>
				</form>
			</c:forEach>

		</div>
	</div>

	<div id="navbar-footer">
		<h5>RacketMoa(라켓모아)</h5>
		<h6>주소 : 서울시 강남구 000</h6>
		<h6>전화번호 : 000-0000-0000</h6>
	</div>
</body>
</html>

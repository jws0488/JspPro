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
<script>
function changeImage0() {
	var img = document.getElementById("image");
	img.src = "../images/yy1.jpg";
	img.style.width = "700px";
	img.style.height = "650px";
}
function changeImage1() {
	var img = document.getElementById("image");
	img.src = "../images/yy2.jpg";
	img.style.width = "700px";
	img.style.height = "650px";
}
function changeImage2() {
	var img = document.getElementById("image");
	img.src = "../images/yy3.jpg";
	img.style.width = "700px";
	img.style.height = "650px";
}

</script>
<style type="text/css">
#div1 {
	background: url('../images/222.PNG') no-repeat left bottom fixed;
	background-size: cover;
	text-align: -webkit-center;
}
#navbar-footer {
   background-color: #222;
   color : white;
   height: 75px;
   text-align: center;
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

	<div id="div1">
		<div data-role="content">
			<div class="choice_list">
			
				<h1>공격형 라켓 추천 리스트</h1>
				    <img id="image" src="../images/yoyo.PNG" width="300px" height="250px"><br>
					<input type="button" value="볼트릭55" onclick="changeImage0()"><br>
					<input type="button" value="아스트록스66" onclick="changeImage1()"><br>
					<input type="button" value="아스트록스88s" onclick="changeImage2()">				
				<br><br>
			</div>
		</div>
	</div>
    <div id="navbar-footer">
	     <h5>RacketMoa(라켓모아)</h5>
         <h6>주소 : 서울시 강남구 000</h6>
         <h6>전화번호 : 000-0000-0000</h6>
	</div>
</body>
</html>

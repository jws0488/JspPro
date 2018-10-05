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

<style type="text/css">
#div1 {
	background: url('../images/222.PNG') no-repeat left bottom fixed;
	background-size: cover;
}

ul {
	list-style-type: circle;
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
			
                <img src="../images/y.PNG">
				<h1>라켓 유형을 선택하세요.</h1>
				<ul>
					<li><h2>
							<a href="${path}/ractek/yo1.jsp" data-transition="slidedown">공격형</a>
						</h2></li>

					<li><h2>
							<a href="${path}/ractek/yo2.jsp" data-transition="slidedown">수비형</a>
						</h2></li>

					<li><h2>
							<a href="${path}/ractek/yo3.jsp" data-transition="slidedown">올라운드형</a>
						</h2></li>
				</ul>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<br><br><br><br><br><br>
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

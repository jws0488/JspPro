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
		comment_list();
		$("#btnSave").click(function() {
			comment_add();
		});
		$("#btnList").click(function() {
			location.href = "${path}/board_servlet/list.do";
		});
		$("#btnReply").click(function() {
			document.form1.action = "${path}/board_servlet/reply.do";
			document.form1.submit();
		});
		$("#btnEdit").click(function() {
			document.form1.action = "${path}/board_servlet/pass_check.do";
			document.form1.submit();
		});
	});
	function comment_add() {
		var param = "board_num=${dto.num}&writer=" + $("#writer").val()
				+ "&content=" + $("#content").val();
		$.ajax({
			type : "post",
			url : "${path}/board_servlet/comment_add.do",
			data : param,
			success : function() {
				$("#writer").val("");
				$("#content").val("");
				comment_list();
			}
		});
	}

	function comment_list() {
		$.ajax({
			type : "post",
			url : "${path}/board_servlet/commentList.do",
			data : "num=${dto.num}",
			success : function(result) {
				$("#commentList").html(result);
			}
		});
	}
</script>
<style type="text/css">
header {
	position: relative;
	height: 50px;
	text-shadow: -3px -3px 3px #cac8c8;
	color: black;
}

footer {
	height: 100%;
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
			<h3>상세화면</h3>
		</header>
		<form name="form1" method="post">
			<table>
				<tr>
					<td>날짜</td>
					<td>${dto.reg_date}</td>
					<td>조회수</td>
					<td>${dto.readcount}</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td colspan="3">${dto.writer}</td>
				</tr>
				<tr>
					<td>라켓 이름</td>
					<td colspan="3">${dto.subject}</td>
				</tr>
				<tr>
					<td>후기</td>
					<td colspan="3">${dto.content}</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td colspan="3"><input type="password" name="passwd"
						id="passwd"> <c:if test="${param.message == 'error' }">
							<span style="color: red">비밀번호가 일치하지 않습니다.</span>
						</c:if></td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td colspan="3">(라켓상세정보) <c:if test="${dto.filesize > 0 }"> ${dto.filename}(${dto.filesize} bytes )
              <a href="${path}/board_servlet/download.do?num=${dto.num}">[다운로드]</a>
						</c:if>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="center"><input type="hidden" name="num"
						value="${dto.num}"> <input type="button" value="수정/삭제"
						id="btnEdit"> <input type="button" value="답변"
						id="btnReply"> <input type="button" value="목록"
						id="btnList"></td>
				</tr>
			</table>
		</form>
		<footer>
			<table>
				<tr>
					<td><input id="writer" placeholder="이름"></td>
					<td rowspan="2">
						<button id="btnSave" type="button">확인</button>
					</td>
				</tr>
				<tr>
					<td><textarea rows="5" cols="80" placeholder="내용을 입력하세요"
							id="content"></textarea></td>
				</tr>
			</table>
		</footer>

		<div id="commentList"></div>
	</div>

	<div id="navbar-footer">
		<h5>RacketMoa(라켓모아)</h5>
		<h6>주소 : 서울시 강남구 000</h6>
		<h6>전화번호 : 000-0000-0000</h6>
	</div>
</body>
</html>

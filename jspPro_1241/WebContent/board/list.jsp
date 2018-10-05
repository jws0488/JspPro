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
		$("#btnWrite").click(function() {
			location.href = "${path}/board/write.jsp";
		});
	});

	function list(page) {
		location.href = "${path}/board_servlet/list.do?curPage=" + page;
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
	border: 2px solid black;
}

table td {
	border: 2px solid black;
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
			<h3>라켓 후기 게시판</h3>
			<form name="form1" method="post"
				action="${path}/board_servlet/search.do">
				<select name="search_option">
					<option value="writer">작성자</option>
					<option value="subject">라켓 이름</option>
					<option value="content">후기</option>
					<option value="all">작성자+라켓 이름+후기</option>
				</select> <input name="keyword">
				<button id="btnSearch">검색</button>
			</form>
		</header>

		<table>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>라켓 이름</th>
				<th>날짜</th>
				<th>조회수</th>
				<th>첨부파일(라켓상세정보)</th>
				<th>다운로드</th>
			</tr>
			<c:forEach var="dto" items="${list}">
				<c:choose>
					<c:when test="${dto.show == 'y'}">
						<tr>
							<td>${dto.num}</td>
							<td>${dto.writer}</td>
							<td><c:forEach var="i" begin="1" end="${dto.re_level}"> &nbsp;&nbsp;</c:forEach>
								<a href="${path}/board_servlet/view.do?num=${dto.num}">${dto.subject}</a>
								<c:if test="${dto.comment_count > 0}">
									<span style="color: red;">(${dto.comment_count})</span>
								</c:if></td>
							<td>${dto.reg_date}</td>
							<td>${dto.readcount}</td>
							<td align="center"><c:if test="${dto.filesize > 0 }">
									<a href="${path}/board_servlet/download.do?num=${dto.num}">
										<img src="../images/file.gif">
									</a>
								</c:if></td>
							<td>${dto.down}</td>
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							<td>${dto.num}</td>
							<td colspan="6" align="center">삭제된 게시물입니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<tr>
				<td colspan="7" align="center"><c:if
						test="${page.curBlock > 1}">
						<a href="#" onclick="list('${page.prevPage}')">[이전]</a>
					</c:if> <c:forEach var="num" begin="${page.blockStart}"
						end="${page.blockEnd}">
						<c:choose>
							<c:when test="${num == page.curPage}">
								<span style="color: red;">${num}</span>
							</c:when>
							<c:otherwise>
								<a href="#" onclick="list('${num}')">${num}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach> <c:if test="${page.curBlock < page.totBlock}">
						<a href="#" onclick="list('${page.nextPage}')">[다음]</a>
					</c:if> <c:if test="${page.curPage < page.totPage}">
						<a href="#" onclick="list('${page.totPage}')">[끝]</a>
					</c:if></td>
			</tr>
		</table>
		<footer>
			<button id="btnWrite">글쓰기</button>
		</footer>

	</div>
	<div id="navbar-footer">
		<h5>RacketMoa(라켓모아)</h5>
		<h6>주소 : 서울시 강남구 000</h6>
		<h6>전화번호 : 000-0000-0000</h6>
	</div>
</body>
</html>

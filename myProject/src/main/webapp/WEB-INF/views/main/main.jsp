<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/top.css">
<title>Insert title here</title>
<script type="text/javascript">
	$(function () {
		$('#footer').load('footer.do')
	});
</script>
</head>
<body>
	<header class="header">
		<div class="h_logo">
			<a href="main.do"><img alt="logo" src="images/logo.png"></a>
		</div>
		<div class="h_menu">
			<ul>
				<li><c:choose>
						<c:when test="${not empty id}">

							<c:choose>
								<c:when test="${id == 'master' }">
									<a href="adminPage.do">관리자 페이지</a>
								</c:when>
								<c:when test="${id != 'master' }">
									<a href="main2.do" id="menu">마이페이지</a>
								</c:when>
							</c:choose>
						</c:when>
						<c:when test="${empty id}">
							<a href="memberForm.do" id="menu">회원가입</a>
						</c:when>
					</c:choose></li>
				<li>|</li>
				<li><c:choose>
						<c:when test="${not empty id}">
							<a href="logout.do" id="menu">로그아웃</a>
						</c:when>
						<c:when test="${empty id}">
							<a href="loginForm.do" id="menu">로그인</a>
						</c:when>
					</c:choose></li>
			</ul>
		</div>
	</header>
	<nav class="navbar">
		<div>
			<a href="#">☰</a>
		</div>
		<ul>
			<li class="dropdown"><a href="#">병원소개</a>
				<ul class="dd_menu">
					<li><a href="#">인사말/연혁</a></li>
					<li><a href="#">의료진 소개</a></li>
					<li><a href="#">병원 둘러보기</a></li>
					<li><a href="#">찾아오는 길</a></li>
				</ul></li>
			<li class="dropdown"><a href="#">건강검진</a>
				<ul class="dd_menu">
					<li><a href="#">건강진단 프로그램</a></li>
					<li><a href="#">건강진단 순서안내</a></li>
					<li><a href="#">건강진단 전 유의사항</a></li>
					<li><a href="#">검진 후 연계(클리닉)</a></li>
				</ul></li>
			<li class="dropdown"><a href="#">검진예약</a>
				<ul class="dd_menu">
					<li><a href="reservForm.do?id=${id }">예약</a></li>
					<li><a href="reservList.do?id=${id }">예약조회/취소</a></li>
				</ul></li>
			<li class="dropdown"><a href="#">나눔소통</a>
				<ul class="dd_menu">
					<li><a href="#">공지사항</a></li>
					<li><a href="#">문의사항</a></li>
					<li><a href="#">자유게시판</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="footer"></div>
</body>
</html>
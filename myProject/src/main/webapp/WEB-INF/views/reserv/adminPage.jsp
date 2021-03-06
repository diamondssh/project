<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/top.css">
<title>관리자페이지</title>
</head>
<body>
	<header class="header">
		<div class="h_logo">
			<a href="#"><img alt="logo" src="images/logo.png"></a>
		</div>
		<div class="h_menu">
			<ul>
				<li><a href="memberList.do" id="menu">회원목록</a></li>
				<li>|</li>
				<li><a href="reservAdmin.do" id="menu">예약목록</a></li>
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
					<li><a href="reservList.do">예약조회/취소</a></li>
				</ul></li>
			<li class="dropdown"><a href="#">나눔소통</a>
				<ul class="dd_menu">
					<li><a href="#">공지사항</a></li>
					<li><a href="#">문의사항</a></li>
					<li><a href="#">자유게시판</a></li>
				</ul></li>
		</ul>
	</nav>
</body>
</html>
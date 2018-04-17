<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../sessionChk.jsp"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/test11.css">
</head>
<body>
	<div class="h_logo">
		<a href="main.do"><img alt="logo" src="images/logo.png"></a>
	</div>
	<div class="header">
		<h1>마이페이지</h1>
		<p>호갱님 혼저옵서예</p>
	</div>
	<div class="topnav">
		<a href="logoutForm.do" class="nav_link">로그아웃</a> <a
			href="reservAdmin.do" class="nav_link">관리자예약</a> <a
			href="memberDelete.do?id=${id }" class="nav_link">회원탈퇴</a> <a
			href="reservList.do?id=${id }" class="nav_link">예약</a> <a
			href="memberUpForm.do?id=${id}" class="nav_link">회원정보수정</a>
	</div>
	<div class="row">
		<div class="column">
			<h2>공지사항</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
		</div>
		<div class="column">
			<h2>건강정보꿀팁</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../sessionChk.jsp"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/test11.css">
<script type="text/javascript">
	$(function () {
		$('#top').load('top.do')
	});
</script>
</head>
<body>
	<div id="top"></div>
	<div class="header" ></div>
	<div class="memberInfo">
		<h1>마이페이지</h1>
		<p>호갱님 혼저옵서예</p>
	</div>
	
	<div class="article">
		<div class="column1">
			<table class="table striped">
			<tr>
				<th>번호</th>
				<th>신청인</th>
				<th>신청인(id)</th>
				<th>예약항목</th>
				<th>예약날짜</th>
				<th>예약시간</th>
				<th>신청날짜</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			</table>
		</div>
		
	</div>
</body>
</html>
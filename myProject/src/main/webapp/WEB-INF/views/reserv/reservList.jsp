<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sessionChk.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container" align="center">
		<h2 class="text-primary">예약 목록</h2>
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
			<c:if test="${empty list}">
				<tr>
					<th colspan="9">데이터가 없습니다</th>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
				<c:forEach var="reserv" items="${list}">
					<tr>
						<td>${no}</td>
						<td>${reserv.name}</td>
						<td>${reserv.id}</td>
						<td>${reserv.department}</td>
						<td>${reserv.rdate}</td>
						<td>${reserv.rtime}</td>
						<td>${reserv.applydate}</td>
						<td><a class="btn btn-sm btn-warning"
							href="updateForm.do?rno=${reserv.rno}">변경</a></td>
						<td><a class="btn btn-sm btn-danger"
							href="delete.do?rno=${reserv.rno}">예약취소</a></td>

					</tr>
					<c:set var="no" value="${no + 1 }"></c:set>
				</c:forEach>

			</c:if>
		</table>
		<a class="btn btn-info" href="reservForm.do?id=${id }">예약 하기</a> <a
			class="btn btn-danger" href="main.do?id=${id }">메인화면 가기</a>
	</div>

</body>
</html>
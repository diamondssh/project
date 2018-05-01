<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
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
			<c:if test="${pp.total == 0}">
				<tr>
					<th colspan="9">데이터가 없습니다</th>
				</tr>
			</c:if>
			<c:if test="${pp.total > 0}">
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
					<c:set var="no" value="${no - 1 }"></c:set>
				</c:forEach>

			</c:if>
		</table>
		<div align="center">
			<ul class="pagination">

				<c:if test="${pp.startPage > pp.pagePerBlock }">
					<li><a href="reservListAll.do?pageNum=${pp.startPage-1}">
							<span class="glyphicon glyphicon-triangle-left"></span>
					</a></li>
				</c:if>
				<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage }">
					<c:if test="${pp.currentPage==i }">
						<li class="active"><a href="reservListAll.do?pageNum=${i}">${i}</a></li>
					</c:if>
					<c:if test="${pp.currentPage!=i }">
						<li><a href="reservListAll.do?pageNum=${i}">${i}</a></li>
					</c:if>
				</c:forEach>
				<c:if test="${pp.endPage < pp.totalPage }">
					<li><a href="reservListAll.do?pageNum=${pp.endPage+1}"> <span
							class="glyphicon glyphicon-triangle-right"></span>
					</a></li>
				</c:if>


			</ul>
		</div>
	</div>

</body>
</html>
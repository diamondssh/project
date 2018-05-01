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
		<h2 class="text-primary">회원 목록</h2>
		<table class="table striped">
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>전화</th>
				<th>주소</th>
				<th>성별</th>
				<th>가입일</th>
				<th>탈퇴여부</th>
				<th colspan="2">권한</th>
			</tr>
			<c:if test="${pp.total == 0}">
				<tr>
					<th colspan="9">데이터가 없습니다</th>
				</tr>
			</c:if>
			<c:if test="${pp.total > 0 }">
				<c:forEach var="member" items="${list}">
					<tr>
						<td>${no}</td>
						<td>${member.id}</td>
						<td>${member.name}</td>
						<td>${member.birthday}</td>
						<td>${member.tel}</td>
						<td>${member.addr}</td>
						<td>${member.gender}</td>
						<td>${member.reg_date}</td>
						<td>${member.del}</td>
						<td><a class="btn btn-sm btn-warning"
							href="mupdateUpForm.do?id=${member.id}">회원정보수정</a></td>
						<td><a class="btn btn-sm btn-danger"
							href="memberDelete.do?mno=${member.mno}">회원탈퇴</a></td>

					</tr>
					<c:set var="no" value="${no - 1 }"></c:set>
				</c:forEach>

			</c:if>
		</table>

		<div align="center">
			<ul class="pagination">

				<c:if test="${pp.startPage > pp.pagePerBlock }">
					<li><a href="memberList.do?pageNum=${pp.startPage-1}"> <span
							class="glyphicon glyphicon-triangle-left"></span>
					</a></li>
				</c:if>
				<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage }">
					<c:if test="${pp.currentPage==i }">
						<li class="active"><a href="memberList.do?pageNum=${i}">${i}</a></li>
					</c:if>
					<c:if test="${pp.currentPage!=i }">
						<li><a href="memberList.do?pageNum=${i}">${i}</a></li>
					</c:if>
				</c:forEach>
				<c:if test="${pp.endPage < pp.totalPage }">
					<li><a href="memberList.do?pageNum=${pp.endPage+1}"> <span
							class="glyphicon glyphicon-triangle-right"></span>
					</a></li>
				</c:if>


			</ul>
		</div>
		<a class="btn btn-info" href="reservForm.do">예약 하기</a> <a
			class="btn btn-danger" href="main.do">메인화면 가기</a>
	</div>

</body>
</html>
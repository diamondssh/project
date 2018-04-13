<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="container">
<h2 class="text=primary">게시글 목록</h2>
<table class="table table-hover">
	<tr><th>번호</th><th>제목</th><th>작성자</th><th>조회수</th><th>작성일</th></tr>
	<c:if test="${empty list}">
	<tr><th colspan="5">데이터가 없습니다</th></tr>
</c:if>
<c:if test="${not empty list}">
	<c:forEach var="board" items="${list}">
		<tr><td>${board.bno}</td><!--  번호-->
			<td>${board.subject}</td> <!--  제목-->
			<td>${board.writer }</td><!-- 작성자 -->
			<td>${board.readcount }</td><!--  조회수-->
			<td>${board.reg_date }</td></tr> <!--작성일  -->
	</c:forEach>
</c:if>
</table>
<a class="btn btn-info" href="insertForm.do">글 입력</a>
</div>
</body>
</html>



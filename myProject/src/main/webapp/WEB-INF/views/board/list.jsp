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
	<c:if test="${pp.total == 0}">
	<tr><th colspan="5">데이터가 없습니다</th></tr>
</c:if>
<c:if test="${pp.total > 0 }">
	<c:forEach var="board" items="${list}">
		<tr><td>${no}</td><!--  번호-->
			<td><a class="btn btn-sm btn-success"
				href="view.do?bno=${board.bno}&pageNum=${pp.currentPage}">${board.subject}</a></td> <!--  제목-->
			<td>${board.writer }</td><!-- 작성자 -->
			<td>${board.readcount }</td><!--  조회수-->
			<td>${board.reg_date }</td></tr> <!--작성일  -->
			<c:set var="no" value="${no - 1}"></c:set>
	</c:forEach>
</c:if>
</table>
<input type="hidden" name="pageNum" value="1">
<div align="center">
<ul class="pagination">
	
		<c:if test="${pp.startPage > pp.pagePerBlock }">
			<li><a href="list.do?pageNum=${pp.startPage-1}">
				<span class="glyphicon glyphicon-triangle-left"></span>
			</a></li>
		</c:if>
		<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage }">
			<c:if test="${pp.currentPage==i }">
				<li class="active">
					<a href="list.do?pageNum=${i}">${i}</a></li>
			</c:if>
			<c:if test="${pp.currentPage!=i }">
				<li><a href="list.do?pageNum=${i}">${i}</a></li>
			</c:if>						 
		</c:forEach>
		<c:if test="${pp.endPage < pp.totalPage }">
			<li><a href="list.do?pageNum=${pp.endPage+1}">
				<span class="glyphicon glyphicon-triangle-right"></span>
			</a></li>
		</c:if>	
		
	</ul>	
</div>
<a class="btn btn-info" href="insertForm.do">글 입력</a>
</div>
</body>
</html>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../sessionChk.jsp"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h2 class="text-primary">게시판 글쓰기</h2>
<form action="freeBoardInsert.do" method="post">
	<input type="hidden" name="bno" value="${bno}">
	<input type="hidden" name="pageNum" value="${pageNum}"> 
	<input type="hidden" name="id" value="${id }">
 <table class="table table-bordered">
 <tr><th>제목</th><td><input type="text" name="subject" required="required" autofocus="autofocus"></td></tr>
 <tr><th>암호</th><td><input type="password" name="passwd" required="required"></td></tr>
 <tr><th>내용</th><td><textarea rows="5" cols="30" name="content" required="required"></textarea></td></tr>
 <tr><th colspan="2"><input type="submit" value="확인"></th></tr>
 </table>
 </form>
 </div>
</body>
</html>
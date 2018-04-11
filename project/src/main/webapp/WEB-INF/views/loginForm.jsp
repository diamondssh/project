<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container" align="center">
<h2 class="text-primary">로그인</h2>
<form action="login.do">
	<table class="table">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" required="required" autofocus="autofocus"></td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td><input type="password" name="passwd" required="required"></td>
		</tr>
		<tr>
			<th colspan="2">
			<input type="submit" value="확인"></th>
		</tr>
	</table>
	<a href="#">아이디/비번찾기</a><a href="#">회원가입</a>
</form>
</div>
</body>
</html>
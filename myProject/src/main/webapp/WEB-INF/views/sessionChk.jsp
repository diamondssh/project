<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="id" value="${sessionScope.id}"></c:set>
	<c:if test="${empty id }">
		<script type="text/javascript">
		alert("로그인 후 이용 가능합니다.");
			location.href = "loginForm.do";
		</script>
	</c:if>
	${id }님 환영합니다

</body>
</html>
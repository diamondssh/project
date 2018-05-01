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

	<c:if test="${list == null || list.size() == 0 }">
		<script type="text/javascript">
			alert("예약 이 완료되었습니다.");
			location.href = "reservList.do?id=${id}";
		</script>
	</c:if>
	<c:if test="${list.size() >= 1 }">
		<script type="text/javascript">
			alert("이미 예약되어 있습니다");
			history.go(-1);
		</script>
	</c:if>

</body>
</html>
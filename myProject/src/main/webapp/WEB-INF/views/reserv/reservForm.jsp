<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sessionChk.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="container">
		<h2 class="text-primary">검진 예약하기</h2>
		<form action="reservInsert.do">
			<input type="hidden" name="id" value="${id }">
			<table class="table table-bordered">

				<tr>
					<th>예약항목</th>
					<td><select name="department">
							<option value="위암">위암</option>
							<option value="유방암">유방암</option>
							<option value="자궁경부암">자궁경부암</option>
							<option value="간암">간암</option>
							<option value="당뇨">당뇨</option>
							<option value="비만">비만</option>
							<option value="빈혈">빈혈</option>
							<option value="질환">간 질환</option>
							<option value="신장질환">신장질환</option>
							<option value="구강검진">구강검진</option>
							<option value="우울증">우울증</option>
							<option value="골다공증">골다공증</option>
					</select></td>
				</tr>

				<tr>
					<th>예약날짜</th>
					<td><input type="date" name="rdate" required="required"></td>
				</tr>

				<tr>
					<th>예약시간</th>
					<td><select name="rtime">
							<option value="11:00">오전 11시</option>
							<option value="13:00">오후 1시</option>
							<option value="14:00">오후 2시</option>
							<option value="15:00">오후 3시</option>
					</select></td>

				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="확인"></th>
				</tr>

			</table>
		</form>
	</div>


</body>
</html>
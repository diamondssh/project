<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function idChk() {
		
	}
	function passChk() {
		if (frm.pw.value != frm.pw2.value) {
			alert("암호가 다릅니다. 다시 입력바랍니다.");
			frm.pw.focus();
			frm.pw.value="";
			return false;
		}
	}
</script>
</head>
<body>
<div class="container" align="center">
<form action="memInsert.do" name="frm" onsubmit="return passChk()">
<h2 class="text-primary text-center">회원 가입</h2>
<table class="table table-bordered">
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id" required="required" autofocus="autofocus">
			<input type="button" id="idChk" value="중복확인" required="required"></td>
	</tr>
	<tr>
		<th>암호</th>
		<td><input type="password" name="pw" required="required"></td>
	<tr>
	<tr>
		<th>암호확인</th>
		<td><input type="password" name="pw2" required="required"></td>
	<tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" required="required"></td>
	<tr>
	<tr>
		<th>성별</th>
		<td>
			<label for="g1">남자</label>
			<input type="radio" name="gen" value="남자" id="g1">
			<label for="g2">여자</label>
			<input type="radio" name="gen" value="여자" id="g2">
		</td>
	<tr>
	<tr>
		<th>생년월일</th>
		<td><input type="date" name="birthday"></td>
	</tr>
	<tr>
		<th>전화</th>
		<td><input type="tel" name="tel" pattern="\d{3}-\d{3,4}-\d{4}" 
				placeholder="000-0000-0000" required="required"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="email" name="email" required="required"></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="addr" required="required"></td>
	</tr>
</table>
<input type="submit" value="가입하기">
</form>
</div>
</body>
</html>
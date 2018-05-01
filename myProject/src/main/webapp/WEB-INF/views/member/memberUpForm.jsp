<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sessionChk.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if (frm.pw.value != frm.pw2.value) {
			alert("암호가 암호확인과 다릅니다");
			frm.pw.focus();
			frm.pw.value = "";
			return false;
		}

	}
</script>
</head>
<body>
	<div class="container">
		<form action="memberUpdate.do" name="frm" onsubmit="return chk()">
			<input type="hidden" name="id" value="${member.id}">
			<h2 class="text-primary">부서정보 수정</h2>
			<table class="table table-hover">
				<tr>
					<th>아이디</th>
					<td>${member.id }</td>
				</tr>
				<tr>
					<th>암호</th>
					<td><input type="password" name="pw" required="required"
						value="${member.pw}"></td>
				</tr>

				<tr>
					<th>암호확인</th>
					<td><input type="password" name="pw2" required="required"
						value="${member.pw}"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" required="required"
						value="${member.name}"></td>
				</tr>

				<tr>
					<th>생년월일</th>
					<td><input type="date" name="birthday" required="required"
						value="${member.birthday}"></td>
				</tr>
				<tr>
					<th>전화</th>
					<td><input type="tel" name="tel" required="required"
						placeholder="000-0000-0000" pattern="\d{3}-\d{3,4}-\d{4}"
						value="${member.tel}"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="addr" required="required"
						value="${member.addr}"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><select name="gender">
							<option value="남자">남자</option>
							<option value="여자">여자</option>

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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
    <%@ include file="../sessionChk.jsp"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
 	$(function() {
		$('#rlist').load('freeBoardRlist.do?bno=${fboard.bno}');
		$('#list').load('freeBoardList.do?pageNum=${pageNum}');
		$('#repInsert').click(function() {
			if (!frm.replytext.value) {
				alert("댓글 입력 후 확인을 누르세요");
				frm.replytext.focus();
				return false;
			}
			var frmData = $('#frm').serialize();
			$.post('rInsert.do', frmData, function(data) {
				$('#rlist').html(data);
				frm.replytext.value = "";
			});
		});
	});
 
</script>
</head>
<body>
<div class="container">
<div id="top"></div>
	<h2 class="text-primary">게시글 상세정보</h2>
<table class="table table-striped">
	<tr><th>제목</th><td>${fboard.subject }</td></tr>
	<tr><th>작성자</th><td>${fboard.writer }</td></tr>
	<tr><th>조회수</th><td>${fboard.readcount }</td></tr>
	<tr><th>내용</th><td><pre>${fboard.content }</pre></td></tr>

</table>
<a class="btn btn-warning" href="freeBoardUpdateForm.do?bno=${fboard.bno }&pageNum=${pageNum}">수정</a>
<a class="btn btn-danger" href="freeBoardDeleteForm.do?bno=${fboard.bno }&pageNum=${pageNum}">삭제</a>
<a class="btn btn-default" href="freeBoardList.do?pageNum=${pageNum }">목록</a>
<p>
<form name="frm" id="frm">
			<input type="hidden" name="replyer" value="${fboard.writer }">
			<input type="hidden" name="rbno" value="${fboard.bno }"> 댓글 :
			<textarea rows="3" cols="50" name="replytext"
				placeholder="댓글을 입력하세요."></textarea>
			<input type="button" value="OK" id="repInsert">
			<!-- 버튼처리 한이유는 아작스로 하기 위해서 -->
		</form>
	<div id="rlist"></div><p>
	<div id="list"></div><p>	

</div>
</body>
</html>
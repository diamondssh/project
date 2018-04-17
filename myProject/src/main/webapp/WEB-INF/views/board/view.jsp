<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
 	$(function() {
		$('#list').load('list.do?pageNum=${pageNum}')
		$('#rlist').load('rlist.do?bno=${board.bno}');
	});
 
</script>
</head>
<body>
<div class="container">
	<h2 class="text-primary">게시글 상세정보</h2>
<table class="table table-striped">
	<tr><th>제목</th><td>${board.subject }</td></tr>
	<tr><th>작성자</th><td>${board.writer }</td></tr>
	<tr><th>조회수</th><td>${board.readcount }</td></tr>
	<tr><th>내용</th><td><pre>${board.content }</pre></td></tr>

</table>
<a class="btn btn-warning" href="updateForm.do?bno=${board.bno }&pageNum=${pageNum}">수정</a>
<a class="btn btn-danger" href="deleteForm.do?bno=${board.bno }&pageNum=${pageNum}">삭제</a>
<a class="btn btn-default" href="list.do?pageNum=${pageNum }">목록</a>
<p>
<form name="frm" id="frm">
			<input type="hidden" name="replyer" value="${board.writer }">
			<input type="hidden" name="rbno" value="${board.bno }"> 댓글 :
			<textarea rows="3" cols="50" name="replytext"
				placeholder="댓글을 입력하세요."></textarea>
			<input type="button" value="OK" id="repInsert">
			<!-- 버튼처리 한이유는 아작스로 하기 위해서 -->
		</form>
	<div id="rlist"></div>
	<div id="list"></div>		
</div>
</body>
</html>
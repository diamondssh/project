<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	function lst(bno) {
		$('#rlist').load('rlist/bno'+rbno);
	
	}
	
</script>
</head>
<body>
	<div class="container">
		<h3>
			<span class="label label-danger">댓글</span>
		</h3>
		<table class="table table-boarded">
			<tr>
				<th>작성자</th>
				<th>내용</th>
				<th>권한</th>
			</tr>
			<c:forEach var="rb" items="${rlist}">
				<tr>
					<c:if test="${rb.rno==0 }">
						<th colspan="3">게시글이 없습니다</th>
					</c:if>
					<c:if test="${rb.rno >= 0 }">
						<td>${rb.replyer }</td>
						<td id="td_${rb.rno}">${rb.replytext}</td>
						<td id="btn_${rb.rno}">
						<!-- 실제는 로그인 한 아이디와 댓글 아이디와 비교 하는게 맞다. -->
							<%-- <c:if test="${rb.replyer==board.writer }">
								<input type="button" value="수정"
									onclick="rUpdate(${rb.rno},${rb.bno })">
								<input type="button" value="삭제"
									onclick="rDelete(${rb.rno},${rb.bno })">
							</c:if></td> --%>
					</c:if>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
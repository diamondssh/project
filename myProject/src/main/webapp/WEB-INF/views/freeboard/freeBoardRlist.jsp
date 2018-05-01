<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	function lst(rbno) {
		$('#rlist').load('freeBoardRlist.do?bno='+rbno);
	}
	function rUpdate(rno, rbno) {
		var txt = $('#td_'+rno).text();
		$('#td_'+rno).html(
		  '<textarea name="replytext" cols="30" rows="3" id="rt">'
		  +txt+'</textarea>');
		 $('#btn_'+rno).html(
			'<input type="button" value="확인" onclick="up('+
				rno+','+rbno+
			')"><input type="button" value="취소" onclick="lst('+
					rbno+')">');  
	}
	function rDelete(rno,rbno){
		var frmData = "rno="+rno+"&rbno="+rbno;
		$.post('rDelete.do',frmData, function(data){
			alert("삭제되었습니다.");
			$('#rlist').html(data);
		});
		
	}
	function up(rno,rbno) {
		var replytext = $('#rt').val();
		var frmData="rno="+rno+"&rbno="+rbno+"&replytext="+replytext;
		$.post('rUpdate.do',frmData, function(data) {
			alert("수정 되었습니다");
			$('#rlist').html(data);
		
		});
		
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
			<c:if test="${empty rlist }">
				<th colspan="3">댓글이 없습니다</th>
			</c:if>

			<c:forEach var="rb" items="${rlist}">
				<tr>
					<c:if test="${not empty rlist }">
						<td>${rb.replyer }</td>
						<td id="td_${rb.rno}">${rb.replytext}</td>
						<td id="btn_${rb.rno}">
							<!-- 실제는 로그인 한 아이디와 댓글 아이디와 비교 하는게 맞다. --> <c:if
								test="${rb.replyer==fboard.writer }">
								<input type="button" value="수정"
									onclick="rUpdate(${rb.rno},${rb.rbno })">
								<input type="button" value="삭제"
									onclick="rDelete(${rb.rno},${rb.rbno })">
							</c:if>
						</td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sessionChk.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href=”./css/bootstrap.vertical-tabs.css” rel=”stylesheet”>
<link href=”./css/bootstrap.vertical-tabs.min.css” rel=”stylesheet”>
<script type="text/javascript">
	$(function() {
		$('#update').load('memberUpForm.do');
		$('#relist').load('reservList.do');

	});
</script>
</head>
<style>
</style>
<body>
	<article>
		<div class="container">
			<!-- 제목 -->
			<div class="page-header">
				<h1>마이페이지</h1>
			</div>
			<!-- 제목 -->
			<!-- 메뉴바 + 본문 -->
			<div class="row">
				<!-- 메뉴바  왼쪽정렬 -->
				<div class="col-md-3">
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#tab1" data-toggle="pill">예약
								내역</a></li>
						<li><a href="#tab2" data-toggle="pill">회원정보 수정</a></li>
					</ul>
				</div>
				<!-- 메뉴바  왼쪽정렬 -->
				<!-- 본문 오른쪽 정렬 -->
				<div class="col-md-9">
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">
							<!-- 사이트 경로 설정 -->
							<div class="route">
								<ul class="breadcrumb">
									<li><a href="main.do"><span
											class="glyphicon glyphicon-home"></span></a><span class="divider"></span></li>
									<li><a href="mypage.do">마이페이지</a><span class="divider"></span></li>
									<li class="active">예약 내역</li>
								</ul>
							</div>
							<!-- 본문 -->
							
							<div class="relist"></div>
						</div>
						<div class="tab-pane" id="tab2">
							<!-- 사이트 경로 설정 -->
							<div class="route">
								<ul class="breadcrumb">
									<li><a href="main.do"><span
											class="glyphicon glyphicon-home"></span></a><span class="divider"></span></li>
									<li><a href="mypage.do">마이페이지</a><span class="divider"></span></li>
									<li class="active">회원정보 수정</li>
								</ul>
							</div>
							<!-- 본문 -->
							<div id="update"></div>
						</div>
					</div>
				</div>
				<!-- 본문 오른쪽 정렬 -->
			</div>
			<!--메뉴바 + 본문-->
		</div>
	</article>
</body>
</html>
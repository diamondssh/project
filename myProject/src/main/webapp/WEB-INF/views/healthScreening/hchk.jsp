<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href=”./css/bootstrap.vertical-tabs.css” rel=”stylesheet”>
<link href=”./css/bootstrap.vertical-tabs.min.css” rel=”stylesheet”>
<script type="text/javascript">
	$(function() {
		$('#content2').hide();

		$('#btn_M').click(function() {
			$('#content1').show();
			$('#content2').hide();
		});

		$('#btn_W').click(function() {
			$('#content2').show();
			$('#content1').hide();
		});
	});
	$(function() {
		$('#content5').hide();
		$('#content6').hide();
		$('#content7').hide();

		$('#btn_c4').click(function() {
			$('#content4').show();
			$('#content5').hide();
			$('#content6').hide();
			$('#content7').hide();
		});

		$('#btn_c5').click(function() {
			$('#content5').show();
			$('#content4').hide();
			$('#content6').hide();
			$('#content7').hide();
		});
		$('#btn_c6').click(function() {
			$('#content6').show();
			$('#content4').hide();
			$('#content5').hide();
			$('#content7').hide();
		});
		$('#btn_c7').click(function() {
			$('#content7').show();
			$('#content4').hide();
			$('#content5').hide();
			$('#content6').hide();
		});
	});
	$(function() {
		$('#contents').hide();
		$('#contentd').hide();
		$('#contentf').hide();

		$('#btn_a').click(function() {
			$('#contenta').show();
			$('#contents').hide();
			$('#contentd').hide();
			$('#contentf').hide();
		});

		$('#btn_s').click(function() {
			$('#contents').show();
			$('#contenta').hide();
			$('#contentd').hide();
			$('#contentf').hide();
		});
		$('#btn_d').click(function() {
			$('#contentd').show();
			$('#contenta').hide();
			$('#contents').hide();
			$('#contentf').hide();
		});
		$('#btn_f').click(function() {
			$('#contentf').show();
			$('#contenta').hide();
			$('#contents').hide();
			$('#contentd').hide();
		});
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
				<h1>건강검진</h1>
			</div>
			<!-- 제목 -->
			<!-- 메뉴바 + 본문 -->
			<div class="row">
				<!-- 메뉴바  왼쪽정렬 -->
				<div class="col-md-3">
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#tab1" data-toggle="pill">건강진단
								프로그램</a></li>
						<li><a href="#tab2" data-toggle="pill">건강진단 순서안내</a></li>
						<li><a href="#tab3" data-toggle="pill">건강진단 전 유의사항</a></li>
						<li><a href="#tab4" data-toggle="pill">검진 후 연계(클리닉)</a></li>
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
									<li><a href="hchk.do">건강검진</a><span class="divider"></span></li>
									<li class="active">건강진단 프로그램</li>
								</ul>

							</div>
							<a class="btn btn-primary" id="btn_M">남성</a> <a
								class="btn btn-primary" id="btn_W">여성</a>
							<p>
								<!-- 본문 -->
							<div id="content1">
								<h2>남성 프로그램</h2>
								<table class="table striped">
									<tr>
										<th>프로그램</th>
										<th>연령</th>
										<th>금액(만원)</th>
										<th>검사항목</th>
									</tr>
									<tr>
										<td rowspan="2">기본</td>
										<td>20~34</td>
										<td>64<br>(오후60)
										</td>
										<td style="width: 550px;">공통: 문진, 의학상담, 신체계측, 혈압, 안과(시력,
											안압), 식생활평가, 심전도, 폐기능, 흉부촬영, 종양표지자(췌장담도계암, 간암, 대장암), 혈액(요산,
											간기능, 빈혈, 신장기능, 전해질, 고지혈증, 공복혈당, 당화혈색소, 갑상선기능, 전염병),
											소화기복부(복부초음파, 위내시경/ 헬리코박터혈액), 간염(B형, C형), A형간염(49세 이하), 소변,
											대변(기생충/잠혈)</td>
									</tr>
									<tr>
										<td>35 이상</td>
										<td>65<br>(오후 61)
										</td>
										<td>공통: 20~34세 항목 + 안저촬영, 청력(50세 이상)<br>남성: 전립선종양표지자
										</td>

									</tr>
								</table>
								<ul>
									<li>전립선증상점수표(남), 정신건강관련설문은 모든 검진프로그램에 포함되며 문진표 작성 시 결과 확인
										가능합니다.</li>
									<li>의식하진정(수면)으로 내시경 검사를 하는 경우 140,000원이 추가됩니다.</li>
								</ul>
							</div>
							<div id="content2">
								<h2>여성 프로그램</h2>
								<table class="table striped">
									<tr>
										<th>프로그램</th>
										<th>연령</th>
										<th>금액(만원)</th>
										<th>검사항목</th>
									</tr>
									<tr>
										<td rowspan="2">기본</td>
										<td>20~34</td>
										<td>67<br>(오후 62)
										</td>
										<td style="width: 550px;">공통: 문진, 의학상담, 신체계측, 혈압, 안과(시력,
											안압), 식생활평가, 심전도, 폐기능, 흉부촬영, 종양표지자(췌장담도계암, 간암, 대장암), 혈액(요산,
											간기능, 빈혈, 신장기능, 전해질, 고지혈증, 공복혈당, 당화혈색소, 갑상선기능, 전염병),
											소화기복부(복부초음파, 위내시경/ 헬리코박터혈액), 간염(B형, C형), A형간염(49세 이하), 소변,
											대변(기생충/잠혈) <br>여성: 난소암표지자, 부인과진찰 및 상담, 액상자궁경부세포(부인과PAP)
										</td>
									</tr>
									<tr>
										<td>35 이상</td>
										<td>69<br>(오후 64)
										</td>
										<td>공통: 20~34세 항목 + 안저촬영, 청력(50세 이상)<br> 여성 : 유방촬영
										</td>

									</tr>
								</table>
								<ul>
									<li>전립선증상점수표(남), 정신건강관련설문은 모든 검진프로그램에 포함되며 문진표 작성 시 결과 확인
										가능합니다.</li>
									<li>의식하진정(수면)으로 내시경 검사를 하는 경우 140,000원이 추가됩니다.</li>
								</ul>
							</div>
							<p>
							<div id="content3">
								<h2>특화 프로그램</h2>
								<table class="table striped">
									<tr>
										<th width="10%">종류</th>
										<th width="20%">프로그램</th>
										<th width="10%">금액(만원)</th>
										<th>검사항목</th>
									</tr>
									<tr>
										<th rowspan="2">심장</th>
										<td>부정맥</td>
										<td>41.8</td>
										<td style="width: 550px;">정밀상담, 심장초음파, 운동부하심전도, 24시간
											심전도(또는 이벤트심전도)</td>
									</tr>
									<tr>
										<td>협심증</td>
										<td>71.4</td>
										<td>정밀상담, 심혈관3DCT/칼슘스코어링CT, 심장초음파, 심장운동부하심전도, 심전도</td>
									</tr>
									<tr>
										<th rowspan="3">비뇨기</th>
										<td class="tac">전립선 비대</td>
										<td class="tac">29.3</td>
										<td>전립선초음파, 남성호르몬, 전립선증상점수표, 성기능평가, 요류측정술, 초음파잔료량측정</td>
									</tr>
									<tr>
										<td class="tac">전립선 암</td>
										<td class="tac">49.7</td>
										<td>전립선MRI, 전립선암표지자, 유리전립선특이항원, 전립선증상점수표</td>
									</tr>
									<tr>
										<td class="tac">신장(콩팥)</td>
										<td class="tac">53.4</td>
										<td>정밀상담, 신장정밀CT, 미세단백뇨, 24시간 소변(전해질, 칼슘, 요산, 수산, 인, 단백뇨,
											크레아티닌, 신장기능, 구연산, 미세단백뇨, 마그네슘), 소변암세포, 혈뇨, 소변, 신장정밀혈액</td>
									</tr>
									<tr>
										<th rowspan="2">알레르기</th>
										<td class="tac">알레르기</td>
										<td class="tac">66.8</td>
										<td>정밀상담, 부비동촬영, 이비인후내시경, 천식, 알레르기혈액(40종), 알레르기피부반응(55종)</td>
									</tr>
									<tr>
										<td class="tac">만성기침</td>
										<td class="tac">49.3</td>
										<td>정밀상담, 비부비동내시경, 후두내시경, 저선량흉부CT, 부비동X-선, 천식, 소변코티닌</td>
									</tr>
									<tr>
										<th rowspan="3">간</th>
										<td class="tac">지방간</td>
										<td class="tac">13.6</td>
										<td>정밀상담, 간섬유화지방스캔/인슐린</td>
									</tr>
									<tr>
										<td class="tac">간염1</td>
										<td class="tac">34.7</td>
										<td>지방간 + B형간염 DNA정량, B형간염 E항원/E항체, B형간염 표면항원 정량</td>
									</tr>
									<tr>
										<td class="tac">간염2</td>
										<td class="tac">24.6</td>
										<td>지방간 + C형간염 PCR</td>
									</tr>
									<tr>
										<th rowspan="2">뇌</th>
										<td class="tac">뇌졸중</td>
										<td class="tac">169.9</td>
										<td>정밀상담, 뇌MRI/MRA(경동맥MRA 포함), 심장초음파, 경동맥초음파, 비타민D,
											미세단백뇨, 뇌졸중정밀혈액, 운동상담</td>
									</tr>
									<tr>
										<td class="tac">치매예방</td>
										<td class="tac">177.3</td>
										<td>정밀상담, 예진, 뇌MRI/MRA+대뇌해마MRI, 뇌인지기능, 치매위험인자혈액</td>
									</tr>
								</table>

							</div>
						</div>
						<div class="tab-pane" id="tab2">
							<!-- 사이트 경로 설정 -->
							<div class="route">
								<ul class="breadcrumb">
									<li><a href="main.do"><span
											class="glyphicon glyphicon-home"></span></a><span class="divider"></span></li>
									<li><a href="hchk.do">건강검진</a><span class="divider"></span></li>
									<li class="active">건강진단 순서안내</li>
								</ul>
							</div>
							<!-- 본문 -->
							<div class="content">
								<p>
								<h3>
									송안정 병원은 <br> 건강진단 예약에서 결과조회까지 최고의 서비스로 여러분을 모시겠습니다.
								</h3>

							</div>
							<p>
							<div align="center"
								style="border: 1px solid lightgray; border-radius: 10px;">
								<img alt="" src="images/hcno.PNG"
									style="max-width: 90%; height: auto;">
							</div>
						</div>
						<div class="tab-pane" id="tab3">
							<!-- 사이트 경로 설정 -->
							<div class="route">
								<ul class="breadcrumb">
									<li><a href="main.do"><span
											class="glyphicon glyphicon-home"></span></a><span class="divider"></span></li>
									<li><a href="hchk.do">건강검진</a><span class="divider"></span></li>
									<li class="active">건강진단 전 유의사항</li>
								</ul>
							</div>
							<!-- 본문 -->
							<div class="content">
								<br>
								<h1 align="center">주의사항</h1>
								<br>

								<div class="btn" style="width: 100%;">
									<a class="btn btn-primary" id="btn_c4">내원 전 준비</a>&nbsp&nbsp&nbsp&nbsp
									<a class="btn btn-primary" id="btn_c5">검진 전날</a>&nbsp&nbsp&nbsp&nbsp
									<a class="btn btn-primary" id="btn_c6">검진 당일</a>&nbsp&nbsp&nbsp&nbsp
									<a class="btn btn-primary" id="btn_c7">여성 검진자</a>
								</div>
								<div id="content4">

									<h2 align="center">건강한 검진을 위해 이것만은 '꼭' 지켜주세요!</h2>

									<h4>◆ 내원 전 준비</h4>
									<ul>
										<li>채취하신 대변 용기, 문진표, 검진 안내문을 지참하시고 예약하신 시간에 방문하여 검진 당일
											접수처에 제출하여 주시기 바랍니다.</li>
										<li>과거 검진 시 흉부질환 이상 소견 (활동성 폐결핵, 활동성 미정 폐결핵, 육아종 등) 또는
											위내시경 이상 소견이 있었던 분들은 정확한 판정과 결과에 도움이 되고자 하오니 과거 X-ray 필름 또는
											내시경 필름을 지참하시기 바랍니다.</li>
										<li>과거 검진 시 흉부질환 이상 소견 (활동성 폐결핵, 활동성 미정 폐결핵, 육아종 등) 또는
											위내시경 이상 소견이 있었던 분들은 정확한 판정과 결과에 도움이 되고자 하오니 과거 X-ray 필름 또는
											내시경 필름을 지참하시기 바랍니다.</li>
									</ul>
									<h4>◆ 기타안내</h4>
									<ul>
										<li>건강검진 일정 변경 시 예정일 10일 전까지 연락해 주십시오. ·원활한 건강 진단을 위해 간편한
											복장으로 예약시간 10분 전까지 도착하여 주십시오. ·귀중품 휴대 및 어린이 동반을 자제하여 주십시오.</li>
										<li>수면내시경을 하신느 분은 당일 자가운전이 불가능하오니 대중교통을 이용해 주십시오. (보호자와
											함께 오십시오.)</li>
										<li>안과 관련 검사시 렌즈를 빼야하는 불편함이 있으므로 가급적 렌즈 착용은 피하시는 것이 좋습니다.</li>
									</ul>
								</div>
								<div id="content5">
									<h2 align="center">건강한 검진을 위해 이것만은 '꼭' 지켜주세요!</h2>
									<h4>◆ 건강진단 전일</h4>
									<ul>
										<li>하루 전의 저녁 식사는 오후 8시 이전에 마치시고 이후에는 평소 복용하시는 약물을 포함하여
											일체의 음식물을 드시지 마십시요.</li>
										<li>과로를 피하시고 충분한 수면을 취하십시요.</li>
										<li>검사 전날 음주는 반드시 피하셔야 합니다.</li>
									</ul>
									<div align="center">
										<img alt="" src="images/hc.jpg"
											style="max-width: 60%; height: auto;">
									</div>
								</div>
								<div id="content6">
									<h2 align="center">건강한 검진을 위해 이것만은 '꼭' 지켜주세요!</h2>
									<h4>◆ 건강진단 당일</h4>
									<ul>
										<li>아침식사를 하지 마시고 주스, 물, 껌 그리고 담배 등을 삼가 하십시요.</li>
										<li>오후에 검진을 받으시는 분은 최소 8시간 전부터 일체 음식물을 삼가 하십시요.</li>
										<li>건강검진당일: 현재 복용중인 고혈압약, 갑상선질환약, 심장질환약은 이른 아침 소량의 물과 함께
											드시고 오십시요.<br> 단, 그외의 다른 약은 문의하시기 바랍니다.
										</li>
									</ul>
									<div align="center">
										<img alt="" src="images/hc2.jpg"
											style="max-width: 60%; height: auto;">
									</div>
								</div>
								<div id="content7">
									<h2 align="center">건강한 검진을 위해 이것만은 '꼭' 지켜주세요!</h2>
									<h4>◆ 여성 검진자 주의 사항</h4>
									<ul>
										<li>건강검진시 방사선 검사가 시행되므로 가임기의 모든 여성 수진자분들께서는 자신의 생리주기를
											점검하여 임신여부를 확인하시기 바랍니다.</li>
										<li>생리직전과 생리기간은 피하시고 생리 직후 5일~ 15일 사이에 검진 받으십시요.<br>
											(자궁경부암, 유방암, 소변검사에 영향을 미칠 수 있습니다.)
										</li>
										<li>자궁경부세포진검사 (자궁경부암 검사) 전 2시간 내에 부부관계, 질정, 크림 사용을 금하십시요.
										</li>
										<li>골반초음파 (Pelvis Sono)를 하실 경우에는 아침에 소변을 보시지 말고 내원하십시요.</li>
									</ul>
									<div align="center">
										<img alt="" src="images/hc3.jpg"
											style="max-width: 120%; height: auto;">
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tab4">
							<!-- 사이트 경로 설정 -->
							<div class="route">
								<ul class="breadcrumb">
									<li><a href="main.do"><span
											class="glyphicon glyphicon-home"></span></a><span class="divider"></span></li>
									<li><a href="hchk.do">건강검진</a><span class="divider"></span></li>
									<li class="active">검진 후 클리닉</li>
								</ul>
							</div>
							<!-- 본문 -->
<h3>검진 후 클리닉</h3>
								<p class="summary">
									저희 송안정 병원은 건강진단 고객을 대상으로 지속적이고 체계적인 건강관리를 위한 <br> <span
										style="color: rgb(0, 22, 134);">진료 서비스를 제공하는 평생건강 클리닉이
										문을 열었습니다.</span>
								</p>
								<p>
									강남센터 평생건강클리닉에서는 건강검진시 발견된 고혈압, 고지혈증, 당뇨병, 골다공증, 대사증후군 등의 이상
									소견이나 정기적인<br>경과관찰이 필요한 소견에 대해 해당 분야 전문교수로부터 지속적이고 체계적인 관리를
									받으실 수 있습니다.
								</p>

								<p>이 외에도 알레르기내과, 소화기내과, 산부인과, 외과, 정신건강의학과 등 총 12개 전문과목의 진료가
									개설되어 다양한 건강문제에 대해 친절하고 수준높은 외래 진료를 받으실 수 있으며, 이를 통해 일회성 검진의 한계를
									극복하고 지속적인 사후관리 서비스를 제공하기 위해 노력하고 있습니다.</p>

								<p>
									헬스케어시스템 강남센터는 최신 디지털 의료장비로 MRI, CT, 영상의학정보 시스템 (PACS)등을 자체 보유하고
									있으며, 본원 진단 <br> 검사 의학과의 선진국형 자동화 시스템을 이용하여 수진자의 미세하고 복잡한
									각종 질환을 보다 효과적으로 분석진단에 필수적인 <br> 한차원 앞선 최신의 의료장비를 구비하고
									있습니다.
								</p>
								<a class="btn btn-default" id="btn_a">방사선과</a> <a
									class="btn btn-default" id="btn_s">가정의학과</a> <a
									class="btn btn-default" id="btn_d">치과</a> <a
									class="btn btn-default" id="btn_f">외과</a>
								<p>
								<div id="contenta">
									<br>
									<table class="table striped">
										<colgroup>
											<col width="80">
											<col width="50">
											<col width="50">
											<col width="50">
											<col width="50">
											<col width="50">
											<col>
										</colgroup>
										<tr>
											<th>교수명</th>
											<th>월</th>
											<th>화</th>
											<th>수</th>
											<th>목</th>
											<th>금</th>
											<th>전공분야</th>

										</tr>
										<tr>
											<th>정재민</th>
											<td>오전</td>
											<td><br></td>
											<td>오전</td>
											<td><br></td>
											<td>오전</td>
											<td>X-ray, MRI, CT</td>
										</tr>

									</table>
								</div>
								<p>
								<div id="contents">
									<br>
									<table class="table striped">
										<colgroup>
											<col width="80">
											<col width="50">
											<col width="50">
											<col width="50">
											<col width="50">
											<col width="50">
											<col>
										</colgroup>
										<tr>
											<th>교수명</th>
											<th>월</th>
											<th>화</th>
											<th>수</th>
											<th>목</th>
											<th>금</th>
											<th>전공분야</th>

										</tr>
										<tr>
											<th>안미영</th>
											<td><br></td>
											<td>오후</td>
											<td>오후</td>
											<td>오후</td>
											<td><br></td>
											<td>평생건강관리, 성인병, 만성질환</td>
										</tr>

									</table>
								</div>
								<p>
								<div id="contentd">
									<br>
									<table class="table striped">
										<colgroup>
											<col width="80">
											<col width="50">
											<col width="50">
											<col width="50">
											<col width="50">
											<col width="50">
											<col>
										</colgroup>
										<tr>
											<th>교수명</th>
											<th>월</th>
											<th>화</th>
											<th>수</th>
											<th>목</th>
											<th>금</th>
											<th>전공분야</th>

										</tr>
										<tr>
											<th>송누리</th>
											<td>오후</td>
											<td>오전</td>
											<td><br></td>
											<td>오후</td>
											<td>오전</td>
											<td>치경부마모, 스케일링</td>
										</tr>

									</table>
								</div>
								<p>
								<div id="contentf">
									<br>
									<table class="table striped">
										<colgroup>
											<col width="80">
											<col width="50">
											<col width="50">
											<col width="50">
											<col width="50">
											<col width="50">
											<col>
										</colgroup>
										<tr>
											<th>교수명</th>
											<th>월</th>
											<th>화</th>
											<th>수</th>
											<th>목</th>
											<th>금</th>
											<th>전공분야</th>

										</tr>
										<tr>
											<th>송세현</th>
											<td><br></td>
											<td>오전</td>
											<td><br></td>
											<td>오후</td>
											<td>오전</td>
											<td>건강체형관리</td>
										</tr>

									</table>
								</div>
								<!--이미지  --><br><br><br><br><br>
								<div align="center">
								<div style="float:left;width:25%;height:50;word-wrap:break-word; overflow-x:hidden;overflow-y:hidden"><a href="http://www.amc.seoul.kr/asan/main.do"><img alt="" src="images/asanLogo.png"	style="max-width: 60%; height: auto;"> </a></div>
								<div style="float:left;width:25%;height:50;word-wrap:break-word; overflow-x:hidden;overflow-y:hidden"><a href="http://www.symcs.co.kr/"><img alt=""	src="images/samyukLogo_150.png" style="max-width: 60%; height: auto;"></a></div>
								<div style="float:left;width:25%;height:50;word-wrap:break-word; overflow-x:hidden;overflow-y:hidden"><a href="http://seoulmedicalcenter.co.kr/ "><img alt=""	src="images/seoulLogo.jpg" style="max-width: 60%; height: auto;"></a></div>
								<div style="float:left;width:25%;height:50;word-wrap:break-word; overflow-x:hidden;overflow-y:hidden"><a href="https://sshosp.co.kr:40011/home/default_in.asp"><img alt=""	src="images/sungsimLogo.gif" style="max-width: 60%; height: auto;"></a></div>
								</div>
						</div>
						<!--이미지  -->

					</div>
				</div>
			</div>

		</div>
		<!-- 본문 오른쪽 정렬 -->
	
	</article>
</body>
</html>
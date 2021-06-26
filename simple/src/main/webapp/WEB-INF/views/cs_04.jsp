<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>

<!-- 날짜위젯 -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 조회기간 선택 자바스크립트 -->
<script>
	$(function() {
		//input을 datepicker로 선언
		$("#datepicker1, #datepicker2")
				.datepicker(
						{
							dateFormat : 'yy-mm-dd' //달력 날짜 형태
							,
							showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
							,
							showMonthAfterYear : true // 월- 년 순서가아닌 년도 - 월 순서
							,
							changeYear : true //option값 년 선택 가능
							,
							changeMonth : true //option값  월 선택 가능                
							,
							showOn : "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
							,
							buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
							,
							buttonImageOnly : true //버튼 이미지만 깔끔하게 보이게함
							,
							buttonText : "선택" //버튼 호버 텍스트              
							,
							yearSuffix : "년" //달력의 년도 부분 뒤 텍스트
							,
							monthNamesShort : [ '1월', '2월', '3월', '4월', '5월',
									'6월', '7월', '8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 텍스트
							,
							monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
									'7월', '8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 Tooltip
							,
							dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] //달력의 요일 텍스트
							,
							dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일',
									'금요일', '토요일' ] //달력의 요일 Tooltip
							,
							minDate : "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
							,
							maxDate : "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
						});

		//초기값을 오늘 날짜로 설정해줘야 합니다.
		$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
	});
</script>


<style>

.page_wrap {
	text-align: center;
	font-size: 0;
}

.page_nation {
	display: inline-block;
}

.page_nation .none {
	display: none;
}

.page_nation a {
	display: block;
	margin: 0 3px;
	float: left;
	border: 1px solid #e6e6e6;
	width: 28px;
	height: 28px;
	line-height: 28px;
	text-align: center;
	background-color: #fff;
	font-size: 13px;
	color: #999999;
	text-decoration: none;
}

.page_nation .arrow {
	border: 1px solid #ccc;
}

.page_nation .pprev {
	background: #f8f8f8
		url('${contextPath}/resources/images/page_pprev.png') no-repeat center
		center;
	margin-left: 0;
}

.page_nation .prev {
	background: #f8f8f8 url('${contextPath}/resources/images/page_prev.png')
		no-repeat center center;
	margin-right: 7px;
}

.page_nation .next {
	background: #f8f8f8 url('${contextPath}/resources/images/page_next.png')
		no-repeat center center;
	margin-left: 7px;
}

.page_nation .nnext {
	background: #f8f8f8
		url('${contextPath}/resources/images/page_nnext.png') no-repeat center
		center;
	margin-right: 0;
}

.page_nation a.active {
	background-color: #42454c;
	color: #fff;
	border: 1px solid #42454c;
}

#recentlyProduct {
	
}

#buttonmy {
	width: 80px;
	height: 30px;
	float: left;
	border-radius: 2px;
	padding-top: 1.8px;
}
</style>


</head>
<body>

	<!-- 타이틀 -->
	<section class="ftco-section" style="padding-top: 50px;">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3"
				style="background-color: #f5f5f5; border: 1px solid #e7e7e7; margin-top: 50px;">
				<div class="col-md-20 heading-section ftco-animate"
					style="height: 60px;">
					<h2 class="mb-4" style="font-size: 35px; margin-top: 15px;">고객센터</h2>
				</div>
			</div>
			<!-- 타이틀 끝 -->
			
			<!-- 최근 본 상품 -->
			<div id="recentlyProduct"
				style="position: absolute; width: 120px; height: 310px; margin-left: 1370px; border: 1px solid #d2d2d2; margin-top: -100px;">
				<ul
					style="list-style: none; margin-top: 10px; padding-left: 20px; margin-bottom: 10px;">
					<li><a href="#"
						style="padding-left: -10px; padding-bottom: 1px; color: black;">최근본상품</a></li>
				</ul>
				<hr style="margin-top: 0px; margin-bottom: 0px; color: #d2d2d2;">
				<ul style="list-style: none; padding-top: 5px;">
					<li><a href="#"><img
							src="${contextPath}/resources/images/image_1.jpg"
							style="width: 100px; height: 100px; padding-top: 10px; margin-left: -30px;"></a></li>
					<li><a href="#"><img
							src="${contextPath}/resources/images/image_2.jpg"
							style="width: 100px; height: 100px; padding-top: 10px; padding-top: 10px; margin-left: -30px;"></a></li>
				</ul>
				<hr style="margin-top: 0px; margin-bottom: 0px; color: #d2d2d2;">
				<ul
					style="list-style: none; padding-left: 30px; margin-bottom: 10px; margin-top: 8px;">
					<li><a href="#"
						style="color: black; text-align: center; margin-top: 8px; padding-top: 30px;">더보기▼</a></li>
				</ul>
			</div>
			<!-- 최근 본 상품 끝 -->

			<!-- 내용 -->
			<div class="btn-group btn-group-justified" role="group"
				aria-label="..." style="margin-bottom: 30px; margin-top: 10px;">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default"
						style="font-size: 25px; border: none; color: #5a5a5a; padding-right: 210px; background-color: white; margin-left: 28px;">*공지사항</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default"
						style="font-size: 25px; border: none; color: #5a5a5a; padding-right: 210px; background-color: white;">*자주
						묻는 질문</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default"
						style="font-size: 28px; font-weight: bold; border: none; color: #5a5a5a; padding-right: 210px; background-color: white;">*1:1문의</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default"
						style="font-size: 25px; border: none; color: #5a5a5a; background-color: white;">*A/S센터</button>
				</div>

			</div>

			<div style="display: inline !important;">
				<p style="float: left; width: 80px; margin-top: 60px;">작성기간</p>

				<input type="text"
					style="width: 120px; margin-right: 50px; height: 30px; flaot: left; border: 1px solid #bebebe; border-radius: 2px; display: inline !important;">
				<button id="datepicker1"
					style="background-image:url(${contextPath}/resources/images/calendar.jpg); 
			cusor:pointer;  border:none; background-size:28px 28px; width:28px; 
			height:28px; background-repeat:no-repeat; border-radius:2px; margin-top:69px;  
			background-position:center; background-color: transparent !important; cursor:pointer ; overflow: visible; margin-top:50px;margin-left:50px;display:inline !important;"></button>
				<span class="glyphicon glyphicon-calendar" aria-hidden="true"
					style="margin-left: -35px;"> </span> ㅤㅤ~
				<button type="submit" class="btn btn-default"
					style="background-color: #dcdcdc; fmargin-left: 380px; margin-top: 50px; width: 80px; height: 28px; display: inline !important;">조회</button>
			</div>
			<table class="table" style="height: 30px;">
				<thead class="table-dark" align=center>
				<tr align="center">
					<td scope="col" width="100">번호</td>
					<td scope="col" width="150">문의유형</td>
					<td scope="col" width="500"><p style="margin-bottom: 0px;">제목</p></td>
					<td scope="col" width="150">작성일</td>
				</tr>
				<c:choose>
					<c:when test="${empty inquiryList}">
						<tr height="200">
							<td colspan="5" style="background-color:white; padding-top:100px;">
								<p align="center">
									<b><span style="color:black; ">로그인필요.</sapn></b>
								</p>
							</td>
						</tr>	
					</c:when>
					<c:when test="${!empty inquiryList}">
					<c:forEach var="inquiry" items="${inquiryList}" varStatus="inquiryNum">
					<tr
						style="border-bottom: 1px solid #c6c8ca; background-color: white; color: black;">
						<td scope="col" width="50">${inquiryNum.count}</td>
						<td scope="col" width="150">${inquiry.inquiryType}</td>
						<td align="left" scope="col" width="500"><a href="#"
							style="color: black; padding-left: 30px; margin-bottom: 0px;">${inquiry.inquiryTitle}</a></td>
						<td scope="col" width="150"><fmt:formatDate value="${inquiry.inquiryDate}" /></td>
					</tr>
					</c:forEach>
					</c:when>
					</c:choose>
				</thead>
			</table>
			<button type="submit" id="buttonmy" class="btn btn-dark"
				style="float: left; margin-left: 1190px; margin-top: 25px; border-radius: 2px;">확인</button>
		</div>
		<!-- 내용 끝 -->
		<!-- 페이징 글번호 -->
		<div class="page_wrap" style="margin-left: 80px; margin-top: 60px;">
			<div class="page_nation">
				<a class="arrow pprev" href="#"></a> <a class="arrow prev" href="#"></a>
				<a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a>
				<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
				<a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a
					class="arrow next" href="#"></a> <a class="arrow nnext" href="#"></a>
			</div>
		</div>
	</section>
	<br><br><br><br>
	</body>
</html>

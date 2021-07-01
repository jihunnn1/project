<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>




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
	<section class="ftco-section"
		style="padding-top: 50px; margin-bottom: 50px; padding-bottom: 0px;">
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
			<!-- 최근 본 상품 -->
			<jsp:include page="/WEB-INF/views/common/csMenu.jsp" flush="false" />			
			<!-- 내용 -->

			<div>
				<select
					style="margin-left: 895px; float: left; width: 80px; height: 31px; border: 1px solid #b3b5b6;">
					<option>제목</option>
					<option>제목</option>
					<option>작성자</option>
					<option>내용</option>
				</select> <input type="text" class="form-control" id="inputbox"
					style="margin-top: 10px; margin-left: 980px;">
				<button type="submit" id="buttonmy" class="btn btn-dark"
					style="margin-top: -33px; margin-left: 1190px; padding-top: 4px; height: 33px;">검색</button>
			</div>

			<table class="table" style="margin-top: 20px; text-align: center;">
				<thead class="table-dark" align=center>
					<tr style="border-bottom: 1px solid grey; height: 30px;">
						<td style="width: 100px;">번호</td>
						<td style="width: 500px;">제목</td>
						<td style="width: 200px;">작성자</td>
						<td style="width: 200px;">작성일</td>
						<td style="width: 200px;">조회수</td>
					</tr>
					<tr
						style="border-bottom: 0.5px solid grey; height: 30px; background-color: white;">
						<td style="width: 100px; color: black;">1</td>
						<td
							style="width: 500px; color: black; text-align: left; padding-left: 50px;">a/s신청합니다.</td>
						<td style="width: 200px; color: black;"><a href="#"
							style="color: black;">홍길동</a></td>
						<td style="width: 200px; color: black;">2021-06-12</td>
						<td style="width: 200px; color: black;">접수대기</td>
					</tr>
					<tr
						style="border-bottom: 0.5px solid grey; height: 30px; background-color: white;">
						<td style="width: 100px; color: black;">2</td>
						<td
							style="width: 500px; color: black; text-align: left; padding-left: 50px;">a/s
							접수 부탁드립니다.</td>
						<td style="width: 200px; color: black;"><a href="#"
							style="color: black;">홍길동</a></td>
						<td style="width: 200px; color: black;">2021-06-12</td>
						<td style="width: 200px; color: black;">접수대기</td>
					</tr>
					<tr
						style="border-bottom: 0.5px solid grey; height: 30px; background-color: white;">
						<td style="width: 100px; color: black;">3</td>
						<td
							style="width: 500px; color: black; text-align: left; padding-left: 50px;">a/s신청합니다.</td>
						<td style="width: 200px; color: black;"><a href="#"
							style="color: black;">홍길동</a></td>
						<td style="width: 200px; color: black;">2021-06-12</td>
						<td style="width: 200px; color: black;">접수대기</td>
					</tr>
				</thead>
			</table>
		</div>
	</section>
	<!-- 내용 끝 -->
	<!-- 페이징 글번호 -->
	<div class="page_wrap"
		style="margin-left: 80px; margin-top: 60px; margin-bottom: 120px;">
		<div class="page_nation">
			<a class="arrow pprev" href="#"></a> <a class="arrow prev" href="#"></a>
			<a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a>
			<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
			<a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a
				class="arrow next" href="#"></a> <a class="arrow nnext" href="#"></a>
		</div>
	</div>
</body>
</html>
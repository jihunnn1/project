<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.logo {
	font-size: 50px;
	float: left;
	padding-left: 100px;
	color: #000; "
	mading-top: 100px;
}

.atag {
	line-height: 0.1px;
}

.img {
	width: 120px;
	height: 120px;
	object-fit: cover;
}

.butten {
	background-color: grey;
	color: white;
	border: solid 2px black;
	border-radius: 5px;
	padding: 5px 5px;
	width: 200px;
}

.footericon {
	padding-right: 5px;
}

.headercolor {
	color: #000;
	padding-right: 100px;
}

.category {
	background-color: white;
	border: none;
	outline: none;
	font-size: 18px;
	font-weight: bold;
	color: #464646;
	margin-top: 60px;
}

#categorydetile {
	text-align: center;
	line-height: 30px;
	font-size: 18px;
}

#inputbox {
	margin-top: 57px;
	margin-left: -377px;
	width: 200px;
	height: 32px !important;
	"
}

#sitemap {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	border: 0;
	float: left;
	line-height: 5px;
	white-sapce: nowrap;
}

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
	<section class="ftco-section"
		style="padding-top: 50px; margin-bottom: 50px; padding-bottom: 0px; margin-bottom: 150px;">
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
						style="font-size: 25px; border: none; color: #5a5a5a; padding-right: 210px; background-color: white;">*1:1문의</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default"
						style="font-size: 28px; font-weight: bold; border: none; color: #5a5a5a; background-color: white;">*A/S센터</button>
				</div>
			</div>
			<table class=table style="padding-top: 50px; border-top: #212529;">

				<tr style="background-color: #212529; margin-top: 20px;"
					align="center">
					<td colspan="6" style="color: white;">글쓰기</td>
				</tr>
				<tr style="border-top: 1px solid #212529;">
					<td
						style="padding-left: 95px; font-weight: bold; padding-right: 100px; padding-top: 20px;">작성자</td>
					<td style="padding-top: 25px; background-color: white;"><input
						type=text name=title size=60
						style="height: 28px; border: 1px solid #aaaaaa; border-radius: 3px; width: 150px;"></td>
				</tr>
				<tr>
					<td
						style="padding-left: 95px; font-weight: bold; padding-top: 25px;">제목</td>
					<td style="padding-top: 25px; background-color: white;"><input
						type=text name=title size=60
						style="height: 28px; border: 1px solid #aaaaaa; border-radius: 3px;"></td>
				</tr>
				<tr>
					<td
						style="padding-left: 95px; font-weight: bold; padding-top: 200px;">내용</td>
					<td style="padding-top: 25px; background-color: white;"><textarea
							name=content cols=105 rows=15
							style="padding-top: 25px; border-color: #aaaaaa; border-radius: 3px;"></textarea></td>
				</tr>
				<tr>
					<td
						style="padding-left: 95px; font-weight: bold; padding-top: 20px;">비밀번호</td>
					<td style="padding-top: 25px; background-color: white;"><input
						type=text name=title size=60
						style="height: 28px; border: 1px solid #aaaaaa; border-radius: 3px; width: 150px;"></td>
				</tr>
				<tr>
					<td
						style="padding-left: 95px; font-weight: bold; padding-top: 30px;">파일첨부</td>
					<td style="background-color: white;"><input type="file"
						onchange="readURL(this);" style="padding-top: 25px;"></td>
				</tr>
			</table>
			<hr style="border-color: #212529;; width: 100%;">
			<div>
				<button type="submit" class="btn btn-dark " id="buttonmy"
					style="margin-left: 630px; margin-top: 30px;">등록</button>
				<button type="submit" class="btn btn-dark " id="buttonmy"
					style="margin-left: 730px; margin-top: -30px;">목록</button>
			</div>
		</div>
	</section>
	<!-- 내용 끝 -->
</body>
</html>
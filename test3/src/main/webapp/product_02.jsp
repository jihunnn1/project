<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Klift - Free Bootstrap 4 Template by Colorlib</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.8.2.js"></script>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Abril+Fatface"
	rel="stylesheet">

<link rel="stylesheet"
	href="${contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${contextPath}/resources/css/animate.css">

<link rel="stylesheet"
	href="${contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/magnific-popup.css">

<link rel="stylesheet" href="${contextPath}/resources/css/aos.css">

<link rel="stylesheet"
	href="${contextPath}/resources/css/ionicons.min.css">

<link rel="stylesheet"
	href="${contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/jquery.timepicker.css">


<link rel="stylesheet" href="${contextPath}/resources/css/flaticon.css">
<link rel="stylesheet" href="${contextPath}/resources/css/icomoon.css">
<link rel="stylesheet" href="${contextPath}/resources/css/style.css">

<!-- 최근본상품 사이드바-->

<script type="text/javascript">
	$(function() {
		var currentPosition = parseInt($("#recentlyProduct").css("top"));
		$(window).scroll(function() {
			var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
			$("#recentlyProduct").stop().animate({
				"top" : position + currentPosition + "px"
			}, 500);
		});
	});
</script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.8.2.js"></script>









<style type="text/css">
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
	font-size: 20px;
	font-weight: bold;
	color: #464646;
	padding-bottom: 1px;
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
}

#sitemap {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	border: 0;
	float: left;
	line-height: 10px;
	"
}

#pdcategory {
	font-size: 17px;
	background-color: #f8f8f8;
	border: 1px solid #e7e7e7;
	border-right: none;
	height: 50px;
	color: #777;
}

#recentlyProduct {
	position: absolute;
	top: 180px;
	right: 50%;
	margin-right: -670px;
}
</style>


</head>
<body>
	<!-------------header------------------------------------------------------------------------------------------------------------------------>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container" style="height: 150px;">
			<a class="navbar-brand" href="index.html">SIMPLE</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.html"
						class="nav-link" style="margin-bottom: 100px;">LOGIN</a></li>
					<li class="nav-item"><a href="about.html" class="nav-link">JOIN</a></li>
					<li class="nav-item"><a href="project.html" class="nav-link">MYPAGE</a></li>
					<li class="nav-item"><a href="services.html" class="nav-link">매장안내</a></li>
					<li class="nav-item"><a href="blog.html" class="nav-link"
						style="margin-right: 20px;">고객센터</a></li>

				</ul>

				<div class="dropdown">
					<button type="button" id="dropdownMenu1" data-toggle="dropdown"
						aria-expanded="true" class="category"
						style="margin-left: -1030px; margin-bottom: 0px; cursor: pointer;">
						침대</button>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu1"
						style="margin-left: -1085px; text-align: center;">
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">싱글</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">킹</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">이층침대</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">패밀리</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">퀸</a></li>
					</ul>
				</div>

				<div class="dropdown">
					<button type="button" id="dropdownMenu1" data-toggle="dropdown"
						aria-expanded="true" class="category"
						style="margin-left: -926px; cursor: pointer; font-size: 19px;">
						소파</button>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu1"
						style="margin-left: -980px; text-align: center;">
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">코너형</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">1인/웜체어</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">패브릭</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">리클라이너</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">4/6인 일자형</a></li>
					</ul>
				</div>

				<div class="dropdown">
					<button type="button" id="dropdownMenu1" data-toggle="dropdown"
						aria-expanded="true" class="category"
						style="margin-left: -810px; cursor: pointer; font-size: 19px;">
						화장대/옷장/수납</button>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu1"
						style="margin-left: -813px; text-align: center;">
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">거실장</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">장식장</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">화장대/콘솔</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">옷장</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">서랍장</a></li>
					</ul>
				</div>
				<div class="dropdown">
					<button type="button" id="dropdownMenu1" data-toggle="dropdown"
						aria-expanded="true" class="category"
						style="margin-left: -620px; cursor: pointer; font-size: 19px;">
						식탁/의자</button>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu1"
						style="margin-left: -655px; text-align: center;">
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">2인 이상</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">4인 이상</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">8인 이상</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">식탁 의자</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">테이블의자</a></li>
					</ul>
				</div>

				<div class="dropdown">
					<button type="button" id="dropdownMenu1" data-toggle="dropdown"
						aria-expanded="true" class="category"
						style="margin-left: -480px; cursor: pointer; font-size: 19px;">
						테이블/책상/책장</button>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu1"
						style="margin-left: -480px; text-align: center;">
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">소파 테이블</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">좌식 테이블</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">원목 테이블</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">다용도 테이블</a></li>
						<li role="presentation" style="margin-top: 11px;"><a
							role="menuitem" tabindex="-1" href="#" id="categorydetile"
							style="color: #000000;">책상/책장</a></li>
					</ul>
				</div>



				<input type="text" placeholder="Search for..."
					style="margin-top: 60px; margin-left: -300px;">
				<button
					style="background-image:url(${contextPath}/resources/images/header-01.png); cusor:pointer;  background-size:25px; width:35px; height:35px; border:1px solid #828282; background-repeat:no-repeat; border-radius:2px; margin-top:60px; margin-left:1px; background-position:center; cursor:pointer;"></button>


				<div class="dropdown">

					<button
						style="background-image:url(${contextPath}/resources/images/header-02.png); cusor:pointer;  border:none; background-size:50px 55px; width:40px; height:40px; background-repeat:no-repeat; border-radius:2px; margin-top:69px;  background-position:center; background-color: transparent !important; cursor:pointer;"></button>







					<!-- 사이트맵 -->
					<ul class="dropdown-menu submenu" role="menu"
						aria-labelledby="dropdownMenu1"
						style="margin-left: -1200px; padding-left: 1300px; margin-bottom: 600px;">

						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; font-weight: bold; background-color: lightgrey; width: 180px; margin-top: 20px; color: #000000;">침대</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; font-weight: bold; background-color: lightgrey; width: 180px; margin-top: 20px; color: #000000;">소파</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; font-weight: bold; background-color: lightgrey; width: 180px; margin-top: 20px; color: #000000;">화장대/옷장/수납</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -530px; font-weight: bold; background-color: lightgrey; width: 180px; margin-top: 20px; color: #000000;">식탁/의자</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -300px; font-weight: bold; background-color: lightgrey; width: 180px; margin-top: 20px; color: #000000;">테이블/책상/책장</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; padding-top: 60px; color: #000000;">싱글</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; padding-top: 60px; color: #000000;">코너형</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; padding-top: 60px; color: #000000;">거실장</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -530px; width: 180px; text-align: center; padding-top: 60px; color: #000000;">2인이상</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -300px; width: 180px; text-align: center; padding-top: 60px; color: #000000;">소파
								테이블</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 90px;">킹</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; color: #000000; padding-top: 90px;">1인/웜체어</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; color: #000000; padding-top: 95px;">장식장</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -530px; width: 180px; text-align: center; color: #000000; padding-top: 95px;">4인
								이상</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -300px; width: 180px; text-align: center; color: #000000; padding-top: 95px;">좌식
								테이블</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 125px;">이층
								침대</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; padding-top: 125px; color: #000000;">패브릭</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; color: #000000; padding-top: 125px;">화장대/콘솔</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -530px; width: 180px; text-align: center; color: #000000; padding-top: 125px;">원목테이블</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -300px; width: 180px; text-align: center; color: #000000; padding-top: 125px;">책상/책장</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 155px;">패밀리</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; color: #000000; padding-top: 155px;">리클라이너</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; color: #000000; padding-top: 155px;">옷장</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -530px; width: 180px; text-align: center; color: #000000; padding-top: 155px;">식탁
								의자</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -300px; width: 180px; text-align: center; color: #000000; padding-top: 155px;">다용도
								테이블</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 185px; color: #000000;">퀸</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; padding-top: 185px; color: #000000;">4/6인
								일자형</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; padding-top: 185px; color: #000000;">서랍장</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -530px; width: 180px; text-align: center; padding-top: 185px; color: #000000;">테이블의자</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -300px; width: 180px; text-align: center; padding-top: 185px; color: #000000;">책상/책장</a></li>

						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; font-weight: bold; background-color: lightgrey; width: 180px; margin-top: 20px; margin-top: 230px; color: #000000;">매장
								안내</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; font-weight: bold; background-color: lightgrey; width: 180px; margin-top: 20px; margin-top: 230px; color: #000000;">마이
								페이지</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; font-weight: bold; background-color: lightgrey; width: 180px; margin-top: 20px; margin-top: 230px; color: #000000;">고객센터</a></li>


						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; padding-top: 270px; color: #000000;">회사
								소개</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; padding-top: 270px; color: #000000;">주문/배송조회</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; padding-top: 270px; color: #000000;">공지사항</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 300px;">매장안내</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; color: #000000; padding-top: 300px;">취소/반품내역</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; color: #000000; padding-top: 300px;">자주
								묻는 질문</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 330px;">ㅤ</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; color: #000000; padding-top: 330px;">장바구니</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; color: #000000; padding-top: 330px;">1:1
								문의</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 360px;">ㅤ</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; color: #000000; padding-top: 360px;">관심상품</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; color: #000000; padding-top: 360px;">A/S
								접수 센터</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 390px;">ㅤ</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; color: #000000; padding-top: 390px;">적립금</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; color: #000000; padding-top: 390px;">ㅤ</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 420px;">ㅤ</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; color: #000000; padding-top: 420px;">쿠폰</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; color: #000000; padding-top: 420px;">ㅤ</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 450px;">ㅤ</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; color: #000000; padding-top: 450px;">회원
								등급 안내</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; color: #000000; padding-top: 450px;">ㅤ</a></li>

						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#" id="categorydetile"
							style="float: left; margin-left: -1200px; width: 180px; text-align: center; color: #000000; padding-top: 480px;">ㅤ</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -980px; width: 180px; text-align: center; color: #000000; padding-top: 480px;">상품
								리뷰</a></li>
						<li id=sitemap role="presentation"><a role="menuitem"
							tabindex="-1" href="#" id="categorydetile"
							style="float: left; margin-left: -755px; width: 180px; text-align: center; color: #000000; padding-top: 480px;">ㅤ</a></li>



					</ul>
				</div>
			</div>
		</div>

	</nav>
	<hr
		style="margin-top: -100px; color: grey; margin-bottom: 100px; width: 52%; margin-left: 595px;" />

	<hr style="margin-top: 45px; color: grey; margin-top: 1px;" />

	<!--------header 끝------------------------------------------------------------------------------------------------------------------------------>


	<section class="ftco-section" style="padding-top: 20px;">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3"
				style="background-color: #f5f5f5; border: 1px solid #e7e7e7;">
				<div class="col-md-20 heading-section ftco-animate"
					style="height: 60px;">
					<h2 class="mb-4" style="font-size: 35px; margin-top: 18px;">소피아
						대리석 4인 식탁 세트</h2>
				</div>
			</div>
		<!-- 최근 본 상품 -->
				<div id="recentlyProduct"
					style="position: absolute; left:180px; width: 120px; height: 310px; margin-left: 1570px; border: 1px solid #d2d2d2; margin-top: 0px;">
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

			<div class="row">
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a><img src="${contextPath}/resources/images/image_1.jpg"
							style="width: 600px; padding-top: 10px; padding-top: 10px; margin-left: -15px; float: left;">
						</a>
						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 5px; margin-left: 50px; float: left;">판매가ㅤㅤ
								ㅤ</a>
						</h3>
						<br>
						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 50px; margin-left: 51px; float: left; font-size: 18px;">제조사ㅤㅤ
								ㅤ</a>
						</h3>
						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 40px; margin-left: 180px; font-size: 18px;">Simple</a>
						</h3>
						<br>
						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 45px; margin-left: 51px; float: left; font-size: 18px;">원산지ㅤㅤ
								ㅤ</a>
						</h3>
						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 35px; margin-left: 180px; font-size: 18px;">China/oem</a>
						</h3>
						<br>


						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 80px; margin-left: 51px; float: left; font-size: 18px;">옵션1ㅤㅤ
								ㅤ</a>
						</h3>

						<select id="selectBox" name="selectBox"
							style="margin-left: 765px; margin-top: -230px; float: left !important; width: 300px; height: 30px;">
							<option value="" selected="selected">옵션 선택</option>
							<option value="option1">뭐지</option>
						</select> <br>
						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 100px; margin-left: -430px; float: left; font-size: 13px;">추가
								옵션(추가 구매를 원하시면 클릭하세요)</a>
						</h3>
						<br>
						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 90px; margin-left: -430px; float: left; font-size: 18px;">옵션2ㅤㅤ
								ㅤ</a>
						</h3>
						<select
							style="margin-left: 765px; margin-top: -150px; float: left !important; width: 300px; height: 30px;">
							<option>옵션 선택</option>
						</select> <br>
						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 110px; margin-left: -430px; float: left; font-size: 18px; font-size: 14px;">식탁1eaㅤ의자4ea</a>
						</h3>
					</div>
					<div>
						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 115px; margin-left: -430px; float: left; font-size: 18px; font-size: 14px;">수량</a>
						</h3>

						<button type="button" onclick="fnCalCount('p',this);"
							style="position: absolute; white-space: nowrap; margin-top: 109px; margin-left: -380px; float: left; font-size: 18px; font-size: 14px; border: 1px solid grey;">+</button>
						<input type="text" name="pop_out" value="0" readonly="readonly"
							style="position: absolute; white-space: nowrap; margin-top: 108px; margin-left: -350px; float: left; font-size: 18px; font-size: 14px; width: 50px; text-align: center;" />
						<button type="button" onclick="fnCalCount('m', this)"
							style="position: absolute; white-space: nowrap; margin-top: 109px; margin-left: -295px; float: left; font-size: 18px; font-size: 14px; border: 1px solid grey;">-</button>
						<h3 class="heading">
							<a
								style="position: absolute; white-space: nowrap; margin-top: 100px; margin-left: 95px; float: left; font-size: 25px;">3,000,000원</a>
						</h3>
					</div>
					<button type="submit" class="btn btn-default"
						style="background-color: #dcdcdc; float: left; margin-left: 630px; margin-top: 20px; width: 330px; height: 50px; border-radius: 2px;">바로구매</button>
					<button type="submit" class="btn btn-default"
						style="background-color: #dcdcdc; float: left; margin-left: 965px; margin-top: -50px; width: 330px; height: 50px; border-radius: 2px;">장바구니</button>

				</div>
			</div>


			<!-- 수량체크 자바스크립트 -->
			<script type="text/javascript">
				function fnCalCount(type, ths) {
					var $input = $(ths).parents("td").find(
							"input[name='pop_out']");
					var tCount = Number($input.val());
					var tEqCount = Number($(ths).parents("tr").find(
							"td.bseq_ea").html());

					if (type == 'p') {
						if (tCount < tEqCount)
							$input.val(Number(tCount) + 1);

					} else {
						if (tCount > 0)
							$input.val(Number(tCount) - 1);
					}
				}
			</script>

			<!-- 탭메뉴 자바스크립트 -->
			<script type="text/javascript"
				src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
			<script type="text/javascript">
				$(document).ready(function() {

					//When page loads...
					$(".tab_content").hide(); //Hide all content
					$("ul.tabs li:first").addClass("active").show(); //Activate first tab
					$(".tab_content:first").show(); //Show first tab content

					//On Click Event
					$("ul.tabs li").click(function() {

						$("ul.tabs li").removeClass("active"); //Remove any "active" class
						$(this).addClass("active"); //Add "active" class to selected tab
						$(".tab_content").hide(); //Hide all tab content

						var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
						$(activeTab).fadeIn(); //Fade in the active ID content
						return false;
					});

				});
			</script>
			<!-- 탭메뉴 영역 -->

			<ul class="nav  tabs" style="margin-top: 100px;">
				<li role="presentation" class="active"
					style="width: 290px; text-align: center;"><a href="#tab1"
					style="font-size: 23px; color: black;">상품상세정보</a></li>
				<li role="presentation" style="width: 290px; text-align: center;"><a
					href="#tab2" style="font-size: 23px; color: black;">고객후기</a></li>
				<li role="presentation" style="width: 290px; text-align: center;"><a
					href="#tab3" style="font-size: 23px; color: black;">AS/배송/반품안내</a></li>
				<li role="presentation" style="width: 290px; text-align: center;"><a
					href="#tab4" style="font-size: 23px; color: black;">상품문의</a></li>

			</ul>
			<hr>
			<div id="wrapper">
				<div class="tab_container" style="margin-left: 50px;">

					<div id="tab1" class="tab_content"
						style="margin-left: 170px; margin-right: 170px;">
						<!--Content-->
						<img
							src="${contextPath}/resources/images/product/sopiaDetiles.jpg"
							style="width: 1200px; margin-left: -180px;"> <img
							src="${contextPath}/resources/images/product/sopiaDetiles2.jpg">
					</div>
					<div id="tab2" class="tab_content"
						style="margin-left: 150px; width: 1000px;">
						<!--Content-->
						<table class="table"
							style="margin-top: 60px; text-align: center; width: 1000px; margin-left: -80px;">

							<tr style="bakground-color: grey; border-bottom: 1px solid grey;">
								<td
									style="width: 100px; background-color: #212529; color: white;">번호</td>
								<td
									style="width: 200px; background-color: #212529; color: white;">작성자</td>
								<td
									style="width: 600px; background-color: #212529; color: white;">내용</td>
								<td
									style="width: 200px; background-color: #212529; color: white;">작성일자</td>
							</tr>
							<tr style="border-bottom: 1px solid grey;">
								<td style="width: 100px;">1</td>
								<td style="width: 200px;">홍두깨</td>
								<td style="width: 500px;"><a href="#" style="color: black;">
										좋아요좋아요좋아요</a></td>
								<td style="width: 200px;">2021-06-12</td>
							</tr>
							<tr style="border-bottom: 1px solid grey;">
								<td style="width: 100px;">2</td>
								<td style="width: 200px;">나애리</td>
								<td style="width: 500px;"><a href="#" style="color: black;">
										별로별로별로 그냥그럼</a></td>
								<td style="width: 200px;">2021-06-12</td>
							</tr>
						</table>


						<table class="table"
							style="margin-top: 20px; text-align: center; width: 1000px; margin-left: -80px; margin-bottom: 1px;">
							<tr>
								<td
									style="border: 1px solid grey; padding-top: 30px; padding-left: 0px;"><button
										type="submit" class="btn btn-default"
										style="background-color: #dcdcdc; margin-left: 870px; border-radius: 2px; width: 90px; height: 100px; margin-bottom: 3px;">등록</button>
									<img id="preview" src="#"
									style="background-color: #dcdcdc; margin-left: 650px; margin-top: -134px; width: 100px; height: 98px; margin-bottom: 0px; z-index: 1;" />
									<input type="text"
									placeholder="후기를 입력해주세요^^베스트 후기를 뽑아서 적립금을 드립니다."
									style="margin-top: -126px; width: 730px; height: 97px; float: left; margin-left: 20px;" />
									<input type="file" name="imageFileName"
									onchange="readURL(this);"
									style="margin-right: 640px; margin-top: 1px;" /></td>
							</tr>
						</table>

					</div>
					<div id="tab3" class="tab_content"
						style="margin-left: 0px; margin-right: 170px;">
						<!--Content-->
						<img src="${contextPath}/resources/images/delivery.png"
							style="width: 1000px; margin-left: 20px; margin-top: 50px;">

					</div>

					<div id="tab4" class="tab_content"
						style="margin-left: 0px; margin-right: 170px;">
						<!--Content-->


						<table class="table"
							style="margin-top: 60px; text-align: center; width: 1000px; margin-left: 70px;">

							<tr
								style="bakground-color: grey; background-color: #dcdcdc; border-bottom: 1px solid grey;">
								<td
									style="width: 100px; background-color: #212529; color: white;">번호</td>
								<td
									style="width: 200px; background-color: #212529; color: white;">작성자</td>
								<td
									style="width: 500px; background-color: #212529; color: white;">내용</td>
								<td
									style="width: 200px; background-color: #212529; color: white;">작성일자</td>
							</tr>
							<tr style="border-bottom: 1px solid grey;">
								<td style="width: 100px;">1</td>
								<td style="width: 200px;">홍두깨</td>
								<td style="width: 500px;"><a href="#" style="color: black;">이거
										그레이색 언제 재입고 되나요</a></td>
								<td style="width: 200px;">2021-06-12</td>
							</tr>
							<tr style="border-bottom: 1px solid grey;">
								<td style="width: 100px;">2</td>
								<td style="width: 200px;">나애리</td>
								<td style="width: 500px;"><a href="#" style="color: black;">
										언제와요</a></td>
								<td style="width: 200px;">2021-06-12</td>
							</tr>
						</table>
						<table class="table"
							style="margin-top: 20px; text-align: center; width: 1000px; margin-left: 70px; margin-bottom: 1px;">
							<tr>
								<td style="border: 1px solid grey; padding-top: 100px;"><button
										type="submit" class="btn btn-default"
										style="background-color: #dcdcdc; margin-left: 860px; margin-top: -85px; width: 100px; height: 100px; border-radius: 2px;">등록</button>
									<input type="text" placeholder="글을 입력해주세요^^"
									style="margin-top: -105px; width: 850px; height: 100px; float: left;" />
								</td>
							</tr>
						</table>
					</div>
				</div>






			</div>
		</div>


	</section>








	<!-------------footer------------------------------------------------------------------------------------------------------------------------>
	<footer class="ftco-footer ftco-bg-dark ftco-section" style="padding-top:30px; padding-bottom:1px;" >
      <div class="container">
        <div class="row mb-1">         		
          <div class="col-md">
            <div class="ftco-footer-widget mb-4" style="text-align:center" >
            	<h2 class="ftco-heading-2"><span class="glyphicon glyphicon-headphones" aria-hidden="true" style="padding-right:5px;"></span>A/S 접수 센터</h2>
            	<div class="block-23 mb-3">
            		<p class="atag">042-527-3057</p>
            		<p>MON-FRI 9:00~18:00</p>
	               <button class="butten" type="button" class="btn">a/s 접수 바로가기</button>
	            </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4" style="text-align:center">
            	<h2 class="ftco-heading-2"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="padding-right:5px;"></span>1:1 문의하기</h2>
            	<div class="block-23 mb-3">
            		<p class="atag">빠르고 정확하게</p>
            		<p>답변해드리겠습니다.</p>   	
	               <button class="butten" type="button" class="btn">1:1 문의 바로가기</button>
	            </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4" style="text-align:center">
            	<h2 class="ftco-heading-2"><span class="glyphicon glyphicon-envelope footericon" aria-hidden="true"></span>제휴 문의</h2>
            	<div class="block-23 mb-3">
            		<p class="atag">tkawhchlrh@naver.com</p>
            		<p>ㅤ</p>
	               <button class="butten" type="button" class="btn" >이메일 보내기</button>
	            </div>
            </div>
          </div>
        </div>
        <hr style="margin-top:1px;  background-color: gray; height:0.005px"> 
        <div class="row">
          <div class="col-md-12 text-left">
          	<img class="img" src="${contextPath}/resources/images/escro.jpg" style="float:right; padding-bottom:10px;">
          	<img class="img" src="${contextPath}/resources/images/kb.jpg" style="float:right; padding-right: 10px; padding-bottom:10px;">
              <p style="margin-top:1px">상호:(주)Simple  /  대표: 강은희</p>
              <p style= "white-space:pre; float:left;">대전 본사: 대전 서구 탄방동 12-34 / tel: 042-527-3038 / fax: 042-527-3099<br>천안 직영: 천안 동구 충남 천안시 서북구 쌍용동 1736 / tel: 041-527-7007 / fax: 041-571-7008<br>사업자등록번호: 123-45-67890 / 통신판매업신고번호: 제2014-서울중랑-0007호 /개인정보관리자 :김삼순<br>Copyrightⓒ 2021 Simple.ALL RIGHTS RESERVED.</p>
            </div>
          </div>
         </div>
    
    </footer>
<!------footer 끝------------------------------------------------------------------------------------------------------------------------------------------>    

  

  <!-- loader -->
 


  <script src="${contextPath}/resources/js/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${contextPath}/resources/js/popper.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${contextPath}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${contextPath}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${contextPath}/resources/js/jquery.stellar.min.js"></script>
  <script src="${contextPath}/resources/js/owl.carousel.min.js"></script>
  <script src="${contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${contextPath}/resources/js/aos.js"></script>
  <script src="${contextPath}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap-datepicker.js"></script>
  <script src="${contextPath}/resources/js/jquery.timepicker.min.js"></script>
  <script src="${contextPath}/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${contextPath}/resources/js/google-map.js"></script>
  <script src="${contextPath}/resources/js/main.js"></script>
    
  </body>
</html>
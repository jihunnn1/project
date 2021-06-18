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

<style>
#main_box { /*아이디 선택자*/
	display: flex;
	flex-direction: column;
	align-items: center;
	padding-top: 10px;
}

#login { /*아이디 선택자*/
	display: flex;
	flex-direction: column;
	width: 1300px;
	height: 100px;
	align-items: center;
	padding-top: 10px;
	font-size: 20px;
}

.Easy-sgin-in-wrap {
	display: flex;
	flex-direction: column; /*column으로 정렬 */
	float: right;
}

.Easy-sgin-in-wrap .sign-button-list {
	list-style: none;
	width: 350px;
	display: flex;
	flex-direction: column;
}

.Easy-sgin-in-wrap .sign-button-list li {
	padding-top: 10px;
}

.Easy-sgin-in-wrap .sign-button-list li button {
	width: 350px;
	height: 40px;
	border: 1px solid rgb(0, 0, 0);
	text-align: center;
	background: rgb(255, 255, 255);
}

.Easy-sgin-in-wrap .sign-button-list li button i {
	font-size: 10px;
}

#sect {
	display: flex;
	flex-direction: row;
	padding-bottom: 10px;
}

#RightBox {
	width: 500px;
	border: 1px solid rgb(0, 0, 0);
}

h3 {
	color: block;
}

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
}
</style>
<script type="text/javascript">
	//로그인
	function Check_Join() {
		var form = document.CheckJoin;

		if (form.user_name.value == "") {
			alert("이름을 입력하지 않았습니다.")
			form.user_name.focus();
			return false;
		}

		if (form.user_name.value.length < 2) {
			alert("이름을 2자 이상 입력해주십시오.")
			document.form.user_name.focus();
			return false;
		}

		//아이디 입력여부 검사
		if (form.user_id.value == "") {
			alert("아이디를 입력해주세요!")
			form.user_id.focus();
			return false;
		}
		//아이디 유효성 검사 (영문소문자, 숫자만 허용)
		for (var i = 0; i < form.user_id.value.length; i++) {
			ch = form.user_id.value.charAt(i)
			if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
					&& !(ch >= 'A' && ch <= 'Z')) {
				alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.")
				form.user_id.focus();
				form.user_id.select();
				return false;
			}
		}

		//아이디에 공백 사용하지 않기
		if (form.user_id.value.indexOf(" ") >= 0) {
			alert("아이디에 공백을 사용할 수 없습니다.")
			form.user_id.focus();
			form.user_id.select();
			return false;
		}
		//아이디 길이 체크 (4~12자)
		if (form.user_id.value.length<4 || form.user_id.value.length>12) {
			alert("아이디를 4~12자까지 입력해주세요.")
			form.user_id.focus();
			form.user_id.select();
			return false;
		}

		//비밀번호 입력여부 체크
		if (form.user_password1.value == "") {
			alert("비밀번호를 입력하지 않았습니다.")
			form.user_password1.focus();
			return false;

		}
		if (form.user_password1.value == form.user_id.value) {
			alert("아이디와 비밀번호가 같습니다.")
			form.user_password1.focus();
			return false;
		}
		//비밀번호 길이 체크(10자이상 허용)
		if (form.user_password1.value.length < 9) {
			alert("비밀번호를 10자이상 입력해주세요.")
			form.user_password1.focus();
			form.user_password1.select();
			return false;
		}
		//비밀번호 유효성 검사 (영문소문자, 숫자만 허용)
		for (var i = 0; i < form.user_password1.value.length; i++) {
			ch = form.user_password1.value.charAt(i)
			if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
					&& !(ch >= 'A' && ch <= 'Z')) {
				alert("비밀번호는 영문 대소문자, 숫자만 입력가능합니다.")
				form.user_password1.focus();
				form.user_password1.select();
				return false;
			}
		}
		//비밀번호와 비밀번호 확인 일치여부 체크
		if (form.user_password1.value != form.user_password2.value) {
			alert("비밀번호가 일치하지 않습니다")
			form.user_password2.value = ""
			form.user_password2.focus();
			return false;
		}
		if (form.email1.value == "") {
			alert("이메일을 입력하지 않았습니다.")
			form.email1.focus();
			return false;
		}

		for (var i = 0; i < form.email1.value.length; i++) {
			chm = form.email1.value.charAt(i)
			if (!(chm >= '0' && chm <= '9') && !(chm >= 'a' && chm <= 'z')
					&& !(chm >= 'A' && chm <= 'Z')) {
				alert("이메일은 영문 대소문자, 숫자만 입력가능합니다.")
				form.email1.focus();
				form.email1.select();
				return false;
			}
		}
		if (form.phone2.value == "") {
			alert("핸드폰번호를 입력하지 않았습니다.")
			form.phone2.focus();
			return false;
		}

		for (var i = 0; i < form.phone2.value.length; i++) {
			ch = form.phone2.value.charAt(i)
			if (!(ch >= '0' && ch <= '9')) {
				alert("핸드폰번호는 숫자만 입력가능합니다.")
				form.phone2.focus();
				form.phone2.select();
				return false;
			}
		}
		if (form.phone3.value == "") {
			alert("핸드폰번호를 입력하지 않았습니다.")
			form.phone3.focus();
			return false;
		}
		for (var i = 0; i < form.phone3.value.length; i++) {
			ch = form.phone3.value.charAt(i)
			if (!(ch >= '0' && ch <= '9')) {
				alert("핸드폰번호는 숫자만 입력가능합니다.")
				form.phone3.focus();
				form.phone3.select();
				return false;
			}
		}
		if (form.addr1.value == "") {
			alert("주소를 입력하지 않았습니다.")
			form.addr1.focus();
			return false;
		}

		if (!agree1.checked) {

			alert("이용 약관 동의를 체크하세요.");
			agree1.focus();
			return false;
		}
		if (!agree2.checked) {

			alert("개인정보 수집 및 이용안내 동의를 체크하세요.");
			agree2.focus();
			return false;
		}

		form.submit();

	}
	function checkAllCheckbox(obj) {
		$("input[name='agree']").prop('checked', true);
		$("[name=agree]").prop("checked", $(obj).prop("checked"));

	}
	function checkOneCheckbox(obj) {
		var allObj = $("[name=full_agree]");
		var objName = $(obj).attr("name");

		if ($(obj).prop("checked")) {
			checkBoxLength = $("[name=" + objName + "]").length;
			checkedLength = $("[name=" + objName + "]:checked").length;

			if (checkBoxLength == checkedLength) {
				allObj.prop("checked", true);
			} else {
				allObj.prop("checked", false);
			}
		} else {
			allObj.prop("checked", false);
		}
	}

	$(function() {
		$("[name=full_agree]").click(function() {
			checkAllCheckbox(this);
		});
		$("[name=agree]").each(function() {
			$(this).click(function() {
				checkOneCheckbox($(this));
			});
		});
	});

	//아이디 중복체크 팝업창
	function id_check() {
		window.open("idCheckForm.jsp", "idwin", "width=400, height=350");
	}
	//핸드폰 인증 팝업창
	function phone_check() {
		window.open("phone_check.jsp", "phonewin", "width=400, height=350");
	}

	//주소검색 팝업창
	function search_address() {
		window.open("", "b", "width-600, height=300,left=200, top=100");
	}
</script>
</head>
<title>주문결제창</title>
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
		style="margin-top: -100px; color: red; margin-bottom: 100px; width: 52%; margin-left: 595px;" />
	<hr style="margin-top: 45px; color: grey; margin-top: 1px;" />
	<!-------------header 끝------------------------------------------------------------------------------------------------------------------------>


	<section class="ftco-section testimony-section"
		style="padding-top: 50px;">
		<div class="container" style="height: 650px">
			<div class="row justify-content-center mb-5 pb-3"
				style="background-color: #f5f5f5; border: 1px solid #e7e7e7; margin-top: 50px;">
				<div class="col-md-20 heading-section ftco-animate"
					style="height: 60px;">
					<h2 class="mb-4" style="font-size: 35px; margin-top: 15px;">회원가입</h2>
				</div>
			</div>
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

			<form name="CheckJoin" action="join-02.jsp" method="post">
				<section class="ftco-section testimony-section" id="sect"
					style="padding-top: 50px; padding-left: 170px;">

					<div class="container" style="width: 480px;">
						<section class="Easy-sgin-in-wrap">
							<div id="MainBox">
								<table style="wdith:500px; height:330px;">
									<tr>
										<td class="user_name" >
											<div align="right" style="width:80px;">
												<a style="color: red; padding-right: 5px; write-space:nowrap;">*</a>이름
											</div>
										</td>
										<td colspan="3" class="user_name" style="padding-left: 10px;">
											<input type="text" name="user_name" size="20" value="">
										</td>
									</tr>
									<tr>
										<td class="user_id">
											<div align="right">
												<a style="color: red; padding-right: 5px;">*</a>아이디
											</div>
										</td>
										<td colspan="3" class="user_id" style="padding-left: 10px;">
											<input type="text" name="user_id" size="30" value="">
											<input type="button" name="check_id_overlap" value="중복확인"
											onclick="id_check()"> <input type="hidden"
											name="idDuplication" value="idUncheck">
										</td>
									</tr>
									<tr>
										<td class="user_password1">
											<div align="right">
												<a style="color: red; padding-right: 5px;">*</a>비밀번호
											</div>
										</td>
										<td colspan="3" class="user_password1"
											style="padding-left: 10px;"><input type="password"
											name="user_password1" size="30" value=""></td>
									</tr>
									<tr>
										<td class="user_password2">
											<div align="right">
												<a style="color: red; padding-right: 5px;">*</a>비밀번호 재확인
											</div>
										</td>
										<td colspan="3" class="user_password2"
											style="padding-left: 10px;"><input type="password"
											name="user_password2" size="30" value=""></td>
									</tr>
									<tr>
										<td class="email">
											<div align="right">
												<a style="color: red; padding-right: 5px;">*</a>이메일
											</div>
										</td>
										<td colspan="3" class="email" style="padding-left: 10px;">
											<input type="text" name="email1" value="" size="15">
											@ <select name="email2"  id="selcet1"
											style="height: 34px;">
												<option value="naver.com">naver.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="nate.com">nate.com</option>
												<option value="daum.net">daum.net</option>
												<option value="hanmail.net">hanmail.net</option>
										</select>
										</td>
									</tr>
									<tr>
										<td class="phone">
											<div align="right">
												<a style="color: red; padding-right: 5px;">*</a>핸드폰
											</div>
										</td>
										<td colspan="3" class="phone" style="padding-left: 10px;">
											<select name="phone1"  id="selcet1"
											style="height: 34px;">
												<option value="">선택</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="019">019</option>
												<option value="010">010</option>
										</select>- <input type="text" name="phone2" value="" size="3">-
											<input type="text" name="phone3" value="" size="3"> <input
											type="button" name="phone_certification"
											onclick="phone_check()" value="핸드폰인증">
										</td>
									</tr>
									<tr>
										<td class="addr1">
											<div align="right">
												<a style="color: red; padding-right: 5px;">*</a>주소
											</div>
										</td>
										<td colspan="3" class="addr1" style="padding-left: 10px;">
											<input type="text" name="addr1" value="" size="10"> <input
											type="button" name="addr1_certification" value="주소검색"
											onclick="DaumPostcode()">
										</td>
									</tr>
									<tr>
										<td class="addr2">
											<div align="right">상세주소</div>
										</td>
										<td colspan="3" class="addr2" style="padding-left: 10px;">
											<input type="text" name="addr2" size="20" value="">
										</td>
									</tr>

								</table>
								<!-- ----- DAUM 우편번호 API 시작 ----- -->
								<div id="wrap"
									style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 110px; position: relative">
									<img
										src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
										id="btnFoldWrap"
										style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
										onclick="foldDaumPostcode()" alt="접기 버튼">
								</div>

								<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
								<script>
									// 우편번호 찾기 화면을 넣을 element 
									var element_wrap = document
											.getElementById('wrap');
									function foldDaumPostcode() {
										// iframe을 넣은 element를 안보이게 한다. 
										element_wrap.style.display = 'none';
									}
									function DaumPostcode() {
										// 현재 scroll 위치를 저장해놓는다. 
										var currentScroll = Math
												.max(
														document.body.scrollTop,
														document.documentElement.scrollTop);
										new daum.Postcode(
												{
													oncomplete : function(data) {
														// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 

														// 각 주소의 노출 규칙에 따라 주소를 조합한다. 
														// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다. 
														var fullAddr = data.address; // 최종 주소 변수
														var extraAddr = ''; // 조합형 주소 변수 

														// 기본 주소가 도로명 타입일때 조합한다. 
														if (data.addressType === 'R') {
															//법정동명이 있을 경우 추가한다. 
															if (data.bname !== '') {
																extraAddr += data.bname;
															}
															// 건물명이 있을 경우 추가한다. 
															if (data.buildingName !== '') {
																extraAddr += (extraAddr !== '' ? ', '
																		+ data.buildingName
																		: data.buildingName);
															}
															// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다. 
															fullAddr += (extraAddr !== '' ? ' ('
																	+ extraAddr
																	+ ')'
																	: '');
														}
														// 우편번호와 주소 정보를 해당 필드에 넣는다. 
														document
																.getElementById('addr1').value = data.addr1; //5자리 새우편번호 사용 
														//document.getElementById('addr1').value = fullAddr; 

														// iframe을 넣은 element를 안보이게 한다. 
														// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.) 
														element_wrap.style.display = 'none';

														// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다. 
														document.body.scrollTop = currentScroll;
														$('#addr2').focus();
													},
													// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다. 
													onresize : function(size) {
														element_wrap.style.height = size.height
																+ 'px';
													},
													width : '100%',
													height : '100%'
												}).embed(element_wrap);
										// iframe을 넣은 element를 보이게 한다. 
										element_wrap.style.display = 'block';
									}
								</script>
								<!-- ----- DAUM 우편번호 API 종료----- -->

							</div>
						</section>

					</div>
					<div class="container">
						<div id="RightBox">
							<table style="width:450px; height:330px;">
								<tr>
									<td style="padding-left: 15px;"><input type="checkbox"
										name="full_agree" id="full_agree" onclick="checkAllCheckbox()"
										value="on"> 전체 동의</td>
								</tr>
								<tr>
									<td style="padding-left: 15px;"><input type="checkbox"
										name="agree" id="agree1" value="on"><a
										style="color: red;">*</a> 이용 약관</td>
								</tr>
								<tr>
									<td style="text-align: center; padding-left: 10px;"><textarea
											cols=55 rows=4 name="contents" disabled>
     가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
회원가입
- 이름, 아이디, 비밀번호, 주소, 연락처(메일주소, 휴대폰 번호), 가입인증정보
만14세 미만 아동 회원가입
- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보
단체아이디 회원가입
- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
- 선택항목 : 대표 홈페이지, 대표 팩스번호
둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다.
넷째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.
- 신용카드 결제시 : 카드사명, 카드번호 등
- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
- 계좌이체시 : 은행명, 계좌번호 등
- 상품권 이용시 : 상품권 번호
  나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다.
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 배송요청
- 협력회사로부터의 제공
- 생성정보 수집 툴을 통한 수집
   </textarea></td>

								</tr>
								<tr>
									<td style="padding-left: 10px;">
										<div align="left" style="padding-left: 5px;">
											<input type="checkbox" name="agree" id="agree2" value="on"><a
												style="color: red;">*</a>개인정보 수집 및 이용안내
										</div>
									</td>

								</tr>
								<tr>
									<td style="padding-left: 15px;"><textarea cols=55 rows=4
											name="contents" disabled>본인은 회원가입과 관련하여 개인정보를 제공하며, 다음과 같은 개인정보 수집, 이용 등에 동의합니다.
목적 및 업체 이외로 고객의 개인정보를 이용 또는 제공하지 않습니다.
다만, 법령의 규정에 의거하거나 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우에는 예외로 합니다.
본 동의서 내용은 회사 정책에 따라 변경될 수 있으며, 변경 내용은 회사 홈페이지에 공지하거나 법령에 따라 필요한 절차를 진행할 수 있습니다.</textarea>
									</td>

								</tr>
								<tr>
									<td style="padding-left: 15px;">
										<div align="left">
											<input type="checkbox" name="agree" id="agree3" value="on">마켓팅
											수신 동의
										</div>
									</td>

								</tr>
								<tr>
									<td style="padding-left: 15px;"><textarea cols=55 rows=3
											name="contents" disabled>쇼핑몰에서는 회원가입시 수집된 개인정보를 이용하여 탈퇴시까지 각종 서비스, 상품에 대하여 홍보 목적으로 본인에게 정보, 전화, SMS, 이메일 등의 방법으로 전달합니다.</textarea>

									</td>

								</tr>

							</table>


						</div>
					</div>
				</section>
			</form>
		</div>
	</section>

	<div style="text-align: center; padding-bottom: 70px">
		<input type="button" name="modify" value="회원가입 "
			style="padding-left: 10px; background-color: #212529; color: white; border-radius:2px;" onclick="Check_Join()"> <input
			type="reset" name="reset" value="취    소" style="width: 75px; background-color: #212529; color: white; border-radius:2px; margin-left:20px;"
			onclick="location.href='/Main'">
	</div>








	<!-- 내용 끝 -->
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
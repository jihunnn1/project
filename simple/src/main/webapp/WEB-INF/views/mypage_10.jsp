<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>

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
</style>
<script type="text/javascript">
	//로그인
	function Check_Join() {
		var form = document.CheckJoin;

		if (form.memName.value == "") {
			alert("이름을 입력하지 않았습니다.")
			form.memName.focus();
			return false;
		}

		if (form.memName.value.length < 2) {
			alert("이름을 2자 이상 입력해주십시오.")
			document.form.memName.focus();
			return false;
		}

		//아이디 입력여부 검사
		if (form.memId.value == "") {
			alert("아이디를 입력해주세요!")
			form.memId.focus();
			return false;
		}
		//아이디 유효성 검사 (영문소문자, 숫자만 허용)
		for (var i = 0; i < form.memId.value.length; i++) {
			ch = form.memId.value.charAt(i)
			if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
					&& !(ch >= 'A' && ch <= 'Z')) {
				alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.")
				form.memId.focus();
				form.memId.select();
				return false;
			}
		}

		//아이디에 공백 사용하지 않기
		if (form.memId.value.indexOf(" ") >= 0) {
			alert("아이디에 공백을 사용할 수 없습니다.")
			form.memId.focus();
			form.memId.select();
			return false;
		}
		//아이디 길이 체크 (4~12자)
		if (form.memId.value.length<4 || form.memId.value.length>12) {
			alert("아이디를 4~12자까지 입력해주세요.")
			form.memId.focus();
			form.memId.select();
			return false;
		}

		//비밀번호 입력여부 체크
		if (form.memPwd.value == "") {
			alert("비밀번호를 입력하지 않았습니다.")
			form.memPwd.focus();
			return false;

		}
		if (form.memPwd.value == form.memId.value) {
			alert("아이디와 비밀번호가 같습니다.")
			form.memPwd.focus();
			return false;
		}
		//비밀번호 길이 체크(10자이상 허용)
		if (form.memPwd.value.length < 9) {
			alert("비밀번호를 10자이상 입력해주세요.")
			form.memPwd.focus();
			form.memPwd.select();
			return false;
		}
		//비밀번호 유효성 검사 (영문소문자, 숫자만 허용)
		for (var i = 0; i < form.memPwd.value.length; i++) {
			ch = form.memPwd.value.charAt(i)
			if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
					&& !(ch >= 'A' && ch <= 'Z')) {
				alert("비밀번호는 영문 대소문자, 숫자만 입력가능합니다.")
				form.memPwd.focus();
				form.memPwd.select();
				return false;
			}
		}
		//비밀번호와 비밀번호 확인 일치여부 체크
		if (form.memPwd.value != form.memPwd1.value) {
			alert("비밀번호가 일치하지 않습니다")
			form.memPwd1.value = ""
			form.memPwd1.focus();
			return false;
		}
		if (form.memEmail.value == "") {
			alert("이메일을 입력하지 않았습니다.")
			form.memEmail.focus();
			return false;
		}

		for (var i = 0; i < form.memEmail.value.length; i++) {
			chm = form.memEmail.value.charAt(i)
			if (!(chm >= '0' && chm <= '9') && !(chm >= 'a' && chm <= 'z')
					&& !(chm >= 'A' && chm <= 'Z')) {
				alert("이메일은 영문 대소문자, 숫자만 입력가능합니다.")
				form.memEmail.focus();
				form.memEmail.select();
				return false;
			}
		}
		if (form.memPhoneNum.value == "") {
			alert("핸드폰번호를 입력하지 않았습니다..")
			form.memPhoneNum.focus();
			return false;
		}

		if (form.memPhoneNum1.value == "") {
			alert("핸드폰번호를 입력하지 않았습니다.")
			form.memPhoneNum1.focus();
			return false;
		}

		for (var i = 0; i < form.memPhoneNum1.value.length; i++) {
			ch = form.memPhoneNum1.value.charAt(i)
			if (!(ch >= '0' && ch <= '9')) {
				alert("핸드폰번호는 숫자만 입력가능합니다.")
				form.memPhoneNum1.focus();
				form.memPhoneNum1.select();
				return false;
			}
		}
		if (form.memPhoneNum2.value == "") {
			alert("핸드폰번호를 입력하지 않았습니다.")
			form.memPhoneNum2.focus();
			return false;
		}
		for (var i = 0; i < form.memPhoneNum2.value.length; i++) {
			ch = form.memPhoneNum2.value.charAt(i)
			if (!(ch >= '0' && ch <= '9')) {
				alert("핸드폰번호는 숫자만 입력가능합니다.")
				form.memPhoneNum2.focus();
				form.memPhoneNum2.select();
				return false;
			}
		}
		if (form.memAdr.value == "") {
			alert("주소를 입력하지 않았습니다.")
			form.memAdr.focus();
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
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//주문자 우편번호
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample6_address').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('sample6_address2').focus();
					}
				}).open();
	}
</script>
</head>
<title>주문결제창</title>
<body>


	<!-- 마이페이지 타이틀 -->
	<section class="ftco-section"
		style="padding-top: 50px; margin-bottom: 50px; padding-bottom: 0px; height: 700px;">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3"
				style="background-color: #f5f5f5; border: 1px solid #e7e7e7; margin-top: 50px;">
				<div class="col-md-20 heading-section ftco-animate"
					style="height: 60px;">
					<h2 class="mb-4" style="font-size: 35px; margin-top: 15px;">마이페이지</h2>
				</div>
			</div>
			<!-- 마이페이지 타이틀 끝 -->
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
			<!-- Left Menu -->
			<jsp:include page="/WEB-INF/views/common/mypage_sidemenu.jsp"
				flush="false" />
			<!-- left Menu 끝-->
			
			
			<!-- 내용 -->
			<section>
			회원정보 수정을 위해 비밀번호를 한번 더 입력해주세요.
			<form action="${contextPath}/modmember.do" method="post">
			<input type="password" name="memPwd">
			<input type="submit" value="입력">			
			</form>
			</section>
		</div>
	</section>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>









	<!-- 내용 끝 -->
</body>
</html>

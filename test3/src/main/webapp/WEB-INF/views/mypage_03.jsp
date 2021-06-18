<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript">

	
	<!--폼 입력 유효성 검사-->
	  function Check_modify()
	  {       
		  	  //이름 입력 체크
	          var form = document.Checkmodify;
	          
	          if (form.user_name.value == "") {
	              alert("이름을 입력하지 않았습니다.")
	              form.user_name.focus();
	              return false;
	          }
	   
	          if(form.user_name.value.length<2){
	              alert("이름을 2자 이상 입력해주십시오.")
	              document.form.user_name.focus();
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
	          if (form.user_password1.value.length<9) {
	              alert("비밀번호를 10자이상 입력해주세요.")
	              form.user_password1.focus();
	              form.user_password1.select();
	              return false;
	          }
	          //비밀번호 유효성 검사 (영문소문자, 숫자만 허용)
	          for (var i = 0; i < form.user_password1.value.length; i++) {
	               ch = form.user_password1.value.charAt(i)
	               if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
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
	              chm =form.email1.value.charAt(i)
	              if (!(chm >= '0' && chm <= '9') && !(chm >= 'a' && chm <= 'z')&&!(chm >= 'A' && chm <= 'Z')) {
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
	          
         form.submit();


	   }
	  
	  function checkAllCheckbox(obj) { 
		  $("input[name='agree']").prop('checked',true);
		  $("[name=agree]").prop("checked", $(obj).prop("checked") );
		  
	 }
	  function checkOneCheckbox(obj) { 
		  var allObj = $("[name=full_agree]");
			var objName = $(obj).attr("name");

			if( $(obj).prop("checked") )
			{
				checkBoxLength = $("[name="+ objName +"]").length;
				checkedLength = $("[name="+ objName +"]:checked").length;

				if( checkBoxLength == checkedLength ) {
					allObj.prop("checked", true);
				} else {
					allObj.prop("checked", false);
				}
			}
			else
			{
				allObj.prop("checked", false);
			}
		}

		$(function(){
			$("[name=full_agree]").click(function(){
				checkAllCheckbox( this );
			});
			$("[name=agree]").each(function(){
				$(this).click(function(){
					checkOneCheckbox( $(this) );
				});
			});
		});
	  
		//핸드폰 인증 팝업창
		  function phone_check(){
			  window.open("phone_check.jsp", "phonewin", "width=400, height=350");
		  }
		  
		  
		  //주소검색 팝업창
		  function search_address(){
			  window.open("","b","width-600, height=300,left=200, top=100");
		  }
	
</script>



<style>
#main_box { /*아이디 선택자*/
	display: flex;
	flex-direction: column;
	align-items: center;
	padding-top: 10px;
}

#Mypage { /*아이디 선택자*/
	display: flex;
	flex-direction: column;
	width: 1300px;
	height: 100px;
	align-items: center;
	padding-top: 10px;
	padding-right: 20px;
	font-size: 10px;
}

.my_row {
	flex-direction: row;
}

.container1 {
	width: 250px;
}

.container2 {
	width: 800px;
}

#sect {
	display: flex;
	flex-direction: row;
	padding-bottom: 10px;
}

.nav_MyPage {
	width: 120px;
	list-style-type: none;
	margin: 0;
	padding: 0;
	font-size: 14px;
}

#MyPage_center1 {
	border: 1px solid rgb(140, 140, 140);
}

.nav_MyPage li a {
	display: block;
	color: #000000;
	padding: 8px;
	text-align: center;
	text-decoration: none;
	font-weight: bold;
}

.nav_MyPage li a.current {
	background-color: rgb(200, 200, 200);
	color: block;
}

.nav_MyPage li a: hover:not(.current) {
	background-color: #CD853F;
	color: white;
}

#MyPage_top {
	padding-top: 50px;
	align-items: center;
	width: 700px;
	height: 100px;
}

#MyPage_top1 {
	padding-top: 50px;
	align-items: center;
	padding-left: 330px;
	width: 700px;
	height: 100px;
}

#MyPage_top2 {
	padding-top: 50px;
	align-items: center;
	padding-left: 200px;
	width: 700px;
	height: 100px;
}

.PASSWORD_confirm_text {
	position: relative;
	left: 15px;
}

#MyPage_top3 {
	align-items: center;
	padding-left: 300px;
	width: 700px;
	height: 100px;
}

.btn_PASSWORD_confirm {
	position: relative;
	font-size: 15px;
	width: 80px;
}

.btn_main_back {
	position: relative;
	left: 14px;
	font-size: 15px;
	width: 80px;
}

#Mypage_nav {
	width: 400px;
}

#Mypage-center {
	display: flex;
	flex-direction: row;
}

#Mypage_nav {
	display: flex;
	flex-direction: column;
	width: 120px;
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

#buttonmy {
	width: 80px;
	height: 30px;
	float: left;
	border-radius: 2px;
	padding-top: 1.8px;
	background-color: #212529;
	border-radius: 2px;
	color: white;
}
</style>
</head>
<title>주문결제창</title>
<body>

	
	<!-- 마이페이지 상단메뉴 -->
	<section class="ftco-section"
		style="padding-top: 50px; margin-bottom: 50px; padding-bottom: 0px; height:700px;">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3"
				style="background-color: #f5f5f5; border: 1px solid #e7e7e7; margin-top: 50px;">
				<div class="col-md-20 heading-section ftco-animate"
					style="height: 60px;">
					<h2 class="mb-4" style="font-size: 35px; margin-top: 15px;">마이페이지</h2>
				</div>
			</div>
	<!-- 마이페이지 상단메뉴 끝 -->
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
			<div class="col-lg-2"
				style="float: left; margin-right: 50px; width: 230px; font-size: 17px; padding-left: 0px; padding-top: 13px;">
				<div class="list-group list-group-flush">
					<a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">마이
						쇼핑</a> <a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">회원정보
						수정</a> <a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">주문/배송조회</a>
					<a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">취소/반품내역</a>
					<a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">장바구니</a>
					<a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">관심상품</a>
					<a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">1:1문의</a>
					<a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">A/S접수</a>
					<a href="#"
						class="list-group-item list-group-item-action text-center font-weight-bold">상품
						리뷰</a>
				</div>
			</div>
		<!-- left Menu 끝-->
	<!-- 내용 -->
			<div class="container02"
				style="padding-left: 200px; padding-top: 25px; margin-bottom: .30px;">
				<h5 style="font-size:18px;">회원정보 수정</h5>	
				<form name="Checkmodify" action="#" method="post">
					
					<table style="width:1000px; height:400px; border:1px solid black; " >
						<tr>
							<td
								style="background-color: #212529; border-bottom: 1px solid white;"
								class="user_name" width="250">
								<div align="center" style="color: white;">
									<a style="color: red; padding-right: 5px; ">*</a>이름
								</div>
							</td>
							<td colspan="3" class="user_name" style="padding-left: 10px;">
								<input type="text" name="user_name" size="25" value="">
							</td>
						</tr>
						<tr>
							<td
								style="background-color: #212529; border-bottom: 1px solid white;"
								class="user_password1">
								<div align="center" style="color: white;">
									<a style="color: red; padding-right: 5px;">*</a>비밀번호
								</div>
							</td>
							<td colspan="3" class="user_password1"
								style="padding-left: 10px;"><input type="password"
								name="user_password1" size="25" value=""></td>
						</tr>
						<tr>
							<td
								style="background-color: #212529; border-bottom: 1px solid white;"
								class="user_password2">
								<div align="center" style="color: white;">
									<a style="color: red; padding-right: 5px;">*</a>비밀번호 재확인
								</div>
							</td>
							<td colspan="3" class="user_password2"
								style="padding-left: 10px;"><input type="password"
								name="user_password2" size="25" value=""></td>
						</tr>
						<tr>
							<td
								style="background-color: #212529; border-bottom: 1px solid white;"
								class="email">
								<div align="center" style="color: white;">
									<a style="color: red; padding-right: 5px;">*</a>이메일
								</div>
							</td>
							<td colspan="3" class="email" style="padding-left: 10px;"><input
								type="text" name="email1" value="" size="20"> @ <select
								name="email2"  id="selcet1"
								style="height: 35px; width: 200px;">
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="nate.com">nate.com</option>
									<option value="daum.net">daum.net</option>
									<option value="hanmail.net">hanmail.net</option>
							</select></td>
						</tr>
						<tr>
							<td
								style="background-color: #212529; border-bottom: 1px solid white;"
								class="phone">
								<div align="center" style="color: white;">
									<a style="color: red; padding-right: 5px;">*</a>핸드폰
								</div>
							</td>
							<td colspan="3" class="phone" style="padding-left: 10px;"><select
								name="phone1"  id="selcet1"
								style="height: 35px; width: 80px;">
									<option value="">선택</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="019">019</option>
									<option value="010">010</option>
							</select>- <input type="text" name="phone2" value="" size="5">- <input
								type="text" name="phone3" value="" size="5"> <input
								type="button" name="phone_certification" value="핸드폰인증">
							</td>
						</tr>
						<tr>
							<td
								style="background-color: #212529; border-bottom: 1px solid white;"
								class="addr1">
								<div align="center" style="color: white;">
									<a style="color: red; padding-right: 5px;">*</a>주소
								</div>
							</td>
							<td colspan="3" class="addr1" style="padding-left: 10px;"><input
								type="text" name="addr1" value="" size="15"> <input
								type="button" name="addr1_certification" value="주소검색" onclick="DaumPostcode()"></td>
						</tr>
						<tr>
							<td
								style="background-color: #212529; border-bottom: 1px solid white;"
								class="addr2">
								<div align="center" style="color: white;">상세주소</div>
							</td>
							<td colspan="3" class="addr2" style="padding-left: 10px;"><input
								type="text" name="addr2" size="40" value=""></td>
						</tr>

					</table>
        <!-- ----- DAUM 우편번호 API 시작 ----- --> 
         <div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 110px;position:relative"> 
           <img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼"> 
         </div> 
         
         <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
         <script>
         // 우편번호 찾기 화면을 넣을 element 
         var element_wrap = document.getElementById('wrap'); 
         function foldDaumPostcode() { 
        	 // iframe을 넣은 element를 안보이게 한다. 
        	 element_wrap.style.display = 'none'; 
         } 
         function DaumPostcode() {
        	 // 현재 scroll 위치를 저장해놓는다. 
        	 var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop); 
        	 new daum.Postcode({ 
        		 oncomplete: function(data) { 
        			 // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 
        			 
        			 // 각 주소의 노출 규칙에 따라 주소를 조합한다. 
        			 // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다. 
        			 var fullAddr = data.address; // 최종 주소 변수
        			 var extraAddr = ''; // 조합형 주소 변수 
        			 
        			 // 기본 주소가 도로명 타입일때 조합한다. 
        			 if(data.addressType === 'R'){ 
        				 //법정동명이 있을 경우 추가한다. 
        				 if(data.bname !== ''){ 
        					 extraAddr += data.bname; 
        					 } 
        				 // 건물명이 있을 경우 추가한다. 
        				 if(data.buildingName !== ''){ 
        					 extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName); 
        					 } 
        				 // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다. 
        				 fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : ''); 
        				 } 
        			 // 우편번호와 주소 정보를 해당 필드에 넣는다. 
        			 document.getElementById('addr1').value = data.addr1; //5자리 새우편번호 사용 
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
        				 element_wrap.style.height = size.height+'px';
        				 }, width : '100%',
        				 height : '100%' }).embed(element_wrap); 
        	 // iframe을 넣은 element를 보이게 한다. 
        	 element_wrap.style.display = 'block';
        	 } 
         </script> 
         </form>	
         <!-- ----- DAUM 우편번호 API 종료----- -->					
				
					<div align="center" id="btn_modify_reset"
						style="margin-top: 30px; margin-left: 500px;">
						<input type="submit" name="modify" value="수 정 " id="buttonmy"
							onClick="Check_modify()" style="margin-right: 20px; cursor:pointer;">
						<input type="button"  value="취   소" id="buttonmy"
							onclick="location.href='/mypage_01'" style="cursor:pointer;">
					</div>
			</div>

	<!-- 내용 -->

		</div>
	</section>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
  </body>
</html>
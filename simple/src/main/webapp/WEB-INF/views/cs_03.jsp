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

#recentlyProduct {
	
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
			<!--  최근 본 상품 끝 -->

			<!-- 내용 -->
			<div class="btn-group btn-group-justified" role="group"
				aria-label="..." style="margin-bottom: 30px; margin-top: 10px;">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default"
						style="font-size: 25px; border: none; color: #5a5a5a; padding-right: 210px; background-color: white; margin-left: 28px;">*공지사항</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default"
						style="font-size: 28px; font-weight: bold; border: none; color: #5a5a5a; padding-right: 210px; background-color: white;">*자주
						묻는 질문</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default"
						style="font-size: 25px; border: none; color: #5a5a5a; padding-right: 210px; background-color: white;">*1:1문의</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default"
						style="font-size: 25px; border: none; color: #5a5a5a; background-color: white;">*A/S센터</button>
				</div>
			</div>
		</div>
		<form>
			<input type="text" class="form-control" id="inputbox"
				style="margin-top: 10px; margin-left: 1330px;">
			<button type="submit" class="btn btn-default"
				style="margin-top: -62px; margin-left: 1535px; padding-top: 4px; background-color: #dcdcdc; border-radius: 2px; height: 34px;">검색</button>
		</form>

		<div>

			<table class="table"
				style="margin-bottom: 50px; width: 1275px; margin-left: 320px;">
				<thead class="table-dark" align=center>
					<tr align="center">
						<td scope="col" width="100">번호</td>
						<td scope="col" width="500">내용</td>

					</tr>
					<c:forEach var="question" items="${questionList}" varStatus="questionNum">
					<tr
						style="border-bottom: 1px solid #c6c8ca; background-color: white; color: black; border-bottom: 1px solid #32383e;">

						<td scope="col" width="50" style="padding-top: 12px;">${question.questionNum }</td>
						<td align="left" scope="col" width="500"
							style="padding-top: 15px; padding-bottom: 0px;">
							<div>
								<div id="section1b" class="label">
									<p
										style="color: black; text-align: left; cursor: pointer; font-size: 15px; font-weight: normal;">
										<span style="color: red">Q</span>. ${question.questionTitle }
									</p>
								</div>
								<div id="section1b" class="elements">
									<hr style="margin-bottom: 20px; margin-top: 0px;">
									<p
										style="color: black; text-align: left; cursor: pointer; font-size: 15px;">
										<span style="color: green;">A</span>. ${question.questionContent }
									</p>
								</div>
							</div>
						</td>
					</tr>
					</c:forEach>
				</thead>
			</table>
			<!-- -아코디언메뉴 -->
			<script type="text/javascript">
				var elements = document.getElementsByTagName("div");

				// 모든 영역 접기
				for (var i = 0; i < elements.length; i++) {
					if (elements[i].className == "elements") {
						elements[i].style.display = "none";
					} else if (elements[i].className == "label") {
						elements[i].onclick = switchDisplay;
					}
				}

				// 상태에 따라 접거나 펼치기
				function switchDisplay() {

					var parent = this.parentNode;
					var target = parent.getElementsByTagName("div")[1];

					if (target.style.display == "none") {
						target.style.display = "block";
					} else {
						target.style.display = "none";
					}
					return false;
				}
			</script>
		</div>
		<!-- 내용 끝 -->
		<!-- 페이징 글번호 -->
		<div class="page_wrap" style="margin-left: 30px; margin-top: 60px;">
			<div class="page_nation">
				<a class="arrow pprev" href="#"></a> <a class="arrow prev" href="#"></a>
				<a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a>
				<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
				<a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a
					class="arrow next" href="#"></a> <a class="arrow nnext" href="#"></a>
			</div>
		</div>
	</section>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">
<head>


<style>
@import url(https://fonts.googleapis.com/css?family=Raleway:500);

.snip1284 {
	font-family: 'Raleway', Arial, sans-serif;
	text-align: center;
	text-transform: uppercase;
	font-weight: 500;
	letter-spacing: 1px;
}

.snip1284 * {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all 0.35s ease;
	transition: all 0.35s ease;
}

.snip1284 li {
	display: inline-block;
	list-style: outside none none;
	margin: 0.5em 1.2em;
	padding: 0;
}

.snip1284 a {
	padding: 0 0.6em;
	color: rgba(255, 255, 255, 0.5);
	position: relative;
	text-decoration: none;
}

.snip1284 a:before, .snip1284 a:after {
	width: 3px;
	height: 0;
	position: absolute;
	content: '';
	-webkit-transition: all 0.35s ease;
	transition: all 0.35s ease;
	background-color: #7e9c8c;
}

.snip1284 a:before {
	top: 0;
	right: 0;
}

.snip1284 a:after {
	bottom: 0;
	left: 0;
}

.snip1284 a:hover, .snip1284 .current a {
	color: #ffffff;
}

.snip1284 a:hover:before, .snip1284 .current a:before, .snip1284 a:hover:after,
	.snip1284 .current a:after {
	height: 100%;
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
</style>


</head>
<body>




	<section class="ftco-section" style="padding-top: 30px;">
		<div class="container">

			<img src="${contextPath}/resources/images/product/selina.jpg"
				width=100% height=350px style="margin-bottom: 30px;">
<!-- 최근 본 상품 -->
			<div id="recentlyProduct"
				style="position: absolute; left:80px;width: 120px; height: 310px; margin-left: 1650px; border: 1px solid #d2d2d2; margin-top: -130px;">
				

				<ul
					style="list-style: none; margin-top: 10px; padding-left: 20px; margin-bottom: 10px;">
					<li><a href="#"
						style="padding-left: -10px; padding-bottom: 1px; color: black;">최근본상품</a></li>
				</ul>
				<hr style="margin-top: 0px; margin-bottom: 0px; color: #d2d2d2;">
				<ul style="list-style: none; padding-top: 5px;">
				<c:choose>
				<c:when test="${empty quickList}">
				<ul
					style="list-style: none;padding-top: 80px;padding-right: 0px;padding-left: 0px;">
					<li><a
						style="color: black; text-align: center; margin-top: 8px; padding-top: 30px;">상품</a></li>
						<li><a
						style="color: black; text-align: center; margin-top: 8px; padding-top: 30px;">없음</a></li>
				</ul>
				</c:when>
				<c:otherwise>
				<c:forEach var="item" items="${quickList}" varStatus="itemNum" >
				<li><a href="${contextPath}/product/viewProduct.do?productNum=${item.productNum}">
					<img src="${contextPath}/download_product.do?productNum=${item.productNum}&productImage=${item.productImage}" style="width: 100px; height: 100px; padding-top: 10px; margin-left: -30px;"></a>
				</li>
		
			
				</c:forEach>
				</c:otherwise>
				</c:choose>
				</ul>
				<c:choose>
				<c:when test="${!empty quickList }">
				<hr style="margin-top: 0px; margin-bottom: 0px; color: #d2d2d2;">
				<ul
					style="list-style: none; padding-left: 30px; margin-bottom: 10px; margin-top: 8px;">
					<li><a href="${contextPath}/mypage_09.do"
						style="color: black; text-align: center; margin-top: 8px; padding-top: 30px;">더보기▼</a></li>
				</ul>
				</c:when>
				</c:choose>
				
			</div>
			
			<!-- 최근 본 상품 끝 -->

			<ul class="snip1284" style="margin-bottom: 30px; font-weight: bold;">
				<li class="current"><a
					onclick="location.href ='${contextPath}/product/listProduct.do?sort=침대&subsort=싱글'"
					data-hover="싱글"
					style="font-size: 17px; border: none; color: #5a5a5a; margin-right: 150px; cursor: pointer; background-color: white; padding-bottom: 0px;">싱글</a></li>


				<li><a
					onclick="location.href ='${contextPath}/product/listProduct.do?sort=침대&subsort=킹'"
					data-hover="킹"
					style="font-size: 17px; border: none; color: #5a5a5a; margin-right: 150px; cursor: pointer; background-color: white; padding-bottom: 0px;">킹</a></li>


				<li><a
					onclick="location.href ='${contextPath}/product/listProduct.do?sort=침대&subsort=이층침대'"
					data-hover="이층침대"
					style="font-size: 17px; border: none; color: #5a5a5a; margin-right: 150px; cursor: pointer; background-color: white; padding-bottom: 0px;">이층침대</a></li>


				<li><a
					onclick="location.href ='${contextPath}/product/listProduct.do?sort=침대&subsort=패밀리'"
					data-hover="패밀리"
					style="font-size: 17px; border: none; color: #5a5a5a; background-color: white; cursor: pointer; padding-bottom: 0px; margin-right: 150px;">패밀리</a></li>
				<li><a
					onclick="location.href ='${contextPath}/product/listProduct.do?sort=침대&subsort=퀸'"
					data-hover="패밀리"
					style="font-size: 17px; border: none; color: #5a5a5a; background-color: white; cursor: pointer; padding-bottom: 0px;">퀸</a></li>
			</ul>
			<hr style="margin-bottom: 0px;">
			<div class="btn-group" role="group" aria-label="..."
				style="margin-bottom: 25px; margin-top: 10px;">
				<button type="button" class="btn btn-default"
					style="border: 0; outline: 0; border-radius: 1px; background-color: white; font-size: 13px;">인기순</button>
				<button type="button" class="btn btn-default"
					style="border: 0; outline: 0; background-color: white; font-size: 13px;">낮은가격순</button>
				<button type="button" class="btn btn-default"
					style="border: 0; outline: 0; background-color: white; font-size: 13px;">높은가격순</button>
				<button type="button" class="btn btn-default"
					style="border: 0; outline: 0; border-radius: 1px; background-color: white; font-size: 13px;">상품평순</button>
			</div>
			<hr style="margin-top: -15px; margin-bottom: 30px;">





			<div class="row">
				<c:choose>
					<c:when test="${empty productList}">
						<b><span style="color: black;">등록된 상품이 없습니다.</span></b>
					</c:when>
					<c:when test="${!empty productList}">
						<c:forEach var="product" items="${productList}"
							varStatus="productNum">
							<div class="col-md-4 ftco-animate">
								<div class="blog-entry">
									<c:choose>
										<c:when
											test="${not empty product.productImage && product.productImage != 'null'}">
											<input type="hidden" name="OrignProductFile"
												value="${product.productImage}" class="block-20" />
											<a
												href="${contextPath}/product/viewProduct.do?productNum=${product.productNum}">
												<img class="block-20" style="width: 400px;"
												src="${contextPath}/download_product.do?productNum=${product.productNum}&productImage=${product.productImage}"
												id="preview" />
											</a>
										</c:when>
									</c:choose>
									<div class="text d-flex py-1">
										<div class="desc">
											<h3 class="heading">
												<a style="font-size: 15px;"
													href="${contextPath}/product/viewProduct.do?productNum=${product.productNum}">${product.productName}</a>
												<a style="fontsize: 10px; margin-top: 7px;"><span
													class="favoriteText"
													style="color: #7e9c8c; margin-top: 5px; font-size: 15px; float: right; margin-right: 1px;">
														${product.favoriteCount}</span><img
													src="${contextPath}/resources/images/heartfull.jpg"
													id="favoritHeart"
													style="width: 13px; height: 13px; margin-top: 9px; margin-bottom: 3px; float: right;" /></a>
											</h3>

											<hr style="margin-top: 10px; margin-bottom: 10px;">
											<h3 class="heading"
												style="float: right; white-space: nowrap; margin-bottom: 10px;">
												<a href="#" style="font-size: 16px;"><fmt:formatNumber
														pattern="###,###,###" value="${product.productPrice}" />원</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:when>
				</c:choose>


			</div>
		</div>


	</section>


</body>
</html>
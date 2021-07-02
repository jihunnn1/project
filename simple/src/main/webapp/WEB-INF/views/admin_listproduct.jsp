<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
</style>

</head>
<body>

	
	<img src="${contextPath}/resources/images/product-01.jpg" width=100%
		height=350px>

	<section class="ftco-section" style="padding-top: 30px;">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3"
				style="background-color: #f5f5f5; border: 1px solid #e7e7e7; margin-top: 20px;">
				<div class="col-md-20 heading-section ftco-animate"
					style="height: 60px;">
					<h2 class="mb-4" style="font-size: 35px; margin-top: 15px;">상품 관리</h2>
				</div>
			</div>

			

			<div class="btn-group btn-group-justified" role="group"
				aria-label="..." style="margin-bottom: 30px; margin-top: 10px;">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" onclick="location.href='${contextPath}/product/admin_listProduct.do'"
						style="font-size: 25px; border: none; color: #5a5a5a; padding-right: 210px; background-color: white; margin-left: 10px; font-weight: bold;">*상품조회</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" onclick="location.href='${contextPath}/product/add_product.do'"
						style="font-size: 25px; border: none; color: #5a5a5a; padding-right: 210px; background-color: white;">상품등록</button>
				</div>
			
			</div>

		
			<hr style="margin-top: -10px;">




              
			<div class="row">
			   <c:choose>
			      <c:when test="${empty admin_productList}">
			         <b><span style="color:black;">등록된 상품이 없습니다.</sapn></b>
			      </c:when>
			      <c:when test="${!empty admin_productList}">
			      <c:forEach var="product" items="${admin_productList}" varStatus="productNum">
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
					
						<a href="${contextPath}/product/admin_detailproduct.do?productNum=${product.productNum}" class="block-20"
							style="background-image: url('${contextPath}/resources/images/image_1.jpg');">
						</a>
						<div class="text d-flex py-1">
							<div class="desc pl-2">
								<h3 class="heading">
									<a href="${contextPath}/product/admin_detailproduct.do?productNum=${product.productNum}">${product.productName}</a>
								</h3>
								<hr style="margin-top: 25px;">
							
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
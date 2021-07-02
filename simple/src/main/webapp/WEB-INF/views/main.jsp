<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>

	<!-- END nav -->

	<section class="home-slider js-fullheight owl-carousel">
		<div class="slider-item js-fullheight"
			style="background-image:url(${contextPath}/resources/images/bg_1.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-center justify-content-end"
					data-scrollax-parent="true">
					<div class="col-md-7 text ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						<h1 class="mb-4"
							data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">안녕하세요
							3조 쇼핑몰입니다.</h1>
						<p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"></p>

					</div>
				</div>
			</div>
		</div>

		<div class="slider-item js-fullheight"
			style="background-image:url(${contextPath}/resources/images/bg_2.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-center justify-content-end"
					data-scrollax-parent="true">
					<div class="col-md-7 text ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						<h1 class="mb-4"
							data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">^^</h1>

					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-20 heading-section ftco-animate">
					<h2 class="mb-4">이달의 BEST 상품</h2>

				</div>
			</div>
			<div class="row">
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('${contextPath}/resources/images/product/sopia.jpg');">
						</a>
						<div class="text d-flex py-1">
							<div class="desc pl-2">
								<h3 class="heading">
									<a href="#">소피아 대리석 4인 식탁 세트</a>
								</h3>
								<h3 class="heading" style="line-height: 10px;">
									<a href="#" style="color: #acaaaa; font-size: 15px">식탁 1ea
										+ 의자 4ea</a>
								</h3>
								<hr style="margin-top: 25px;">
								<h3 class="heading"
									style="padding-left: 67%; white-space: nowrap;">
									<a href="#" style="font-size: 22px;">2,190,000원</a>
								</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry" data-aos-delay="100">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('${contextPath}/resources/images/image_2.jpg');">
						</a>
						<div class="text d-flex py-1">

							<div class="desc pl-2">
								<h3 class="heading">
									<a href="#">에바 세라믹 6인 식탁세트(오로라)</a>
								</h3>
								<h3 class="heading" style="line-height: 10px;">
									<a href="#" style="color: #acaaaa; font-size: 15px">식탁 1ea
										+ 의자 3ea + 벤치 1ea</a>
								</h3>
								<hr style="margin-top: 25px;">
								<h3 class="heading"
									style="padding-left: 67%; white-space: nowrap;">
									<a href="#" style="font-size: 22px;">1,890,000원</a>
								</h3>

							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry" data-aos-delay="200">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('${contextPath}/resources/images/image_3.jpg');">
						</a>
						<div class="text d-flex py-1">
							<div class="desc pl-2">
								<h3 class="heading">
									<a href="#">천연면피 통가죽 카우치형 소파</a>
								</h3>
								<h3 class="heading" style="line-height: 10px;">
									<a href="#" style="color: #acaaaa; font-size: 15px">1인팔걸이1ea
										+ 카우치</a>
								</h3>
								<hr style="margin-top: 25px;">
								<h3 class="heading"
									style="padding-left: 67%; white-space: nowrap;">
									<a href="#" style="font-size: 22px;">2,190,000원</a>
								</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
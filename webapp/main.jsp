<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="pf" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<!-- /*
* Template Name: Style
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<html lang="en">
<head>
<meta name="referrer" content="no-referrer" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="1234.png">

<meta name="description" content="" />
<meta name="keywords" content="free template, bootstrap, bootstrap4" />
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Single+Day&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Crimson+Text:ital@0;1&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="fonts/feather/style.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="js/bootstrap.min.js">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="js/jquery-3.6.1.min.js">
<title>펫키지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<style type="text/css">
#star a {
	text-decoration: none;
	color: gray;
}

#star a.on {
	color: red;
}

li {
	list-style: none;
}

* {
	font-family: 'Do Hyeon', sans-serif;
}
a {
	text-decoration:none;
}
</style>
</head>
<body>

	<pf:header/>
	<!-- 베스트랭킹 -->
	<div class="container pt-5">
		<div class=" border-bottom border-4 mb-4">
			<h3 class="fs-4 m-2">이벤트 상품</h3>
		</div>
		<div id="best-carousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="5000">
					<img src="images/bestranking/pic002.jpg" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img src="images/bestranking/pic003.jpg" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="images/bestranking/pic004.jpg" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="images/bestranking/pic005.jpg" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="images/bestranking/pic006.jpg" class="d-block w-100"
						alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#best-carousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#best-carousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
	<div class="container mt-4 pt-4">
		<div
			class=" border-bottom border-4 mb-4 d-flex justify-content-between">
			<h3 class="fs-4 m-2">추천 상품</h3>
			<h3 class="fs-4 m-2 fs-bold">
				오늘같은 <span style="color: #FF4081">날씨</span>엔 이런거 어때요? <span
					class="CurrIcon CurrTemp City"></span>
			</h3>
		</div>
		<div class="owl-4-slider owl-carousel">
			<c:forEach items="${ITEMB}" var="i">

					<div class="card">
						<a href="detail.do?iid=${i.iid}"> <img src="${i.iimg}"
							alt="Free Website Template by Untree.co" class="card-img-top">
						</a>
						<div class="card-body">
							<ul class="list-group list-group-flush">
								<li class="list-group-item">${i.iname}</li>
								<li class="list-group-item text-danger">${i.iprice}</li>
								<li class="list-group-item">
								<c:if test="${i.star==0}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a  >★</a>
												<!-- 자식들-->
												<a >★</a> <a >★</a> <a >★</a> <a
													>★</a>
											<p>
										</div>
									</c:if> 
								<c:if test="${i.star==1}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a style="color: red">★</a>
												<!-- 자식들-->
												<a >★</a> <a >★</a> <a >★</a> <a
													>★</a>
											<p>
										</div>
									</c:if> 
									<c:if test="${i.star==2}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a style="color: red">★</a>
												<!-- 자식들-->
												<a style="color: red">★</a> <a >★</a> <a
													>★</a> <a >★</a>
											<p>
										</div>
									</c:if> <c:if test="${i.star==3}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a style="color: red">★</a>
												<!-- 자식들-->
												<a style="color: red">★</a> <a 
													style="color: red">★</a> <a >★</a> <a >★</a>
											<p>
										</div>
									</c:if> <c:if test="${i.star==4}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a style="color: red">★</a>
												<!-- 자식들-->
												<a style="color: red">★</a> <a
													style="color: red">★</a> <a style="color: red">★</a>
												<a >★</a>
											<p>
										</div>
									</c:if> <c:if test="${i.star==5}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a style="color: red">★</a>
												<!-- 자식들-->
												<a style="color: red">★</a> <a 
													style="color: red">★</a> <a style="color: red">★</a>
												<a style="color: red">★</a>
											<p>
										</div>
									</c:if></li>
							</ul>
						</div>
					</div>

			</c:forEach>
		</div>
	</div>

	<!-- 신상 -->
	<div class="container">
		<div class=" border-bottom border-4 mb-4">
			<h3 class="fs-4 m-2">새로운 상품</h3>
		</div>
		<div class="owl-4-slider owl-carousel">
			<c:forEach items="${ITEMN}" var="i">
	
					<div class="card">
						<a href="detail.do?iid=${i.iid}"> <img src="${i.iimg}"
							alt="Free Website Template by Untree.co" class="card-img-top">
						</a>
						<div class="card-body">
							<ul class="list-group list-group-flush">
								<li class="list-group-item">${i.iname}</li>
								<li class="list-group-item  text-danger">${i.iprice}</li>
								<li class="list-group-item">
								<c:if test="${i.star==0}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a>★</a>
												<!-- 자식들-->
												<a >★</a> <a >★</a> <a >★</a> <a
													>★</a>
											<p>
										</div>
									</c:if> 
								<c:if test="${i.star==1}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a style="color: red">★</a>
												<!-- 자식들-->
												<a >★</a> <a >★</a> <a >★</a> <a
													>★</a>
											<p>
										</div>
									</c:if> 
									<c:if test="${i.star==2}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a style="color: red">★</a>
												<!-- 자식들-->
												<a style="color: red">★</a> <a >★</a> <a
													>★</a> <a >★</a>
											<p>
										</div>
									</c:if> <c:if test="${i.star==3}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a style="color: red">★</a>
												<!-- 자식들-->
												<a style="color: red">★</a> <a 
													style="color: red">★</a> <a >★</a> <a >★</a>
											<p>
										</div>
									</c:if> <c:if test="${i.star==4}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a style="color: red">★</a>
												<!-- 자식들-->
												<a style="color: red">★</a> <a
													style="color: red">★</a> <a style="color: red">★</a>
												<a >★</a>
											<p>
										</div>
									</c:if> <c:if test="${i.star==5}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a style="color: red">★</a>
												<!-- 자식들-->
												<a style="color: red">★</a> <a 
													style="color: red">★</a> <a style="color: red">★</a>
												<a style="color: red">★</a>
											<p>
										</div>
									</c:if></li>
							</ul>
						</div>
					</div>
			</c:forEach>
		</div>
	</div>
	<!-- 푸터부분 -->
	<pf:footer />
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							let weatherIcon = {
								'01' : 'fas fa-sun',
								'02' : 'fas fa-cloud-sun',
								'03' : 'fas fa-cloud',
								'04' : 'fas fa-cloud-meatball',
								'09' : 'fas fa-cloud-sun-rain',
								'10' : 'fas fa-cloud-showers-heavy',
								'11' : 'fas fa-poo-storm',
								'13' : 'far fa-snowflake',
								'50' : 'fas fa-smog'
							};
							$
									.ajax({
										url : 'http://api.openweathermap.org/data/2.5/weather?q=seoul&APPID=42b46f80ab5f222ef4545acef775a697&units=metric',

										dataType : 'json',
										type : 'GET',
										success : function(data) {
											var $Icon = (data.weather[0].icon)
													.substr(0, 2);
											var $Temp = Math
													.floor(data.main.temp)
													+ 'º';
											var $city = data.name;
											var $weath = data.weather[0].description;
											var $weather = (data.weather[0].weath);
											$('.CurrIcon')
													.append(
															'<i class="' + weatherIcon[$Icon] +'"></i>');
											$('.CurrTemp').prepend($Temp);
											$('.City').append($city);
										}
									})
						});
	</script>
</body>
</html>

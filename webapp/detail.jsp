<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="pf" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
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
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>

<style type="text/css">
#star a {
	text-decoration: none;
	color: gray;
}

#star a.on {
	color: #ffc107;
}

#starR a {
	text-decoration: none;
	color: gray;
	pointer-events: none;
}

#starR a.on {
	color: red;
	pointer-events: none;
}

li {
	list-style: none;
}

* {
	font-family: 'Do Hyeon', sans-serif;
}

a {
	text-decoration: none;
}
</style>


</head>
<body>
	<!--헤더-->
	<pf:header />
	<div class="py-4 my-4">
		<div class="container my-4">
			<div class=" border-bottom border-4 mb-4">
				<h3 class="fs-4 m-2">상품 상세 보기</h3>
			</div>
			<div class="row">
				<div class="col mx-4">
					<c:set var="o" value="${datas.itemVO}" />
					<div class="row align-items-center justify-content-around">
						<div class="w-100">
							<img src="${o.iimg}" alt="Image"
								class="w-100 img-fluid img-thumbnail">
						</div>
					</div>
				</div>
				<!-- 여기가 주문하는 곳 -->
				<div class="col mx-4">
					<div class="my-2">
						<ul class="list-group list-group-flush">
							<li class="list-group-item fs-2">${o.iname}</li>
							<li class="list-group-item fs-1 text-danger">${o.iprice}</li>
							<li class="list-group-item my-2"><c:if test="${o.star==0}">
									<P id="starR" class="fs-3" style="white-space: nowrap">
										<!-- 부모 -->
										<a>★</a>
										<!-- 자식들-->
										<a>★</a> <a>★</a> <a>★</a> <a>★</a>
									<p>
								</c:if> <c:if test="${o.star==1}">
									<div class="form-group">
										<P id="starR" class="fs-3" style="white-space: nowrap">
											<!-- 부모 -->
											<a class="text-warning">★</a>
											<!-- 자식들-->
											<a>★</a> <a>★</a> <a>★</a> <a>★</a>
										<p>
									</div>
								</c:if> <c:if test="${o.star==2}">
									<div class="form-group">
										<P id="starR" class="fs-3" style="white-space: nowrap">
											<!-- 부모 -->
											<a class="text-warning">★</a>
											<!-- 자식들-->
											<a class="text-warning">★</a> <a>★</a> <a>★</a> <a>★</a>
										<p>
									</div>
								</c:if> <c:if test="${o.star==3}">
									<div class="form-group">
										<P id="starR" class="fs-3" style="white-space: nowrap">
											<!-- 부모 -->
											<a class="text-warning">★</a>
											<!-- 자식들-->
											<a class="text-warning">★</a> <a class="text-warning">★</a> <a>★</a>
											<a>★</a>
										<p>
									</div>
								</c:if> <c:if test="${o.star==4}">
									<div class="form-group">
										<P id="starR" class="fs-3" style="white-space: nowrap">
											<!-- 부모 -->
											<a class="text-warning">★</a>
											<!-- 자식들-->
											<a class="text-warning">★</a> <a class="text-warning">★</a> <a
												class="text-warning">★</a> <a>★</a>
										<p>
									</div>
								</c:if> <c:if test="${o.star==5}">
									<div class="form-group">
										<P id="starR" class="fs-3" style="white-space: nowrap">
											<!-- 부모 -->
											<a class="text-warning">★</a>
											<!-- 자식들-->
											<a class="text-warning">★</a> <a class="text-warning">★</a> <a
												class="text-warning">★</a> <a class="text-warning">★</a>
										<p>
									</div>
								</c:if></li>
							<li class="list-group-item fs-3"><img
								src="images/2022081213561303434406818440_575.jpg" alt="Edition2">
							</li>
							<li class="list-group-item fs-3 text-success"><span
								id="info"></span> <span id="info_losttime"></span></li>
							<li class="list-group-item fs-3">
								<dl class="d-flex gap-4">
									<dt>배송비</dt>
									<dd>혜택/구매정보에서 확인</dd>
								</dl>
							</li>

						</ul>
					</div>

					<div class="position-absolute bottom-0 end-0">

						<c:choose>
							<c:when test="${not empty mid}">
								<form action="cart.do" method="post" id="item"
									class="gap-4 d-flex">
									<input type="hidden" name="iid" value="${o.iid}"> <input
										type="submit" class="btn btn-primary fs-2" value="장바구니" onclick="cartcheck();">
									<input type="button" class="btn btn-warning fs-2"
										onclick='location.href="buy.do?iid=${o.iid}"' value="구매하기">
								</form>
							</c:when>
							<c:when test="${empty mid}">
								<div class="text-center">
									<h3>로그인이 필요합니다.</h3>
								</div>
							</c:when>
						</c:choose>

					</div>
				</div>
			</div>
		</div>
		<div class="container pb-5 mb-5 border-bottom">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
						data-bs-target="#profile-tab-pane" type="button" role="tab"
						aria-controls="profile-tab-pane" aria-selected="false">리뷰작성</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="contact-tab" data-bs-toggle="tab"
						data-bs-target="#contact-tab-pane" type="button" role="tab"
						aria-controls="contact-tab-pane" aria-selected="false">상품평</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="disabled-tab" data-bs-toggle="tab"
						data-bs-target="#disabled-tab-pane" type="button" role="tab"
						aria-controls="profile-tab-pane" aria-selected="false">반품/배송</button>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade" id="profile-tab-pane" role="tabpanel"
					aria-labelledby="profile-tab" tabindex="0">
					<div class="container pb-5 mb-5">
						<div class=" border-bottom border-4 ">
							<h3 class="fs-4 m-2">후기쓰기</h3>
						</div>
						<form action="insertR.do" method="post"
							enctype="multipart/form-data" class="mx-auto">
							<table class="table">
								<tbody>
									<tr>
										<td>별점</td>
										<td><input type="hidden" name="iid" value="${o.iid}">
											<input type="hidden" name="star" id="starInput" value="">
											<P id="star">
												<!-- 부모 -->
												<a>★</a>
												<!-- 자식들-->
												<a>★</a> <a>★</a> <a>★</a> <a>★</a>
											<p></td>
									</tr>
									<tr>
										<td>사진</td>
										<td><input type="file" name="fileName"></td>
									</tr>
									<tr>
										<td>내용</td>
										<td><textarea name="content" id="message" name="content"
												cols="30" rows="5" class="form-control" required="required"></textarea>
										<td>
									</tr>

									<tr>
										<c:choose>
											<c:when test="${not empty mid}">
												<td colspan='2'><input type="submit" value="등록하기"
													id="sendButton" class="btn btn-primary1 btn-md1"></td>
											</c:when>
											<c:when test="${empty mid}">
												<td colspan='2'>로그인후 이용해주세요</td>
											</c:when>
										</c:choose>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
				<div class="tab-pane fade" id="contact-tab-pane" role="tabpanel"
					aria-labelledby="profile-tab" tabindex="0">
					<div class="container pb-5 mb-5">
						<div class="row">
							<div class="my-2">
								<div class=" border-bottom border-4 ">
									<h3 class="fs-4 m-2">상품평</h3>
								</div>
								<ul class="comment-list">
									<c:forEach var="i" items="${datas.rList}">
										<li class="comment">
											<div class="comment-body">
												<div>${i.writer}</div>
												<c:if test="${i.rimg!=null}">
													<img alt="${i.rimg}" src="${i.rimg}" height="100"
														width="100" style="border-radius: 15px">
												</c:if>
												<c:if test="${i.star==1.0}">
													<div class="form-group">
														<P id="starR" style="white-space: nowrap">
															<!-- 부모 -->
															<a class="text-warning">★</a>
															<!-- 자식들-->
															<a>★</a> <a>★</a> <a>★</a> <a>★</a>
														<p>
													</div>
												</c:if>
												<c:if test="${i.star==2.0}">
													<div class="form-group">
														<P id="starR" style="white-space: nowrap">
															<!-- 부모 -->
															<a class="text-warning">★</a>
															<!-- 자식들-->
															<a class="text-warning">★</a> <a>★</a> <a>★</a> <a>★</a>
														<p>
													</div>
												</c:if>
												<c:if test="${i.star==3.0}">
													<div class="form-group">
														<P id="starR" style="white-space: nowrap">
															<!-- 부모 -->
															<a class="text-warning">★</a>
															<!-- 자식들-->
															<a class="text-warning">★</a> <a class="text-warning">★</a>
															<a>★</a> <a>★</a>
														<p>
													</div>
												</c:if>
												<c:if test="${i.star==4.0}">
													<div class="form-group">
														<P id="starR" style="white-space: nowrap">
															<!-- 부모 -->
															<a class="text-warning">★</a>
															<!-- 자식들-->
															<a class="text-warning">★</a> <a class="text-warning">★</a>
															<a class="text-warning">★</a> <a>★</a>
														<p>
													</div>
												</c:if>
												<c:if test="${i.star==5.0}">
													<div class="form-group">
														<P id="starR" style="white-space: nowrap">
															<!-- 부모 -->
															<a class="text-warning">★</a>
															<!-- 자식들-->
															<a class="text-warning">★</a> <a class="text-warning">★</a>
															<a class="text-warning">★</a> <a class="text-warning">★</a>
														<p>
													</div>
												</c:if>
												<p>${i.content}</p>
												<br>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="disabled-tab-pane" role="tabpanel"
					aria-labelledby="profile-tab" tabindex="0">
					<div class="container pb-5 mb-5">
						<div class=" border-bottom border-4 ">
							<h3 class="fs-4 m-2">반품 및 배송 안내</h3>
						</div>
						<img
							src="https://petbox.godohosting.com/files/petbox_images/pp_com_info.jpg"
							alt="Free Website Template by Untree.co" class="img-fluid my-2">
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- 푸터부분 -->
	<pf:footer />
	<script>
		function cartcheck(){
				alert('상품을 장바구니에 담았습니다.');
		};
	</script>
	<script type="text/javascript">
			const modal = document.getElementById("modal")
			const btnModal = document.getElementById("btn-modal")
					btnModal.addEventListener("click", e => { //모달창 열기
											modal.style.display = "flex"})
			const closeBtn = modal.querySelector(".btn-close")
										closeBtn.addEventListener("click", e => { //모달창 닫기 
											modal.style.display = "none"
											})
									
	
</script>
	<script>
	$('#star a').click(function(){
		var cnt;
		 $(this).parent().children("a").removeClass("on");    
		 $(this).addClass("on").prevAll("a").addClass("on");
		 cnt=$('#star>.on').length;
		 $('#starInput').attr('value',cnt);
		 console.log('cnt: '+cnt);
		 console.log('인풋값: '+$('#starInput').val());
		if("value" != null){
			 $(':input[type="submit"]').prop('disabled', false);
		}
	});
	
	</script>
	<script type="text/javascript">
    function relrese(){
            var now = new Date();
            var month = now.getMonth();
            var date = now.getDate();
            var day = now.getDay();
            var hour = now.getHours();
            var min = now.getMinutes();
            var sec = now.getSeconds();
            const dayMatch = ['일','월','화','수','목','금','토'];
            day=day==6?0:day+=1;
            month=month==11?0:month+=1;
            date+=1;
            $("#info").text("내일("+dayMatch[day]+") "+month+"/"+date+" 출고 보장");
            $("#info_losttime").text((24-hour)+"시간"+(min==0?0:60-min)+"분"+(60-sec)+"초 남음");

    }
        setInterval(relrese, 1000);

    </script>
</body>
</html>

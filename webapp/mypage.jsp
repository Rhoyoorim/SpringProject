<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ryo" tagdir="/WEB-INF/tags"%>
<!-- /*
* Template Name: Style
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
<head>
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
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="fonts/feather/style.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<title>마이페이지 | 펫키지</title>
<style>
* {
	font-family: 'Do Hyeon', sans-serif;
}
</style>
<script>
$(document).ready(function(){
       
            var page ='${flag}';

        console.log(page);

        if(page){
            $("#tab-pane-1").removeClass('show active');
            $("#tab-pane-3").addClass('show active');
            $("#tab-1").removeClass('active');
            $("#tab-4").addClass('active');
        }
    });
</script>
</head>
<body>
	<ryo:header />

	<div class="container pb-5 my-5 border-bottom">
		<div class=" border-bottom border-4 mb-4">
			<h3 class="fs-4 m-2">마이 페이지</h3>
		</div>
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="tab-1" data-bs-toggle="tab"
					data-bs-target="#tab-pane-1" type="button" role="tab"
					aria-controls="tab-pane" aria-selected="false" tabindex="-1">내정보</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="tab-2" data-bs-toggle="tab"
					data-bs-target="#tab-pane-2" type="button" role="tab"
					aria-controls="tab-pane" aria-selected="false" tabindex="-1">내정보변경</button>
			</li>

			<li class="nav-item" role="presentation">
				<button class="nav-link" id="tab-4" data-bs-toggle="tab"
					data-bs-target="#tab-pane-3" type="button" role="tab"
					aria-controls="tab-pane" aria-selected="true">구매목록</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="tab-4" data-bs-toggle="tab"
					data-bs-target="#tab-pane-4" type="button" role="tab"
					aria-controls="tab-pane" aria-selected="true">회원탈퇴</button>
			</li>
		</ul>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="tab-pane-1"
				role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
				<div class="container mt-4 p-2" style="height: 540px">
					<ul
						class="list-group list-group-flush border border-primary rounded col-md-6 col-lg-4 mx-auto">
						<li class="list-group-item mx-4 my-2"><span class="fs-2">내정보
						</span></li>
						<li class="list-group-item  border rounded mx-4 my-2"><span>이름
								: ${user.mname}</span></li>
						<li class="list-group-item  border rounded mx-4 my-2"><span>별명
								: ${user.mnick}</span></li>
						<li class="list-group-item  border rounded mx-4 my-2"><span>이메일
								: ${user.memail}</span></li>
						<li class="list-group-item  border rounded mx-4 my-2"><span>생년월일
								: ${user.mbirth}</span></li>

					</ul>
				</div>
			</div>
			<div class="tab-pane fade" id="tab-pane-2" role="tabpanel"
				aria-labelledby="profile-tab" tabindex="0">
				<div class="container mt-4 p-2" style="height: 540px">
					<form action="updateM.do" class="align-middle" method="post">
						<ul
							class="list-group list-group-flush border border-primary rounded col-md-6 col-lg-4 mx-auto">
							<li class="list-group-item mx-4 my-2"><span class="fs-2">내정보
									변경</span></li>
							<li class="list-group-item  border rounded mx-4 my-2"><input
								type="hidden" name="mid" value="${user.mid}"> <input
								type="text" class="border-0" placeholder="이름"
								style="outline: none" value="${user.mname}" name="mname" readonly></li>
							<li class="list-group-item border rounded mx-4 my-2"><input
								type="password" class="border-0" placeholder="비밀번호"
								style="outline: none" value="${user.mpw}" name="mpw" required="required"></li>
							<li class="list-group-item border rounded mx-4 my-2"><input
								type="text" class="border-0" placeholder="별명"
								style="outline: none" value="${user.mnick}" name="mnick" required="required"></li>
							<li class="list-group-item border rounded mx-4 my-2"><input
								type="text" class="border-0" placeholder="이메일"
								style="outline: none" value="${user.memail}" name="memail" required="required"></li>
							<li class="list-group-item mx-4 my-2">
								<button type="submit" class="btn btn-outline-primary w-100 py-2">수정하기</button>
							</li>
						</ul>
					</form>
				</div>
			</div>
			<div class="tab-pane fade" id="tab-pane-3" role="tabpanel"
				aria-labelledby="profile-tab" tabindex="0">
				<div class="container mt-4 p-2" style="height: 540px">
					<div class="col mx-auto">
						<ul
							class="list-group list-group-flush border border-primary rounded col-md-6 col-lg-4 mx-auto">
							<li class="list-group-item mx-4 my-2"><span class="fs-2">구매내역</span></li>
							<c:choose>
								<c:when test="${empty datas}">
									<li class="list-group-item mx-4 my-2"><span class="fs-4">구매내역이
											존재하지 않습니다.</span></li>
									<li class="list-group-item mx-4 my-2"><a href="main.do"
										class="btn btn-outline-primary w-100 py-2">쇼핑하러가기</a></li>
								</c:when>
								<c:when test="${not empty datas}">
									<c:forEach var="i" items="${datas}">
										<li
											class="list-group-item  border rounded mx-4 my-2 d-flex gap-2"><a
											href="detail.do?iid=${i.iid}"><img alt="이미지"
												src="${i.iimg}" width="50px" height="50px"
												class="img-thumbnail"></a> <span>${i.iname}</span></li>
									</c:forEach>
										<li class="list-group-item text-center">
											<c:if test="${startNum!=1}">
												<a href="mypage.do?pageNum=${startNum-1}">Prev</a>
											</c:if>
											<c:forEach var="i" begin="${startNum}" end="${endNum}">
												<c:if test="${i==pageNum or i==firstNum}">
													<span>${i}</span>
												</c:if>
												<c:if test="${i!=pageNum and i!=firstNum}">
												<a href='mypage.do?pageNum=${i}'>${i}</a>													
												</c:if>
											</c:forEach>
											<c:if test="${endNum!=pcnt}">
												<a href="mypage.do?pageNum=${endNum+1}">Next</a>
											</c:if>
										</li>
								</c:when>
							</c:choose>
						</ul>

					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="tab-pane-4" role="tabpanel"
				aria-labelledby="profile-tab" tabindex="0">
				<div class="container mt-4 p-2" style="height: 540px">
					<ul
						class="list-group list-group-flush border border-primary rounded col-md-6 col-lg-4 mx-auto">
						<li class="list-group-item mx-4 my-2"><span class="fs-2">회원
								탈퇴 주의사항</span></li>
						<li class="list-group-item mx-4 my-2">
							<p>
								회원 탈퇴시 홈페이지 이용이 <span class="text-danger">제한</span>됩니다.<br>
							</p>
							<p>
								회원 가입 시 입력하신 개인 정보 및 결제 정보는 <span class="text-danger">즉시
									파기</span>되어 복구하실수 없습니다.<br>
							</p>
							<p>
								회원 탈퇴를 하더라도 사용 중인 아이디를 즉시 재생성 하실수 없습니다.<br>
							</p>

						</li>
						<li class="list-group-item mx-4 my-2">
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-outline-primary w-100 py-2"
								data-bs-target="#exampleModal" data-bs-toggle="modal">회원탈퇴</button>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">회원 탈퇴 확인</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">정말로 탈퇴 하시겠습니까?</div>
				<div class="modal-footer">
					<form action="deleteM.do">
						<input type="hidden" name="mid" value="${mid}">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">취소</button>
						<input type="submit" class="btn btn-primary" value="회원탈퇴">
					</form>
				</div>
			</div>
		</div>
	</div>
	<ryo:footer />
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="pf" tagdir="/WEB-INF/tags"%>
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
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
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
<style>
* {
	font-family: 'Do Hyeon', sans-serif;
}
</style>
</head>
<body>
	<pf:header />

	<div class="pt-4 mt-4">
		<div class="container my-4">
			<div class=" border-bottom border-4 my-4">
				<h3 class="fs-4 m-2">로그인</h3>
			</div>
			<div class="card col-lg-6 col-md-8 mx-auto">
				<div class="card-body">
					<form class="bg-white border shadow-md rounded max-w-md p-4"
						action="login.do">
						<div class="mb-2">
							<img class="card-img-top" src="images/pictogram/catpic.png"
								alt="loginimg" />
						</div>
						<div class="mb-2">
							<input
								class="shadow appearance-none rounded border w-100 p-2 my-2 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
								id="username" type="text" placeholder="UserID" name="mid"
								required /> <input
								class="shadow appearance-none rounded border w-100 p-2 my-2 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
								id="password" type="password" placeholder="password" name="mpw"
								required />
						</div>
						<div class="mb-2 d-flex gap-2 justify-content-end">
							<button class="btn btn-primar" type="submit">로그인</button>
							<a class="btn btn-primar" href="signup.jsp"> 회원가입</a>
						</div>
						<div class="mb-2 text-center">
							<div class="btn p-0" id="naver_id_login"></div>
							<a class="btn p-0" role="button" onclick="kakaoLogin()"><img
								src="images/pictogram/kakao_login_medium_narrow.png"
								alt="kakaoimg"></a>
						</div>
						<div class="mb-2 d-flex justify-content-center gap-4">
							<a href="idfind.jsp"
								class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800">
								아이디를 잊으셨나요? </a> <a href="pwfind.jsp"
								class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800">
								비밀번호를 잊으셨나요? </a>
						</div>
						<p class="text-center my-6 text-gray-500 text-xs">2022 Petcage
							Corp. All rights reserved.</p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<pf:footer />


	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("네이버 인증키값",
				"http://localhost:포트번호/app/callback.html");
		var state = naver_id_login.getUniqState();
		naver_id_login.setButton("green", 3, 40);
		naver_id_login.setDomain("http://localhost:포트번호/app/login.jsp");
		naver_id_login.setState(state);
		naver_id_login.init_naver_id_login();
	</script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
		Kakao.init('카카오 인증 키'); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
		//카카오로그인
		function kakaoLogin() {
			Kakao.Auth.login({
				success : function(response) {
					Kakao.API.request({
						url : '/v2/user/me',
						success : function(response) {
							var email = response.kakao_account.email;
							console.log(response)
							console.log('이메일:' + response.kakao_account.email);
							console.log('닉네임:'
									+ response.kakao_account.profile.nickname);
							location.href = "login.do?amid=" + email;
						},
						fail : function(error) {
							console.log(error)
						},
					})
				},
				fail : function(error) {
					console.log(error)
				},
			})
		}
		//카카오로그아웃  
		function kakaoLogout() {
			if (Kakao.Auth.getAccessToken()) {
				Kakao.API.request({
					url : '/v1/user/unlink',
					success : function(response) {
						console.log(response)
					},
					fail : function(error) {
						console.log(error)
					},
				})
				Kakao.Auth.setAccessToken(undefined)
			}
		}

		if ("1" == "${flag}") {
			alert('로그인 5회 실패로 계정이 임시보호처리 되었습니다. 고객센터에 문의 해주세요.');
		}
		if("2" == "${flag}"){
			alert('아이디 또는 비밀번호를 확인해주세요..');
		}
	</script>
</body>
</html>

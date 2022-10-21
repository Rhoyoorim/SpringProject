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
	<style>
* {
	font-family: 'Do Hyeon', sans-serif;
}

</style>
</head>
<body>

	<ryo:header />

	<div class="container pt-5 pb-5 mb-5 border-bottom">
		<div class=" border-bottom border-4 mb-4">
				<h3 class="fs-4 m-2">아이디 찾기</h3>
			</div>
		<div class="text-center col-lg-4 col-md-6 mx-auto">
			<form method="post" name='findid' id='findid' action="findid.do">
				<div class="form-group">
					<label class="text-black" for="mname">이름을 입력하세요.</label> <input
						type="text" class="form-control" id="mname" name="mname"
						class="check" placeholder="이름" required pattern="[가-힣]{2,10}$"
						title="가입했을 때의 이름을 입력하세요">
						</div>
						<div class="form-group">
					<label class="text-black" for="memail">가입했을 때의 이메일을 입력하세요.</label> <input
						type="text" class="form-control" id="memail" name="memail"
						class="check" placeholder="이메일" pattern="[a-zA-Z0-9]+[@][a-zA-Z0-9]+[.]+[a-zA-Z]+[.]*[a-zA-Z]*"
						title="가입했을 때의 이메일을 입력하세요.">
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-outline-primary btn-block"
						 value="확인">
				</div>
				<br>
			</form>
		</div>
	</div>


	<ryo:footer />

</body>
</html>
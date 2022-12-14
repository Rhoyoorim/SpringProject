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
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		document.getElementById('submit').disabled=true;		
	});
	function sendphone(){
		var phoneNumber=$('#phone').val();
		document.getElementById('phonecheckbtn').innerHTML='인증번호가 발송되었습니다.';
		$.ajax({
			type:"GET",
			url:'${pageContext.request.contextPath}/check.do?',
			data:{
				"phoneNumber" : phoneNumber
			},
			success:function(res){
				<!--console.log("로그 : [" + res+"]");-->
				 $('#numcheckbtn').click(function(){
					if(res==$('#numcheck').val()){
						$("#numcheckres").text("휴대폰 인증이 정상적으로 완료되었습니다.");// 사용가능
						document.getElementById('submit').disabled=false;
					}
					else{
						$("#numcheckres").text("잘못된 인증입니다. 다시 시도하세요.");
					}
				})
			},error: function(){
				console.log('데이터 받아오기 실패');
			}
		})
	}
</script>
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
				<h3 class="fs-4 m-2">비밀번호 찾기</h3>
			</div>
		<div class="border py-2 col-lg-4 col-md-6 mx-auto">

		<form method="post" name='findpw' id='findpw' action="findpw.do">
		<div class="form-group">
			<label class="text-black" for="mid">비밀번호를 찾을 아이디를 입력해주세요.</label>
			<input type="text" class="form-control"
			id="mid" name="mid" class="check" placeholder="아이디" required pattern="^[a-z0-9_-]{5,20}$"
			title="가입했을 때의 아이디를 입력하세요."> 
		</div>
		<div class="form-group">
			<label class="text-black" for="phone">휴대폰 본인 인증을 해주세요.</label>
			<input type="text" class="form-control"
			id="phone" name="phone" class="check" placeholder="휴대폰 번호" required pattern="^01([0|1|6|7|8|9])([0-9]{4})([0-9]{4})$"
			title="휴대폰 번호를 입력하세요."> 
		</div>
		<div class="form-group">
			
			<input type="button" id="phonecheck"  class="btn btn-outline-primary btn-block" value="휴대폰 인증" onclick="sendphone();">
			<span id="phonecheckbtn"></span>
		</div>
		<br><br>
		<div class="form-group">
		<label class="text-black" for="check">인증번호를 입력해주세요.</label>
			<input type="text" class="form-control" id="numcheck" name="check" required="required" placeholder="인증번호">
		</div>
		<div class="form-group">
			<input type="button" id="numcheckbtn" class="btn btn-outline-primary btn-block" value="인증번호 확인">
			<span id="numcheckres"></span>
		</div>
		<div class="form-group">
			<input type="submit" id="submit" class="btn btn-outline-primary btn-block" value="확인">
		</div>
		<br>
	</form>
</div>
</div>

	<ryo:footer />



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KOYOTE</title>

<!-- cpath 경로 -->
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!-- css 파일  -->
<link rel="stylesheet" href="${cpath}/css/login.css" type="text/css">

<!-- jQuery-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- icon site -->
<script src="https://kit.fontawesome.com/85039ef1d3.js" crossorigin="anonymous"></script>
<!-- 글꼴  -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>

</head>
<body>
	<div class="outline">
		<div class="outline-in1">
			<div class="login-outline">

				<div class="logo-line">
					<a href="${cpath }/"> <img src="${cpath}/img/logo.png"></a>
				</div>
				<!-- pointer none -->
				<div class="write-line" style="pointer-events: none;">
					<div class="fir-con">로그인</div>
					<div class="sec-con">
						환영합니다.<br>로그인을 해주세요!
					</div>
				</div>

				<div class="bot-line">
					<!-- form태그 아이디 부여 -->
					<form method="POST" id="main-logform">
						<div class="fir-inp">
							<div class="inp-logo">
								<img src="${cpath}/img/login/mail.png">
							</div>
							<div class="ema-inp">
								<input id="input_login_id" name="emp_num" type="text" class="inpbox1" value="4444445"
									placeholder="아이디" autocomplete="off">
							</div>
						</div>	
						<!-- 사원번호 미입력 시  -->
						<div class="logoFalse-Num" id="logHideNum">
							<div class="log-Icon"><i class="fas fa-exclamation-circle"></i></div>
							<div>사원 번호를 입력해 주세요.</div>
						</div>
						
						<div class="sec-inp">
							<div class="inp-logo">
								<img src="${cpath}/img/login/key.png">
							</div>
							<div class="ema-inp">
								<input id="input_login_pw" name="emp_pw" type="password" class="inpbox1" value="4444445"
									placeholder="비밀번호">
							</div>
						</div>
						
						<!-- 비밀번호 미입력 시  -->
						<div class="logoFalse-pas" id="logHidePas">
							<div class="log-Icon"><i class="fas fa-exclamation-circle"></i></div>
							<div>비밀번호가 유효하지 않습니다.</div>
						</div>
						
						<!-- 김보람 수정 사항 a태그 제거-->
						<div class="forgot-pass">
<!-- 							<a href=""> -->
								<div class="find-pw">비밀번호를 잊으셨나요?</div>
<!-- 							</a> -->
						</div>

						<div class="log-btn">
							<input class="log-b" type="submit" value="로그인">
						</div>
					</form>

				</div>
				<!-- /bot-line -->
			</div>
			<!-- /login-outline -->
		</div>
		<!-- /outline-in1 -->
	</div>
	<!-- /outline -->
</body>


<script >

	const msg = '${msg}';
	
	if(msg !== ''){
		alert(msg);
	}

</script>

<!-- 사원번호,패스워드 실시간 div 박스 제거   -->
<script>
	
	// 사원번호 들어왔을때 div박스 제거 이벤트
	$('#input_login_id').on("propertychange change keyup paste input", function() {
			$('.logoFalse-Num').attr("id","logHideNum");
			$('.log-btn').removeClass("chatbox");
	})
	// 패스워드 들어왔을때 div박스 제거 이벤트
	$('#input_login_pw').on("propertychange change keyup paste input", function() {
			$('.logoFalse-pas').attr("id","logHidePas");
			$('.log-btn').removeClass("chatbox");
	})


</script>

<!-- 사원번호 패스워드  널값 확인 -->
<script>

	$('.log-btn').click(function(e){
		
		e.preventDefault();
		
		if($('#input_login_id').val() == '' || $('#input_login_pw').val() == ''){
			
			$('.log-btn').addClass("chatbox");
			
			if($('#input_login_id').val() == ''){
				$('.logoFalse-Num').attr("id","");
			}else{
				$('.logoFalse-Num').attr("id","logHideNum");
			}
			
			if($('#input_login_pw').val() == ''){
				$('.logoFalse-pas').attr("id","");
				$('.log-btn').addClass("chatbox");
			}else{
				$('.logoFalse-pas').attr("id","logHidePas");
			}
			
			return;
				
		}
		
		if($('#input_login_id').val() != '' && $('#input_login_pw').val() != '')
		
// 			$('.logoFalse-Num').attr("id","logHideNum");
// 			$('.logoFalse-pas').attr("id","logHidePas");
		
			$('#main-logform').submit();
		
		})

</script>



</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KOYOTE</title>

<!-- cpath 경로 -->
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!-- 폰트  -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- css 파일 2개  -->
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/header.css">

<!-- 모달 css -->
<link rel="stylesheet" href="${cpath}/css/modal.css">
<link rel="stylesheet" href="${cpath}/css/modal_default.css">
<link rel="stylesheet" href="${cpath}/css/modal_notified.css">
<link rel="stylesheet" href="${cpath}/css/modal_workTime.css">
<link rel="stylesheet" href="${cpath}/css/modal_info.css">
<link rel="stylesheet" href="${cpath}/css/modal_vacation.css">

<!-- icon site -->
<script src="https://kit.fontawesome.com/85039ef1d3.js" crossorigin="anonymous"></script>

<!-- js file -->
<script src="${cpath }/resources/js/header.js"></script>

<!-- 달력 시 필요한 jQuery -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

</head>

<body>
<!-- <div id="root" onscroll="SetDivPosition()"> -->
<div id="root">

	<c:set var="serverPath" value="http://192.168.0.173" />

    <header id="gnb">
    
    	<div class="gnb_top"></div>

    	<div class="gnb_mid">
    		<div class="mid_content">
 		    	<div class="logo-box">
		        	<a href="${cpath }/">
		            	<img class="logo" src="${cpath }/img/logo.png"></a>
		        </div>
		        <nav>
		        	<ul id="menu-list">
		        		<li id="home" class="gnb_on"><a href="${cpath }/">
		        			<button class="btn_menu">
		        				<div class="icon"><i class="fas fa-home"></i></div>
		        				<div class="txt_menu">홈</div>
		        			</button>
		        		</a></li>
		        		<li id="work" class=""><a href="${cpath }/workholi">
		        			<button class="btn_menu">
		        				<div class="icon"><i class="fas fa-clock"></i></div>
		        				<div class="txt_menu">근무・휴가</div>
		        			</button>
		        		</a></li>
		        		<li id="people" class=""><a href="${cpath }/people/">
		        			<button class="btn_menu">
		        				<div class="icon"><i class="fas fa-users"></i></div>
		        				<div class="txt_menu">사람</div>
		        			</button>
		        		</a></li>
		        		<li id="company" class=""><a href="${cpath }/company">
		        			<button class="btn_menu">
		        				<div class="icon"><i class="fas fa-building"></i></div>
		        				<div class="txt_menu">회사정보</div>
		        			</button>
		        		</a></li>
		        		<!-- 김보람 주소 추가-->
		        		<li id="workflow" class=""><a href="${cpath }/workFlow/${login.emp_dept}">
		        			<button class="btn_menu">
		        				<div class="icon"><i class="fas fa-bars"></i></div>
		        				<div class="txt_menu">워크플로우</div>
		        			</button>
		        		</a></li>
		        		<li id="insite" class=""><a href="" onclick="return false;">
		        			<button class="btn_menu" style="cursor:not-allowed;">
		        				<div class="icon"><i class="fas fa-signal"></i></div>
		        				<div class="txt_menu">인사이트</div>
		        			</button>
		        		</a></li>
		        		<li id="administrator" class=""><a href="" onclick="return false;">
		        			<button class="btn_menu" style="cursor:not-allowed;">
		        				<div class="icon"><i class="fas fa-key"></i></div>
		        				<div class="txt_menu">관리자</div>
		        			</button>
		        		</a></li>
		        	</ul>
		        </nav>
		        <div class="icon-box">
		        	<button class="btn_search icon_off" style="cursor: not-allowed;">
		        		<div><i class="fas fa-search"></i></div>
		        	</button>
		        	
		        	<div class="side-menu side">
		        		<button id="btn_side-menu" class="btn_side-menu side">
			        		<div><i class="fas fa-ellipsis-v side"></i></div>
		        		</button>
		        	</div>
		        	
					<div class="btn_profile">
						<div class="img_profile">
							<img class="profileImg" src="${serverPath }/${login.emp_profile}" alt="headerProfile">
						</div>
					</div>

		        </div>
    		</div> <!-- /mid_content -->
    	</div>
    	
    	<!-- hidden -->
	   	<!-- side menu modal -->
	   	<div id="modal_side-menu" class="hidden side">
	   		<div class="box_side-menu side">
	   			<button class="btn_account side" style="cursor: not-allowed;">
	   				<div class="icon_account side"><i class="fas fa-user-circle side"></i></div>
	   				<div class="txt_account side">계정설정</div>
	   			</button>
	   			<button id="btn_logout" class="btn_logout side">
	   				<div class="icon_logout side"><i class="fas fa-power-off side"></i></div>
	   				<div class="txt_logout side">로그아웃</div>
	   			</button>
	   		</div>
	   	</div>
    	
    	<div class="gnb_bot">
	    	<!-- home에서 보이는 div -->
    		<div id="header_home" class="bot_content">
    			<div class="box_welcome">
    				<div class="txt_welcome">${login.emp_name }님 환영합니다.</div>	<!-- user 이름 -->
    				<div><i class="far fa-laugh-wink"></i></div>
    			</div>
    			<div></div>
    		</div>
    		
	    	<!-- work에서 보이는 div -->
    		<div id="header_work" class="bot_content">
    			<div class="box_work">
    				<ul id="snb_work">
    					<li id="my-schebtn" class="item_people btn_on" onClick="location.href='${cpath}/workholi'">
    						<button class="btn_people">
    							<div class="icon_people"><i class="fas fa-user"></i></div>
    							<div class="txt_people">내 스케줄</div>
    						</button>
	    					<div class="line"></div>
    					</li>
    					<li id="my-schebtn1" class="item_people">
    						<button class="btn_people" onclick="location.href='${cpath}/worklist/${login.emp_dept}'">
    							<div class="icon_people"><i class="fas fa-users"></i></div>
    							<div class="txt_people">구성원 스케줄</div>
    						</button>
	    					<div class="line"></div>
    					</li>
    				</ul>
    			</div>
    			<div></div>	<!-- empty div -->
    		</div>
    		
	    	<!-- people에서 보이는 div -->
    		<div id="header_people" class="bot_content">
    			<div class="box_people">
    				<ul id="snb_people">
    					<li id="snb_people-home" class="item_people" onClick="location.href='${cpath}/people'">
    						<button class="btn_people">
    							<div class="icon_people"><i class="fas fa-user"></i></div>
    							<div class="txt_people">구성원</div>
    						</button>
	    					<div class="line"></div>
    					</li>
    					<li id="snb_people-hr" class="item_people">
    						<button class="btn_people" onClick="location.href='${cpath}/people/hr'">
    							<div class="icon_people"><i class="fas fa-user-check"></i></div>
    							<div class="txt_people">인사 · 계약</div>
    						</button>
	    					<div class="line"></div>
    					</li>
    				</ul>
    			</div>
    			<div></div>	<!-- empty div -->
    		</div>
    		
   			<!-- company에서 보이는 div -->
    		<div id="header_company" class="bot_content">
    			<div class="box_welcome">
    				<div class="txt_welcome">회사정보</div>
    			</div>
    			<div></div>
    		</div>
    		
    		<!-- workflow에서 보이는 div -->
    		<div id="header_workflow" class="fix_content">
				<div class="box_fix">
					<ul id="snb_fix">
		
						<li id="" class="item_people">
							<button class="workLogo">
								<div class="" style="font-size: 15pt; font-weight: bold;">360
									워크플로우</div>
								<div class="">
									<i class="fas fa-exclamation-circle wLogoIcon"></i>
								</div>
							</button>
							<div class="line"></div>
						</li>
		
						<li class="fh_write">
							<div id="" class="fix_rep">
								<button class="header_fixBtn1">
									<div class="">내 보관함</div>
								</button>
								<div class="line"></div>
							</div>
							<div id="" class="fix_rep">
								<button class="header_fixBtn2">
									<div class="">작성</div>
								</button>
								<div class="line"></div>
							</div>
						</li>
		
						<li id="" class="item_people">
								<button class="btn_people"
									style="box-shadow: rgb(0 0 0/ 2%) 0px 1px 2px 0px, rgb(0 0 0/ 12%) 0px 0px 0px 1px inset; color: rgb(31, 46, 61);">
									<div class="">전체보관함</div>
								</button>
								<div class="line"></div>
						</li>
		
					</ul>
				</div>
				
				<div></div>
				<!-- empty div -->
			</div>
    		
    	</div>

		<!-- modal -->    	
		<div id="sub_modal" class="modal hidden">
		 	<div class="sub_modal_overlay"></div>
		 	
		   	<!-- sidemenu btn modal -->
			<div id="modal_logout" class="">
				<div class="modal_content_logout">
					<div class="head_modal">
						<div class="icon_modal"><i class="fas fa-exclamation-circle"></i></div>
						<div class="txt_modal">정말 로그아웃 하시겠습니까?</div>
					</div>
					<div class="box_btn"><div>
						<button id="btn_cancel_m"><div>취소</div></button>
						<button id="btn_logout_m" 
							onclick="location.href='${cpath}/logout'"><div>로그아웃</div></button>
					</div></div>
				</div>
			</div>
    	</div>
		<!-- 모달 시작  -->
		<%@ include file="modal.jsp"%>
<%--     	<jsp:include page="modal.jsp"></jsp:include> --%>
    	
    	
    	
    </header>
                            
	
	
    <script>
    	// cpath 저장
 		setCpath('${cpath}');
 		
 		// 메뉴별 id 저장
 		setGnbList(document.getElementById('menu-list'));
 		
 		// sidemenu modal
 		$('#btn_side-menu').click(function() {
			
 			var divLeft = $(this).offset().left - 200;
 			var divTop = $(this).offset().top + 50;

 			$('#modal_side-menu').css({
//  				'transform':'translate3d('+ divLeft +'px, '+ divTop +'px, 0px)'
				'position':'absolute',
				'left':divLeft+'px',
				'top':divTop+'px',
				'display':'block'
 			});

 			$('#modal_side-menu').toggleClass('hidden');
 			
			
			// 스크롤 이벤트 막기
			$('#root').on('scroll touchmove mousewheel', function(event) {
				  event.preventDefault();
				  event.stopPropagation();
				  return false;
			});

 		})
 		
		// box 외 다른곳 클릭하면 hidden
		$(document).click(function(e) {
// 			console.log(e.target);
			if(!$(e.target).hasClass('side')) {
				$('#modal_side-menu').addClass('hidden');
				$('#root').off('scroll touchmove mousewheel');	// 스크롤 이벤트 풀기
			}

		})
		
		// logout 버튼 클릭시 이벤트
 		$('#btn_logout').click(function() {
			$('#sub_modal').removeClass('hidden');
 			$('#modal_side-menu').addClass('hidden');
			$('#root').off('scroll touchmove mousewheel');
 		})
 		
 		// sub modal overlay 이벤트
		$('.sub_modal_overlay').click(function () {
			$('#sub_modal').addClass('hidden');
		})
		
		// logout 취소버튼
		$('#btn_cancel_m').click(function() {
			$('#sub_modal').addClass('hidden');
		})
 
    </script>
    
    <!-- 부서에 따른 메뉴 활성화 -->
	<script>
		const admin = '${login.emp_admin}';
		const dept_name = '${login.emp_dept}'

		// 인사팀 및 관리자 버튼 활성화
		if(dept_name == '인사팀' || admin == 1) {
			$('#snb_people-hr').removeClass('hidden');
		}
		else {
			$('#snb_people-hr').addClass('hidden');
		}
		
	</script>
	
	<script>

<!-- 글자 스르륵 뒤로 이벤트-->

function inputfocusF(){
	
	// input focus 이벤트
	$('input[type="text"]').focus(function() {
		$(this).parent('div').parent('div').css('backgroundColor', 'white');
		$(this).parent('div').find('label').addClass('label_on');
		
	});
	
	// input focus 이벤트
	$('input[type="number"]').focus(function() {
		$(this).parent('div').parent('div').css('backgroundColor', 'white');
		$(this).parent('div').find('label').addClass('label_on');
	});
}
	
function inputblurF(){
	// input blur text 이벤트
	$('input[type="text"]').blur(function() {
		if ($(this).val() == '') {
			$(this).parent('div').parent('div').css(
					'backgroundColor',
					'rgba(99, 114, 131, 0.04)');
			$(this).parent('div').find('label').removeClass(
					'label_on');
// 			$(this).parent('div').parent('div').css('boxShadow','rgb(29 56 83 / 8%) 0px 0px 0px 2px inset, rgb(0 0 0 / 4%) 0px 1px 1px 0px inset');
			
		} else {
			$(this).parent('div').parent('div').css(
					'backgroundColor',
					'rgba(99, 114, 131, 0.04)');
			$(this).parent('div').find('label').addClass(
					'label_on');
		}
	});
	
	// input blur number 이벤트
	$('input[type="number"]').blur(
			function() {
				if ($(this).val() == '') {
					$(this).parent('div').parent('div').css(
							'backgroundColor',
							'rgba(99, 114, 131, 0.04)');
					$(this).parent('div').find('label').removeClass(
							'label_on');
// 					$(this).parent('div').parent('div').css('boxShadow','rgb(29 56 83 / 8%) 0px 0px 0px 2px inset, rgb(0 0 0 / 4%) 0px 1px 1px 0px inset');
				} else {
					$(this).parent('div').parent('div').css(
							'backgroundColor',
							'rgba(99, 114, 131, 0.04)');
					$(this).parent('div').find('label').addClass(
							'label_on');
				}
			});
    
}


</script>
	


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- css 파일 -->
<link rel="stylesheet" href="${cpath}/css/people.css">

<!-- js file -->
<script src="${cpath }/resources/js/people.js"></script>

<main>

	<div class="container">
		<div class="wrap_peo">
			<div class="left-side box">
				<div class="head_snb">
					<div class="txt_title">KOYOTE</div> <!-- 회사명 -->
				</div>
				<div class="content_snb">
					<div class="item_snb">
						<div class="head_item" id="submenu-1">
							<div class="content_item">
								<div>
									<button id="btn_more" class="btn_more">
										<div id="more-on" class="icon_more"><i class="fas fa-caret-down"></i></div>
										<div id="more-off" class="icon_more hidden"><i class="fas fa-caret-right"></i></div>
									</button>대표</div>
							</div>
						</div>
						<div id="list_item"></div>
					</div>
				</div>
			</div>
			<div class="right-side box">
				<div class="head_peo">
					<form id="searchForm">
						<div class="search_peo">
							<div><div class="icon_search"><i class="fas fa-search"></i></div></div>
							<input type="text" autocomplete="off" placeholder="이름, 조직을 검색해보세요.">
						</div>
					</form>
				</div>
				<div id="title_peo" class="title_peo">전체구성원(10)</div> <!-- 전체구성원 count 입력 -->
				<div id="list_people">
					<ul id="list_peo">
<!-- 						<li class="item_peo"> 구성원 li 추가 -->
<!-- 							<div class="content_peo"> -->
<!-- 								profile path는 img_profile의 background-image로 수정 -->
<!-- 								<div class="box_profile"><div class="img_profile"></div></div> -->
<!-- 								<div class="txt_name">이승백</div>	사원 이름 입력 -->
<!-- 								<div class="txt_team">회계부</div>	사원 부서 입력 -->
<!-- 							</div> -->
<!-- 							<div class=""></div> 구성원 상태 (퇴직예정, 입사예정) -->
<!-- 						</li> -->
					</ul>
				</div>
			</div>
		</div> <!-- /wrap_peo -->
	</div> <!-- /container -->
	
</main>

<!-- header menu handler -->
<script>
	gnbHandler(document.getElementById('people'));
	$('#snb_people-home').addClass('btn_on');
	$('#snb_people-hr').removeClass('btn_on');
</script>

<!-- people menu handler -->
<script>
	$('#btn_more').click(function () {
		$('#list_item').toggle();
		$('#more-on').toggleClass('hidden');
		$('#more-off').toggleClass('hidden');
	})
	
</script>

<script>

	// snb 목록 추가
	ajaxDeptSelectList();
	
	// 전체 구성원 목록
	ajaxEmpSelectList();
	
	// 회사 이름 클릭 시 전체 구성원 목록
	$('.head_snb').click(function() {
		ajaxEmpSelectList();
	})
	
	// 검색
	$('#searchForm').submit(searchSubmit);
	$('.icon_search').click(searchSubmit);
	
</script>


</div> <!-- /root -->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- css 파일 -->
<link rel="stylesheet" href="${cpath}/css/people-hr.css">

<!-- 인사부 : HR(Human Resources) Department -->
<main>
	<div class="container">
		<div class="wrap_peo-hr">
			<!-- 추가 및 변경 메뉴 -->
			<div class="head_hr">
				<div class="title">
					<div class="line_hr"></div>
					<div class="txt_hr">어떤 정보를 변경하고 싶으세요?</div>
				</div>
			</div>
			<div class="content_menu">
				<button class="btn_menu" onclick="location.href='${cpath}/people/add'">
					<p>신입사원 인사정보</p>
					<div class="content">인사정보 입력<div class="icon_arrow"><i class="fas fa-arrow-right"></i></div></div>
					<div class="box_icon"><div class="icon_plus"><i class="fas fa-user-plus"></i></div></div>
				</button>
				<button class="btn_menu" style="cursor: not-allowed;">
					<p>조직개편, 인사이동</p>
					<div class="content">인사정보 변경<div class="icon_arrow"><i class="fas fa-arrow-right"></i></div></div>
					<div class="box_icon"><div class="icon_card"><i class="fas fa-id-card"></i></div></div>
				</button>
				<button class="btn_menu" style="cursor: not-allowed;">
					<p>계약유형 전환, 연봉계약</p>
					<div class="content">계약정보 변경<div class="icon_arrow"><i class="fas fa-arrow-right"></i></div></div>
					<div class="box_icon"><div class="icon_sign"><i class="fas fa-file-signature"></i></div></div>
				</button>
				<button class="btn_menu" style="cursor: not-allowed;">
					<p>구성원의 근무유형</p>
					<div class="content">근무유형 변경<div class="icon_arrow"><i class="fas fa-arrow-right"></i></div></div>
					<div class="box_icon"><div class="icon_tie"><i class="fas fa-user-tie"></i></div></div>
				</button>
			</div>
			
			<!-- 변경 내역 -->
			<div class="head_hr">
				<div class="title">
					<div class="line_hr"></div>
					<div class="txt_hr">변경·계약 진행현황은?</div>
				</div>
			</div>
			<div class="content_change">
				<div class="div_change">
					<table class="table_change">
					
						<thead>
							<tr><th  colspan='4'>
								<div>
									<ul>
										<li class="menu_change">
											<button style="cursor: not-allowed;">
												<div>변경 내역</div>
											</button>
											<div class="line"></div>
										</li>
										<li style="cursor: default;">(미구현)</li>
									</ul>
									<button id="btn_search-date" style="cursor: not-allowed;">
										<div class="txt_date">최근 3개월</div>
										<div class="icon_down"><i class="fas fa-caret-down"></i></div>
									</button>
								</div>
							</th></tr>
						</thead>
						
						<tbody id="list_change">
							<tr class="item_change">	<!-- 변경이력 추가 -->
								<!-- 변경완료, 변경예정 -->
								<td class="box_check">
									<div class="icon_check"><i class="fas fa-check-circle"></i></div>
								</td>
								
								<!-- 작성한 사람 -->
								<td class="box_user">
									<button class="btn_profile" style="cursor: not-allowed;">
										<div>
											<div class="img_profile"></div>
											<div class="user-info">
												<div class="user-name">작성자</div>
												<div class="create-date">2021. 00. 00 오후 00:00</div>
											</div>
										</div>
									</button>
								</td>
								
								<!-- 변경 내용 -->
								<td class="content_change"><div>
									<button class="btn_change" style="cursor: not-allowed;">
										<p><span class="txt_change">변경한 내용 입력</span></p>
									</button>
									<div class="icon_view"></div> <!-- hover시 뜨는 거 -->
								</div></td>
								
								<!-- more menu -->
								<td class="box_side-menu">
									<button class="btn_side-menu" style="cursor: not-allowed;">
										<div class="icon_side-menu"><i class="fas fa-ellipsis-v"></i></div>
									</button>
								</td>
							</tr>
							
						</tbody>
						
					</table>
				</div>
			</div> <!-- /content_change -->
			
<!--  -->	
<div id="side-menu" style="display:none">

</div>
			
		</div> <!-- /wrap_peo-hr -->
	</div> <!-- /container -->
	
	
</main>

<!-- header menu handler -->
<script>
	gnbHandler(document.getElementById('people'));
	$('#snb_people-hr').addClass('btn_on');
	$('#snb_people-home').removeClass('btn_on');
</script>

<!--  -->
<script>        

	$('.box_side-menu').each(function(index){}).click(function(){
		event.preventDefault();  
		$("#side-menu").css({
			   "position" : "absolute",
			   "top" : event.clientY + "px",
			   "left" : event.clientX + "px",
			   "display" : "block"
		});   
	});
	
	$('#root').click(function() {
		$('#side-menu').attr('style', "display:none;");
	});
	
</script>
<!-- people menu handler -->
<script>

</script>

</div> <!-- /root -->
</body>
</html>
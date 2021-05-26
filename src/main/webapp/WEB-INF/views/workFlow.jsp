<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!-- 작성 css 파일 -->
<link rel="stylesheet" href="${cpath}/css/workFlow.css">
<link rel="stylesheet" href="${cpath}/css/fix_modal.css">

<!-- 내보관함 css 파일 -->
<link rel="stylesheet" href="${cpath}/css/storage.css">
<link rel="stylesheet" href="${cpath}/css/stoSubModal1.css">
<link rel="stylesheet" href="${cpath}/css/stoSubModal2.css">


<script>
	gnbHandler(document.getElementById('workflow'));
</script>

<!-- 작성 모두 감싸는 div -->
<div class="writeConA" id="whidden">

<div class="hash_con">
	<div class="hashTag_box">
		<div class="hashcur">
			<button class="hashTag"># 구매 신청 :</button>
		</div>
		<div class="hashcur">
			<button class="hashTag"># 휴가 :</button>
		</div>
		<div class="hashcur">
			<button class="hashTag"># 복리 후생 :</button>
		</div>                       
		<div class="hashcur">
			<button class="hashTag"># 비용 처리 :</button>
		</div>
	</div>
</div>

<!-- 비품 작성 리스트 -->
<div class="work_container">

	<ul class="fix_ul">

		<li class="fix_li">

			<div class="fixtures_box">
				<div class="fix_icon">
					 <img class="fix_iconImg" src="${cpath}/img/workFlow/mac.png" alt="computer">
				</div>
				<div class="fix_apply">비품신청</div>
				<div class="fix_purchase">구매 신청</div>
				<div class="fix_write">

					<button class="fix_btn">
						<div class="fix_btn_child">
							<div class="write">작성</div>
						</div>
					</button>

					<button class="fix_btn_second">
						<div class="fix_btn_child">
							<div class="write_req">작성요청</div>
						</div>
					</button>

				</div>
			</div>

		</li>

		<li class="fix_li">
			<div class="fixtures_child">
				<div class="fix_icon">
					<img class="fix_iconImg" src="${cpath}/img/workFlow/travel.png" alt="travel">
				</div>
				<div class="fix_apply">연차 사용 계획</div>
				<div class="fix_purchase">휴가</div>

				<div class="fix_write">
				
					<button class="travel_btn">
						<div class="fix_btn_child">
							<div class="write">작성</div>
						</div>
					</button>

					<button class="annual_btn_second">
						<div class="fix_btn_child">
							<div class="write_req">작성요청</div>
						</div>
					</button>

				</div>
			</div>
		</li>


		<li class="fix_li">
			<div class="fixtures_child">
				<div class="fix_icon">
					 <img class="fix_iconImg" src="${cpath}/img/workFlow/letter.png" alt="letter">
				</div>
				<div class="fix_apply">경조비 신청</div>
				<div class="fix_purchase">복리 후생</div>

				<div class="fix_write">

					<button class="fix_btn">
						<div class="fix_btn_child">
							<div class="write">작성</div>
						</div>
					</button>

					<button class="fix_btn_second">
						<div class="fix_btn_child">
							<div class="write_req">작성요청</div>
						</div>
					</button>

				</div>
			</div>
		</li>

		<li class="fix_li">
			<div class="fixtures_child">
				<div class="fix_icon">
					 <img class="fix_iconImg" src="${cpath}/img/workFlow/key.png" alt="key">
				</div>
				<div class="fix_apply">계정 신청</div>
				<div class="fix_purchase">구매 신청</div>

				<div class="fix_write">

					<button class="fix_btn">
						<div class="fix_btn_child">
							<div class="write">작성</div>
						</div>
					</button>

					<button class="fix_btn_second">
						<div class="fix_btn_child">
							<div class="write_req">작성요청</div>
						</div>
					</button>

				</div>
			</div>
		</li>

		<li class="fix_li">
			<div class="fixtures_child">
				<div class="fix_icon">
					 <img class="fix_iconImg" src="${cpath}/img/workFlow/airplane.png" alt="airplane">
				</div>
				<div class="fix_apply">출장비 신청</div>
				<div class="fix_purchase">비용 처리</div>

				<div class="fix_write">

					<button class="fix_btn">
						<div class="fix_btn_child">
							<div class="write">작성</div>
						</div>
					</button>

					<button class="fix_btn_second">
						<div class="fix_btn_child">
							<div class="write_req">작성요청</div>
						</div>
					</button>

				</div>
			</div>
		</li>

		<li class="fix_li">
			<div class="fixtures_child">
				<div class="fix_icon">
					 <img class="fix_iconImg" src="${cpath}/img/workFlow/burger.png" alt="food">
				</div>
				<div class="fix_apply">식사 사용 내역</div>
				<div class="fix_purchase">복리 후생</div>

				<div class="fix_write">

					<button class="fix_btn">
						<div class="fix_btn_child">
							<div class="write">작성</div>
						</div>
					</button>

					<button class="fix_btn_second">
						<div class="fix_btn_child">
							<div class="write_req">작성요청</div>
						</div>
					</button>

				</div>
			</div>
		</li>
		
		
		<li class="fix_li">
			<div class="fixtures_child">
				<div class="fix_icon">
					 <img class="fix_iconImg" src="${cpath}/img/workFlow/contract.png" alt="contract">
				</div>
				<div class="fix_apply">경조비 신청</div>
				<div class="fix_purchase">휴가</div>

				<div class="fix_write">

					<button class="fix_btn fix_btn">
						<div class="fix_btn_child">
							<div class="write">작성</div>
						</div>
					</button>

					<button class="fix_btn_second">
						<div class="fix_btn_child">
							<div class="write_req">작성요청</div>
						</div>
					</button>

				</div>
			</div>
		</li>

	</ul>

</div>
<!-- 작성 리스트 end -->

<!-- 비품 작성하기 클릭시 모달-->
<div class="fixmodal" id="hidden">
	<!-- hidden -->

	<div class="fixmodal_overlay"></div>

	<div class="fix_modal_con">

		<!-- header -->
		<div class="fix_header">

			<div class="fh_child">
				<div class="fm_write">
					<div class="">작성</div>
				</div>
				<div class="fm_apply">비품 신청</div>
				<div class="fm_empty_box"></div>
				<div class="fm_empty"></div>
				<button class="fm_box1">
					<div class="fm_xBox">x</div>
				</button>
			</div>

		</div>

		<!-- 중간 전체 박스 fix_middle_container_box-->
		<div class="fmc_box">

			<!--왼쪽박스 컨테이너-->
			<div class="fmc_fixBox">
				<div class="fmx_fixBox_2">
					<div class="fmx_fixBox_3">

						<div class="fmx_fixBox_4">
							<div class="fix_apply_icon">
								<img class="fix_apply_icon" src="${cpath}/img/workFlow/mac.png" alt="computer">
							</div>
							<div class="fix_apply_header">
								<div class="fix_apply_word">비품 신청</div>
								<div class="fix_apply_icon1">
									<i class="fas fa-pen"></i>
								</div>
							</div>
						</div>
						<div class="cfmtOE">
							<span class="">일하는 데 필요한 물품을 신청해주세요!</span>
						</div>

					</div>
				</div>

				<div class="fix_input_box_con">
					<!-- 비품 form 시작  -->
					<form class="fix_form1" method="POST" action="${cpath}/workFlow">
						<!-- 보내는 사람 -->
						<input name="sender" type="hidden" value="${login.emp_name}">
						<!-- 보내는 사람  사원번호 -->
						<input name="sender_num"type="hidden" value="${login.emp_num }">
						<!-- 받는 사람 -->
						<input name="recipient" type="hidden" value="" class="reciVal">
						<!-- 보내는 사람  사원번호 -->
						<input name="recipient_num" type="hidden" value="" class="reciValNum">						
						
						<!--input 박스 -->
						<div class="fix_input_box" style="margin-top: 12px;">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="input_type_c" name="equip_name" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="text"> <label>품명</label>
									</div>
								</div>
							</div>
						</div>


						<div class="fix_input_box">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="input_type_c" name="equip_info" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="text"> <label>상품
											정보(링크)</label>
									</div>
								</div>
							</div>
						</div>

						<div class="fix_input_box">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="input_type_c" name="equip_amount" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="number"> <label>수량</label>
									</div>
								</div>
							</div>
						</div>

						<div class="fix_input_box">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="input_type_c" name="equip_cost" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="number"> <label>단가</label>
									</div>
									<div class="jEpDxf">
										원
									</div>
								</div>
							</div>
						</div>

						<div class="fix_input_box">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="input_type_c" name="equip_sumcost" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="number"> <label>금액</label>
									</div>
									<div class="jEpDxf">
										원
									</div>
								</div>
							</div>
						</div>

						<div class="fix_input_box">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="input_type_c" name="equip_why" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="text"> <label>사유</label>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>

				<!-- 하단 닫기 보내기-->
				<div class="">
					<div class="fix_bottom_box">
						<div class="fix_bottom_sec">
							<button class="bt_closeBtn">
								<div class="">닫기</div>
							</button>
							<button class="fmIVlh" style="margin-right:40px;">
								<div class="">
									<i class="fas fa-paper-plane" style="margin-right: 5px;"></i>
								</div>
								<div class="fix_submit1">
									보내기
								</div>
							</button>
						</div>
					</div>
				</div>

			</div>

			<!-- 비품 오른쪽박스 컨테이너-->
			<div class="right_box">
				<!-- 네모난 승인 박스 -->
				<div class="">
					<div class="apply_rig">승인 참조 대상</div>
					<!-- 조직장 리스트 -->
					<div class="apply_conBox">
						<c:forEach var="list" items="${adminList}" varStatus="num">
							<div class="apply_list" >
								<div class="alist_child" id="apply_Alist${num.count}">
									<input class="adminNum" value="${list.emp_num}" type="hidden">
									<span class="apply_img"> 
									<!-- 이미지 나오게 만들기1 -->
									<img src="http://221.164.9.200/${list.emp_profile}" alt="">
									</span> <span class="hXmmql">${list.emp_name}</span> 
									<span class="ap_admin">관리자</span>
									<div class="fp_con${num.count} ic_hidden1">
										<div class="fp_icon_box1">
											<i class="fas fa-check"></i>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!--단계 추가하기-->
					<button class="successBtn">
						<div class="">완료</div>
					</button>
				</div>
			</div>

		</div>


	</div>
</div>
<!-- 모달 끝 -->

<!-- 연차 작성하기 클릭시 모달-->
<div class="fixmodal_travel" id="hidden_travel">

	<div class="fixmodal_overlay"></div>

	<div class="fix_modal_con">

		<!-- header -->
		<div class="fix_header">

			<div class="fh_child">
				<div class="fm_write">
					<div class="">작성</div>
				</div>
				<div class="fm_apply">연차 사용 계획</div>
				<div class="fm_empty_box"></div>
				<div class="fm_empty"></div>
				<button class="fm_box1">
					<div class="fm_xBox">x</div>
				</button>
			</div>

		</div>

		<!-- 중간 전체 박스 fix_middle_container_box-->
		<div class="fmc_box">

			<!--왼쪽박스 컨테이너-->
			<div class="fmc_fixBox">
				<div class="fmx_fixBox_2">
					<div class="fmx_fixBox_3">

						<div class="fmx_fixBox_4">
							<div class="fix_apply_icon">
								<img class="fix_apply_icon" src="${cpath}/img/workFlow/travel.png" alt="travel">
							</div>
							<div class="fix_apply_header">
								<div class="fix_apply_word">연차 사용 계획</div>
								<div class="fix_apply_icon1">
									<i class="fas fa-pen"></i>
								</div>
							</div>
						</div>
						<div class="cfmtOE">
							<span class="">올해 연차 사용 계획을 제출해주세요.</span>
						</div>

					</div>
				</div>

				<div class="fix_input_box_con">
					<!-- 연차 form 시작  -->
					<form class="fix_form2" method="POST" action="${cpath }/annual">
						<!-- 보내는 사람 -->
						<input name="sender" type="hidden" value="${login.emp_name}">
						<!-- 보내는 사람  사원번호 -->
						<input name="sender_num"type="hidden" value="${login.emp_num}">
						<!-- 받는 사람 -->
						<input name="recipient" type="hidden" value="" class="reciVal">
						<!-- 보내는 사람  사원번호 -->
						<input name="recipient_num" type="hidden" value="" class="reciValNum">		
						
						
						<!--input 박스 -->
						<div class="fix_input_box" style="margin-top: 12px;">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="input_type_c" name="period" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="text" placeholder=""> <label>제출기한</label>
									</div>
								</div>
							</div>
						</div>


						<div class="fix_input_box">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="input_type_c" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="text" value="${vacNum}${not empty vacNum  ? '일' : '' }"> <label>현재 남은 연차</label>
									</div>
								</div>
							</div>
						</div>

						
						<div class="fix_input_box">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="vacaInput" name="expected_date" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="text" value="예) 2021. 1. 27 (수) ~ 2021. 1. 29 (금) (3일)"> <label>연차 사용 예정일 </label>
									</div>
								</div>
							</div>
						</div>


						<div class="fix_input_box">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="input_type_c" name="emp_name" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="text" value="${login.emp_name }"> <label>성명</label>
									</div>
								</div>
							</div>
						</div>

						<div class="fix_input_box">
							<div class="" style="width: 750px;">
								<div class="box_type1 box_effect">
									<div class="icon_name">
										<i class="fas fa-user"></i>
									</div>
									<div class="box_input">
										<input class="input_type_c" name="emp_dept" style="font-size:14px; font-weight:400;"
											autocomplete="off" type="text" value="${login.emp_dept}"> <label>소속 부서</label>
									</div>
								</div>
							</div>
						</div>

					</form>
				</div>

				<!-- 하단 닫기 보내기-->
				<div class="">
					<div class="fix_bottom_box">
						<div class="fix_bottom_sec">
							<button class="bt_closeBtn">
								<div class="">닫기</div>
							</button>
							<button class="fmIVlh" style="margin-right:40px;">
								<div class="">
									<i class="fas fa-paper-plane" style="margin-right: 5px;"></i>
								</div>
								<div class="fix_submit2">
									보내기
								</div>
							</button>
						</div>
					</div>
				</div>

			</div>

			<!-- 연차 오른쪽박스 컨테이너-->
			<div class="right_box">
				<!-- 네모난 승인 박스 -->
				<div class="">
					<div class="apply_rig">승인 참조 대상</div>
					<!-- 조직장 리스트 -->
					<div class="apply_Alist_box">
						<c:forEach var="list" items="${adminList}" varStatus="num">
							<div class="apply_list1">
								<div class="alist_child" id="apply_Alist_${num.count}">
									<input class="adminNum" value="${list.emp_num}" type="hidden">
									<span class="apply_img"> 
									<!-- 이미지 나오게 만들기2 -->
										<img src="http://221.164.9.200/${list.emp_profile}" alt="">
									</span> <span class="hXmmql">${list.emp_name}</span> <span
										class="ap_admin">관리자</span>
									<div class="fp_con${num.count} ic_hidden1">
										<div class="fp_icon_box1">
											<i class="fas fa-check"></i>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!--단계 추가하기-->
					<button class="successBtn">
						<div class="">완료</div>
					</button>
				</div>
			</div>

		</div>



	</div>
</div>
<!-- 모달 끝 -->


<!-- sidemenu btn modal -->
<div class="cancleModel" id="cancleModhide">
	<div id="modal_logout" class="">
		<div class="modal_content_logout">
			<div class="head_modal">
				<div class="txt_modal">작성을 취소하시겠습니까?</div>
				<div style="margin-top:30px;">취소하면 작성하고 있던 내용이 모두 사라집니다.</div>
			</div>
			<div class="box_btn"><div>
				<button id="btn_cancel_w"><div>닫기</div></button>
				<button id="btn_logout_w"><div>작성 취소하기</div></button>
			</div></div>
		</div>
	</div>
</div>
</div>
<!-- 작성 div end -->

<!--  작성요청 모달 클릭 시 -->
<%@ include file="fixModal.jsp"%>
<%@ include file="annualModal.jsp"%>

<!-- 내 보관함  -->
<%@ include file="storage.jsp"%>



<!-- script -->



<!-- 내 보관함, 작성 열기 -->
<script>

	$('.header_fixBtn1').click(function(){
		$('.storageCon').attr("id","");
		$('.writeConA').attr("id","whidden");
		
		// css
		$('.header_fixBtn2').css("box-shadow","0");
		$('.header_fixBtn2').css("opacity","0.5");
		// css
		$('.header_fixBtn1').css("box-shadow","rgb(20 20 20 / 10%) 0px 3px 6px 0px");
		$('.header_fixBtn1').css("opacity","");

			
	})
	$('.header_fixBtn2').click(function(){
		$('.writeConA').attr("id","");
		$('.storageCon').attr("id","shidden");

		
		// css
		$('.header_fixBtn1').css("box-shadow","0");
		$('.header_fixBtn1').css("opacity","0.5");
		// css
		$('.header_fixBtn2').css("box-shadow","rgb(20 20 20 / 10%) 0px 3px 6px 0px");
		$('.header_fixBtn2').css("opacity","1");
	
		
	})
	

</script>



<!--  모달 창 열기 (비품,연차)-->
<script>
	
	var elT = $('input[type="text"]');
	var elN = $('input[type="number"]');
	

	$('.fix_btn').click(function() {
		
		$('.fixmodal').attr("id", "");
		
		// input focus 이벤트
		inputfocusF();
		inputblurF();
		
	})
	
	$('.travel_btn').click(function() {
		$('.fixmodal_travel').attr("id", "");
	})

</script>

<!-- 모달 닫기 (비품,연차) -->
<script>
	
// 오버레이 닫기
$('.fixmodal_overlay').click(function() {
	
	$(elT).parent('div').parent('div').css(
			'backgroundColor',
			'rgba(99, 114, 131, 0.04)');
	$(elT).parent('div').find('label').removeClass(
			'label_on');
	
	$(elN).parent('div').parent('div').css(
			'backgroundColor',
			'rgba(99, 114, 131, 0.04)');
	$(elN).parent('div').find('label').removeClass(
			'label_on');
	
	$('.fixmodal').attr("id", "hidden");
	$('.fixmodal_travel').attr("id", "hidden_travel");
	
		elT.val("")
		elN.val("");

})



// 닫기 버튼
$('.bt_closeBtn').click(function() {
	$('.cancleModel').attr("id","");
})
</script>

<script>
// 닫기 모달
	$('#btn_cancel_w').click(function(){
		$('.cancleModel').attr("id","cancleModhide");
	})
	
	$('#btn_logout_w').click(function(){
		
		$('.cancleModel').attr("id","cancleModhide")
		$(elT).parent('div').parent('div').css(
				'backgroundColor',
				'rgba(99, 114, 131, 0.04)');
		$(elT).parent('div').find('label').removeClass(
				'label_on');
		
		$(elN).parent('div').parent('div').css(
				'backgroundColor',
				'rgba(99, 114, 131, 0.04)');
		$(elN).parent('div').find('label').removeClass(
				'label_on');
		
		$('.fixmodal').attr("id", "hidden");
		$('.fixmodal_travel').attr("id", "hidden_travel");
		
			elT.val("")
			elN.val("");
		
		
	})
</script>



<!-- x버튼 누루기  -->
<script>

$('.fm_box1').click(function(){
	
	$('.fixmodal').attr("id", "hidden");
	$('.fixmodal_travel').attr("id", "hidden_travel");
	
	$(elT).parent('div').parent('div').css(
			'backgroundColor',
			'rgba(99, 114, 131, 0.04)');
	$(elT).parent('div').find('label').removeClass(
			'label_on');
	
	$(elN).parent('div').parent('div').css(
			'backgroundColor',
			'rgba(99, 114, 131, 0.04)');
	$(elN).parent('div').find('label').removeClass(
			'label_on');
	
	$('.fixmodal').attr("id", "hidden");
	$('.fixmodal_travel').attr("id", "hidden_travel");
	
		elT.val("")
		elN.val("");
	

})

</script>



<!-- 비품 연차 보내기 클릭 시 -->
<script>

	$('.fix_submit1').click(function(){
		
		$('.fix_form1').submit();
		
	})
	
	$('.fix_submit2').click(function(){
		$('.fix_form2').submit();
	})

</script>

<!--  비품 승인 참조 대상 리스트 클릭 시  -->
<script>

	$('.apply_list')
			.click(
					function(e) {
						
						var applyName = '';
						var reciValNum = '';
						var click = e.target.id;
						
						for (var i = 1; i <= $('.apply_conBox').children().length; i++) {
							if ($('#apply_Alist' + i).attr("id") != click) {
								$('#apply_Alist' + i).css("opacity", "0.5");
								$('#apply_Alist' + i).css("pointer-events", "none");

							}
							if($('#apply_Alist' + i).attr("id") == click){
								applyName = $('#apply_Alist' + i).children()[2].innerText;
								$('.reciVal').val(applyName);
								$('.reciValNum').val($('#apply_Alist' + i + ' input').val());
								
								$('#apply_Alist' + i).parent('div').css('background-color',
								'rgba(58, 80, 100, 0.07)');
								$('.fp_con'+i).attr("class","fp_con"+i);
								$('#apply_Alist'+i).attr("id", "");
							}

							
						}

					})
</script>

<!--  연차 승인 참조 대상 리스트 클릭 시  -->
<script>

	$('.apply_list1')
			.click(
					function(e) {
						
						
						var applyName = '';
						var reciValNum = '';
						var click = e.target.id;
						
						for (var i = 1; i <= $('.apply_Alist_box').children().length; i++) {
							if ($('#apply_Alist_' + i).attr("id") != click) {
								$('#apply_Alist_' + i).css("opacity", "0.5");
								$('#apply_Alist' + i).css("pointer-events", "none");

							}
							if($('#apply_Alist_' + i).attr("id") == click){
								applyName = $('#apply_Alist_' + i).children()[2].innerText;
								$('.reciVal').val(applyName);
								$('.reciValNum').val($('#apply_Alist'+i+' input').val());
								$('#apply_Alist_' + i).parent('div').css('background-color',
										'rgba(58, 80, 100, 0.07)');
								$('.fp_con'+i).attr("class","fp_con"+i);
								$('#apply_Alist_' + i).attr("id", "");
								
							}

						}

					})
</script>

<script>


</script>


</body>
</html>
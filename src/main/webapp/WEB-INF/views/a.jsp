<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
					<form class="fix_form3" method="POST" action="${cpath}/workFlow">
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
								<div class="fix_submit3">
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
									<img src="http://192.168.0.173/${list.emp_profile}" alt="">
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

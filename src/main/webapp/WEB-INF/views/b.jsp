<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
					<form class="fix_form4" method="POST" action="${cpath }/annual">
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
								<div class="fix_submit4">
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
										<img src="http://192.168.0.173/${list.emp_profile}" alt="">
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

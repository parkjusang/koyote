<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- 비품 확인 클릭시 모달-->
<div class="fixmodal" id="hidden">
	<!-- hidden -->


	<div class="fixmodal_overlay"></div>

	<div class="fix_modal_con">

		<!-- header -->
		<div class="fix_header">

			<div class="fh_child">
				<div class="fm_write" style="box-shadow: rgb(0 175 94 / 24%) 0px 0px 0px 1px inset, rgb(0 0 0 / 2%) 0px 1px 2px;">
					<div class="" style="color: rgb(0, 175, 94); ">미승인</div>
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
							<div class="fix_apply_icon"> <!-- ${cpath}/img/workFlow/mac.png -->
								<img class="fix_apply_icon" src="../img/mac.png" alt="computer">
							</div>
							<div class="fix_apply_header">
								<div class="fix_apply_word">비품 신청</div>
							
							</div>
						</div>
						<div class="cfmtOE">
							<span class="">작성자 : 김보람</span><br>
							<span class="">작성 일시 : 2021.4.7(수) 17:59</span>
						</div>

						<div class="fdTRgX">
						
						</div>
	
						<div class="">

							<div class="aad">
								<div class="fr-view">품명 :</div> 
								<div class="fr-view1">연필</div>
							</div>
							<div class="aad">
								<div class="fr-view">상품 정보(링크) :</div> 
								<div class="fr-view1">naver.com//wkd.wkrt</div>
							</div>
							<div class="aad">
								<div class="fr-view">수량 :</div> 
								<div class="fr-view1">5</div>
							</div>
							<div class="aad">
								<div class="fr-view">단가 :</div> 
								<div class="fr-view1">500</div>
							</div>
							<div class="aad">
								<div class="fr-view">금액 :</div> 
								<div class="fr-view1">2,500</div>
							</div>
							<div class="aad">
								<div class="fr-view">사유 :</div> 
								<div class="fr-view1">비품 재고 소진</div>
							</div>
						
						</div>

					</div>
				</div>

				<div class="fix_input_box_con1">
					
				</div>

				<!-- 하단 닫기 보내기-->
				<div class="">
					<div class="fix_bottom_box">
						<div class="fix_bottom_sec">
							<button class="textBoxcheck">
                                <div class="checkInCon">
                                    <input type="text" placeholder="승인/거절 메세지 입력">
                                </div>
							</button>
							<button class="chModal">
								<div class="">거절</div>
							</button>
							<button class="fmIVlh" style="margin-right:40px;">
								<div class="">
									<i class="fas fa-paper-plane" style="margin-right: 5px;"></i>
								</div>
								<div class="fix_submit1">
									승인하기
								</div>
							</button>
						</div>
					</div>
				</div>

			</div>

			<!-- 비품 오른쪽박스 컨테이너-->
			<div class="right_box">

				<div class="">
					<div class="apply_rig">작성 정보</div>
					<!-- 글쓴이 정보 -->
					<div class="apply_conBox">
							<div class="apply_list" >
<%-- 								<div class="alist_child" id="apply_Alist${num.count}"> --%>
<%-- 									<input class="adminNum" value="${list.emp_num}" type="hidden"> --%>
									<span class="apply_img"> 
									</span> <span class="hXmmql">김보람</span> 
									<span class="ap_admin">개발팀</span>
								</div>
							</div>
							
							<div class="textBoxCh">

									<div class="roundBox"></div>
									<div class="techeck">
										<i class="fas fa-check"></i>
									</div>

								<div class="chcommand">

									<div class="apply_img1"> 
									<img src="../img/burger.png" alt="">
									</div>
									
									<div class="">
										<div class="commendCh">김보람<span class="comSub">님승인</span></div>
										<div class="commendf">댓글</div>
									</div>

								</div>

							</div>
					</div>
				</div>
			</div>

		</div>


	</div>
</div>
<!-- 모달 끝 -->



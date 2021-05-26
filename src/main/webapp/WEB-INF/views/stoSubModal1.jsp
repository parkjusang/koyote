<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 보관함 확인 모달 -->
<div class="storaModel storageModal${stCount.count}" id="hidden">


	<div class="storaModel_overlay"></div>

	<div class="storaModel_con">

		<!-- header -->
		<div class="fix_header">


			<div class="fh_child">
				<div class="fm_write" style="box-shadow: rgb(0 175 94 / 24%) 0px 0px 0px 1px inset, rgb(0 0 0 / 2%) 0px 1px 2px;">
					<div class="" style="color: rgb(0, 175, 94); ">${stlist.approval}</div>
				</div>
				<div class="fm_apply" id="writerkinds${stCount.count}">
				
				<c:if test="${stlist.kinds eq '비품'}">
					비품
				</c:if>
				<c:if test="${stlist.kinds eq '연차'}">
					연차
				</c:if>
				
				</div>
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
								<c:if test="${stlist.kinds eq '비품' }"  >
									<img class="fix_apply_icon" src="${cpath}/img/workFlow/mac.png " alt="computer">
								</c:if>
								
								<c:if test="${stlist.kinds eq '연차' }"  >
									<img class="fix_apply_icon" src="${cpath}/img/workFlow/travel.png" alt="travel">
								</c:if>
						
							</div>
							<div class="fix_apply_header">
								<div class="fix_apply_word">
									<c:if test="${stlist.kinds eq '비품' }"  >
											비품 신청
										</c:if>
										<c:if test="${stlist.kinds eq '연차' }"  >
											연차 사용 계획
									</c:if>
								</div>
							
							</div>
						</div>
						<div class="cfmtOE">
							<span class="">작성자 : ${stlist.emp_name}</span><br>
							<div >
								<div style="display: flex;">
									<div>작성 일시 :</div>
									<div class="writerDate${stCount.count}">${stlist.req_date}</div>
									<div>(${stlist.weekend})</div>
								</div>
								<div class="writerNum${stCount.count}" id="hidden">${stlist.sender_num}</div>
							</div>
						</div>

						<div class="fdTRgX">
						
						</div>
	
				<c:if test="${stlist.kinds eq '비품' }" >
						<div class="aadBoxcon">

							<div class="aad">
								<div class="fr-view">품명 :</div> 
								<div class="fr-view1">${stlist.equip_name }</div>
							</div>
							<div class="aad">
								<div class="fr-view">상품 정보(링크) :</div> 
								<div class="fr-view1">${stlist.equip_info }</div>
							</div>
							<div class="aad">
								<div class="fr-view">수량 :</div> 
								<div class="fr-view1">${stlist.equip_amount } </div>
							</div>
							<div class="aad">
								<div class="fr-view">단가 :</div> 
								<div class="fr-view1">${stlist.equip_cost }</div>
							</div>
							<div class="aad">
								<div class="fr-view">금액 :</div> 
								<div class="fr-view1">${stlist.equip_sumcost }</div>
							</div>
							<div class="aad">
								<div class="fr-view">사유 :</div> 
								<div class="fr-view1">${stlist.equip_why }</div>
							</div>
						
						</div>
						
					</c:if>
					
				<c:if test="${stlist.kinds eq '연차' }" >
					
					<div class="aadBoxcon">

							<div class="aad">
								<div class="fr-view">제출기한 :</div> 
								<div class="fr-view1">${stlist.period }</div>
							</div>
							<div class="aad">
								<div class="fr-view">연차 사용 예정일 :</div> 
								<div class="fr-view1">${stlist.expected_date }</div>
							</div>
							
					</div>
						
							
					</c:if>
					

					</div>
				</div>

				<div class="fix_input_box_con1">
					
				</div>
			
			
			<c:if test="${stlist.approval != '완료' }"  >
				<!-- 하단 닫기 보내기-->
				<div class="">
					<div class="fix_bottom_box">
						<div class="fix_bottom_sec">
							<button class="textBoxcheck">
                                <div class="checkInCon">
                                    <input type="text" placeholder="승인/거절 메세지 입력" id="comInputT">
                                </div>
							</button>
							<button class="chModal">
								<div class="">거절</div>
							</button>
							<button class="stoSubmitCon" style="margin-right:40px;">
								<div class="">
									<i class="fas fa-paper-plane" style="margin-right: 5px;"></i>
								</div>
								<div class="stoSubmit">
									승인하기
								</div>
							</button>
						</div>
					</div>
				</div>
			</c:if>
	
			</div>

			<!-- 비품 오른쪽박스 컨테이너-->
			<div class="right_box">

				<div class="">
					<div class="apply_rig">작성 정보</div>
					<!-- 글쓴이 정보 -->
					<div class="apply_conBox">
							<div class="apply_list" >
									<span class="apply_img"> 
									</span> <span class="hXmmql">${stlist.emp_name }</span> 
									<span class="ap_admin">${stlist.emp_dept }</span>
								</div>
							</div>
							
							<div class="textBoxCh">

									<div class="roundBox"></div>
									<div class="techeck">
										<i class="fas fa-check"></i>
									</div>

								<div class="chcommand">

									<div class="apply_img1"> 
									<img src="http://192.168.0.173/${login.emp_profile}" alt="">
									</div>
									
									<div class="">
										<div class="commendCh">${login.emp_name}<span class="comSub">님승인</span></div>
										<div class="commendf">${stlist.command}</div>
									</div>

								</div>

							</div>
					</div>
				</div>
			</div>

		</div>

	</div>
		
		<form id="appForm" action="${cpath }/approval" method="POST">
			<input type="hidden" class="approval1" value="" name="sender_num">
			<input type="hidden" class="approval2" value="" name="req_date">
			<input type="hidden" class="approval3" value="" name="kinds">
			<input type="hidden" class="approval4" value="" name="command">
		</form>
		


<!-- 모달 끝 -->

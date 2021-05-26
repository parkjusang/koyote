<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

             <!-- 모달 시작 -->
                <div class="modal" id="hidden">

                    <div class="modal_overlay"></div>
                    <!--나머지 배경 어둡게 만드는 영역-->

                    <div class="modal_content">
                        <!--표시하고 싶은 내용-->

                        <div class="first_container">

                            <div class="Upper_div">

                                <div class="tmp"></div>

                                <div class="profile">

                                    <form action="profileUpload" id="uploadForm" method="post"
                                        enctype="multipart/form-data">
                                        <input type="file" name="file" id="fileInput"  style="opacity:0" /> 
                                        <input type="hidden" value="${login.emp_num}" name="emp_num">
                                            <!--  onclick="onclick=document.all.file.click()" -->
<!--                                         <div class="pen_div"> -->
<!--                                             <i class="fas fa-pen pen"></i> -->
<!--                                         </div> -->
                                       
                                    </form>
                                    <img class="profileImg" src="${serverPath }/${login.emp_profile}" alt="profile">
                                </div>
                                
								<button class="pen_div">
									<i class="fas fa-pen pen"></i>
								</button>

					<div class="name">${login.emp_name }</div>
                                <div class="team">${login.dept_name }</div>

                                <div class="info">
                                    <div class="info_3 copy1">
                                        <i class="fas fa-phone-alt info_1"></i>
                                    </div>
                                    <div class="info_3 copy2">
                                        <i class="far fa-envelope info_2"></i>
                                    </div>
                                </div>


                                <!-- info hover시 모달-->

                                <div class="room-list-empty-room1" id="info_hidden1">
                                    ${login.emp_pnum }</div>

                                <div class="room-list-empty-room2" id="info_hidden2">
                                    ${login.emp_email}</div>

                            </div>



                            <div class="catagory_list">
                                <!-- catagory_list 시작 -->
                                <div class="cataContainer">

                                    <div class="cata_out_box hr_box modalMenuOn">
                                        <div class="cata_in_box">
                                            <div class="cata_icon">
                                                <i class="fas fa-portrait"></i>
                                            </div>
                                            <div class="cata_write">인사정보</div>
                                        </div>
                                    </div>
                                    <div class="cata_out_box vacation_box">
                                        <div class="cata_in_box">
                                            <div class="cata_icon">
                                                <i class="fas fa-umbrella-beach"></i>
                                            </div>
                                            <div class="cata_write">휴가</div>
                                        </div>
                                    </div>
                                    <div class="cata_out_box workTime_box">
                                        <div class="cata_in_box">
                                            <div class="cata_icon">
                                                <i class="fas  fa-clock"></i>
                                            </div>
                                            <div class="cata_write">근무시간</div>
                                        </div>
                                    </div>
                                    <div class="cata_out_box notified_box">
                                        <div class="cata_in_box">
                                            <div class="cata_icon">
                                                <i class="fas fa-user-edit"></i>
                                            </div>
                                            <div class="cata_write">인사노트</div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- 마지막 catagory_list   -->
                        </div>
                        <!--  first_container end -->

                        <!-- 첫번째 인사정보,기본정보,공제정보 container-->

                        <div class="first_model_con">
                            <div class="main_container" id="">

                                <div class="second_container">

                                    <div class="first_box">

                                        <div class="main_header">

                                            <div class="main_HR main_HR_icon">
                                                <a href=""> <i class="fas fa-history"></i> 인사정보 변경내역
                                                </a>
                                            </div>

                                            <div class="hr_headerList">

                                                <div class="Leave_icon">
                                                    <i class="fas fa-power-off"
                                                        style="margin-right: 10px; color: rgb(54, 69, 84);"></i> 휴직
                                                </div>
                                                <div class="retirement_icon">
                                                    <i class="fas fa-user-slash" style="margin-right: 10px;"></i>
                                                    퇴직
                                                </div>
                                                <div class="moreBtn">
                                                    <button class="clickBtn">···더보기</button>
                                                </div>

                                            </div>

                                        </div> <!-- main_header end -->

                                    </div> <!-- first_box end -->


                                    <!-- Hr-box -->
                                    <div class="second_box">

                                        <div class="seconsd_BoxList">

                                            <div class="HR_management" id="test">

                                                <!-- 첫번째 row -->
                                                <div class="HR_parent">

                                                    <div class="">인사정보</div>

                                                    <div class="HR_line1"></div>

                                                    <div class="empty"></div>
                                                    <div class="info_modify">
                                                        <i class="fas fa-pen" style="margin-left: 8px;"></i>
                                                    </div>
                                                </div>

                                                <div class="row_box">
                                                    <!-- 두번째 row -->
                                                    <div class="">
                                                        <div class="">사번</div>
                                                        <div id="modal_emp_num" class="number">${login.emp_num}</div>
                                                    </div>

                                                    <!-- 세번째 row -->
                                                    <div class="">
                                                        <div class="">조직</div>
                                                        <div id="modal_emp_dept" class="Department">${login.emp_dept}</div>
                                                    </div>

                                                    <!-- 네번째 row -->
                                                    <div class="">
                                                        <div class="">직급</div>
                                                        <div id="modal_emp_pos" class="role">${login.emp_pos }</div>
                                                    </div>
                                                    <!-- 다섯번째 row -->
                                                    <div class="">
                                                        <div class="">입사일</div>
                                                        <div class="Entered_date"
                                                            style="width: 561px; border-bottom: 1px solid rgb(241, 237, 237);">
                                                            <span id="modal_start_day" style="margin-right: 9px;">${login.start_day.toLocaleString().substring(0,11)}</span>
                                                            <span class="day">300일지남</span>
                                                        </div>
                                                    </div>
                                                    <!-- 여섯번째 row -->
                                                    <div class="">
                                                        <div class="work_Type">근무유형</div>
                                                        <div class="work_type_div"
                                                            style="width: 561px; border-bottom: 1px solid rgb(241, 237, 237); margin-bottom: -15px;">
                                                            <div class="">시차 출 퇴근(기본)</div>
                                                            <div class="start_info">출근시간대 09:00 ~ 10:00 , 주 40시간
                                                                근무, 쉬는 날 : 토,일</div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="default_Info">
                                                <div class="HR_parent">
                                                    <div class="">기본정보</div>

                                                    <div class="HR_line2"></div>

                                                    <div class="empty"></div>

                                                    <div class="info_modify2">
                                                        <i class="fas fa-pen" style="padding-left: 8px;"></i>
                                                    </div>

                                                </div>

                                                <div class="row_box">

                                                    <!-- 두번째 row -->
                                                    <div class="">
                                                        <div class="">이름</div>
                                                        <div id="modal_emp_name" class="number">${login.emp_name}</div>
                                                    </div>


                                                    <!-- 세번째 row -->
                                                    <div class="">
                                                        <div class="">내 소개</div>
                                                        <div id="modal_emp_introduce" class="Department">${login.emp_introduce}</div>
                                                    </div>

                                                    <!-- 두번째 row -->
                                                    <div class="">
                                                        <div class="">이메일</div>
                                                        <div id="modal_emp_email" class="number">${login.emp_email}</div>
                                                    </div>
                                                    
                                                    <!-- 다섯번째 row -->
                                                    <div class="">
                                                        <div class="">주민등록번호</div>
                                                        <div id="modal_emp_birthnum" class="Entered_date"
                                                            style="width: 561px; border-bottom: 1px solid rgb(241, 237, 237);">
                                                            ${login.emp_birthnum}</div>
                                                    </div>
                                                    
                                                    <!-- 네번째 row -->
                                                    <div class="">
                                                        <div class="">휴대전화</div>
                                                        <div id="modal_emp_pnum" class="role">${login.emp_pnum}</div>
                                                    </div>
                                                    <!-- 여섯번째 row -->
                                                    <div class="">
                                                        <div class="work_Type">집주소</div>
                                                        <div id="modal_emp_addr" class="Entered_date"
                                                            style="width: 561px; border-bottom: 1px solid rgb(241, 237, 237);">
                                                            ${login.emp_addr}</div>

                                                    </div>
                                                    <!-- 여섯번째 row -->
                                                    <div class="">
                                                        <div class="work_Type">급여계좌</div>
                                                        <div class="bank_info"
                                                            style="width: 561px; border-bottom: 1px solid rgb(241, 237, 237);">
                                                            <div id="modal_emp_bank" class="">${login.emp_bank} ${login.emp_banknum}</div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="deduction">
                                                <div class="HR_parent">
                                                    <div class="">공제정보</div>

                                                    <div class="HR_line3"></div>

                                                    <div class="empty"></div>
                                                    <div class="info_modify3">
                                                        <i class="fas fa-pen" style="padding-left: 8px;"></i>
                                                    </div>

                                                </div>

                                                <div class="row_box">
                                                    <!-- 두번째 row -->
                                                    <div class="">
                                                        <div class="">근로소득세 원천징수세율</div>
                                                        <div class="number">100%</div>
                                                    </div>

                                                    <!-- 세번째 row -->
                                                    <div class="">
                                                        <div class="">공제대상가족 수</div>
                                                        <div class="Department">1명</div>
                                                    </div>

                                                    <!-- 네번째 row -->
                                                    <div class="">
                                                        <div class="">4대보험 제외</div>
                                                        <div class="role">4대보험 제외대상자가 아닙니다.</div>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>

                                    </div>

                                </div> <!-- second_container end -->
                            </div> <!-- main_container -->
                        </div>
                        <!-- first_model_box end -->


                        <!-- vacation-box -->
                        <div class="vacation_con">
                            <div class="main_container">
                                <div class="second_container">

                                    <div class="first_box">

                                        <div class="main_header">

                                            <div class="">

                                                <div class="work_more1_va">휴가입력</div>

                                                <div class="work_more2_va">
                                                    맞춤휴가부여
                                                    <div class="work-more2-icon">
                                                        <i class="fas fa-caret-down "></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>



                                    <div class="div">
                                        <div class="div2_list2">
                                            <div class="HR_management1">

                                                <!-- 첫번째 row -->
                                                <div class="summary">

                                                    <div class="">휴가현황</div>

                                                    <div class="modal_vacation_line"></div>

                                                </div>

                                                <div class="box_list">

                                                    <!-- 두번째 row -->
                                                    <div class="">
                                                        <div class="v_parent_box">남은휴가</div>
                                                        <div class="num">${vacNum}일</div>

                                                        <!--  아이콘 -->
                                                        <div class="va_question_con">
                                                            <div class="question_icon">
                                                                <i class="fas fa-exclamation-circle"></i>
                                                            </div>

                                                            <!-- 마우스 hover시 작동  -->

                                                            <div class="va_room">${vacNum}일:사용기한
                                                                D-${RemainingNum}</div>

                                                        </div>

                                                    </div>



                                                    <!-- 세번째 row -->
                                                    <div class="">
                                                        <div class="v_parent_box">리프레시 휴가</div>
                                                        <div class="num">
                                                            <span>D-716</span> <span>2023. 03. 05 에 사용 가능</span>
                                                        </div>
                                                    </div>


                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                </div>
                                <!-- second_container end -->

                            </div>
                            <!-- main_container end -->

                        </div>
                        <!--vacation_con end-->

                        <!-- workTime-box -->
                        <div class="workTime_con">

                            <div class="main_container" id="">

                                <div class="second_container">

                                    <div class="first_box">

                                        <div class="main_header">

                                            <div class="">

                                                <div class="work_more1">
                                                    <button class="" style="color: rgb(183, 40, 40);">
                                                        <i class="fas fa-user-alt-slash"></i> 결근처리
                                                    </button>
                                                </div>

                                                <div class="work_more2">
                                                    <button class="">
                                                        <i class="fas fa-history"></i> 상세근무시간표
                                                    </button>
                                                </div>

                                            </div>

                                        </div>

                                    </div>



                                    <div class="div">
                                        <div class="div2_list2">

                                            <div class="day_box">

                                                <div class="day_month1">4</div>
                                                <span class="day_month2">월</span>
                                                <div class="day_empty"></div>

                                                <div class="day_month3">
                                                    2021년<br>4.7~4.14
                                                </div>

                                                <div>
                                                    <i class="fas fa-angle-left"></i>
                                                </div>

                                                <div class="week">
                                                    <div>이번주</div>
                                                </div>

                                                <div>
                                                    <i class="fas fa-angle-right"></i>
                                                </div>


                                            </div>


                                            <div class="HR_management1">


                                                <!-- 첫번째 row -->
                                                <div class="summary">

                                                    <div class="">근무시간 요약</div>

                                                    <div class="line"></div>

                                                </div>

                                                <div class="box_list">
                                                    <!-- 두번째 row -->
                                                    <div class="">
                                                        <div class="parent_box">총 근무인정</div>
                                                        <div class="num">${allWork}/ 40시간</div>

                                                        <!-- 물음표 아이콘 -->
                                                        <div class="question_con">
                                                            <div class="question_icon">
                                                                <i class="far fa-question-circle"></i>
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <!-- 세번째 row -->
                                                    <div class="">
                                                        <div class="parent_box">근무시간</div>
                                                        <div class="num">24.25 / 32.25시간</div>
                                                    </div>

                                                    <!-- 네번째 row -->
                                                    <div class="">
                                                        <div class="parent_box">기본근무</div>
                                                        <div class="num">24.25 / 32.25시간</div>
                                                    </div>
                                                    <!-- 다섯번째 row -->
                                                    <div class="">
                                                        <div class="parent_box">초과근무</div>
                                                        <div class="note">
                                                        
                                                        	<c:if test="${allEx == '0'}">
                                                        		초과근무 기록이 없습니다.
                                                        		
                                                        	</c:if>
                                                        	
                                                        	<c:if test="${allEx != '0'}">
                                                        		${allEx}시간
                                                        	</c:if>
                                                        </div>
                                                    </div>
                                                    <!-- 여섯번째 row -->
                                                    <div class="">
                                                        <div class="parent_box">유급휴가</div>
                                                        <div class="note">유급휴가 기록이 없습니다.</div>
                                                    </div>
                                                </div>

                                            </div>


                                        </div>

                                    </div>

                                </div>

                            </div>
                            <!-- main_container end -->

                        </div>
                        <!-- workTime_con end-->

                        <!-- notified-box -->
                        <div class="notified_con">

                            <div class="main_container" id="">
                                <div class="second_container">


                                    <div class="div2">
                                        <div class="salary_list">

                                            <div class="">

                                                <!-- 첫번째 row -->
                                                <div class="">

                                                    <div class="salary_HR_management">급여</div>

                                                    <div class="salary_line1"></div>

                                                </div>

                                                <div class="salary_box">
                                                    <div>구름</div>
                                                    <div>급여명세서가 아직 없습니다.</div>
                                                    <div>flex에서 급여 정산을 시작하면, 이 곳에 실 지급액이 표시됩니다.</div>
                                                </div>

                                                <div class="">

                                                    <div class="">
                                                        <div class="salary_default_Info">지급 내역</div>

                                                        <div class="salary_line2"></div>


                                                    </div>

                                                    <div class="salary_box">
                                                        <div>수당 ・ 지급 항목을 확인할 수 있습니다.</div>
                                                        <div>월 고정 지급과 특정 월에만 해당하는 변동 지급 비율도 확인 가능합니다.</div>
                                                    </div>

                                                </div>

                                                <div class="">

                                                    <div class="">
                                                        <div class="salary_deduction">공제 내역</div>

                                                        <div class="salary_line3"></div>

                                                    </div>

                                                    <div class="salary_box">
                                                        <div>필수 ・ 기타 공제 항목을 확인할 수 있습니다.</div>
                                                        <div>근로소득세, 4대보험료 등 필수 공제와 그 외 기타 공제의 비율도 확인 가능합니다.</div>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>


                        <!-- 인사정보 수정(연필) 클릭 시 -->
                        <div class="second_container_2" id="con2_hidden1">

                            <div class="" style="box-shadow: rgb(0 0 0/ 4%) 0px -1px 0px 0px inset;">
                                <div class="header_2">

                                    <div class="back">
                                        <i class="fas fa-arrow-left"></i> 돌아가기
                                    </div>

                                    <div class="empty_2"></div>

                                    <div class="header_box">
                                        <div class="cancle_hr">
                                            <div class="">취소</div>
                                        </div>

                                        <div class="fixed">
                                            <i class="fas fa-check" style="margin-right: 5px;"></i>적용하기
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="HR_info_container">

                                <form id="HR_form">
                                    <input type="hidden" value="${login.emp_num}" name="emp_priorNum">

                                    <div class="HR_info">인사정보</div>

                                    <div class="HR_display">

                                        <div class="HR_box">

                                            <div class="HR_line"
                                                style="border-top-left-radius: 11px; border-bottom-left-radius: 11px; cursor: not-allowed;">

                                                <div class="HR_icon" style="cursor: not-allowed">
                                                    <i class="far fa-flag"></i>
                                                </div>

                                                <div class="input_box" style="cursor: not-allowed">
                                                    <input type="text" value="${login.emp_num}" name="emp_num" readonly="readonly" style="cursor: not-allowed">
                                                    <label style="cursor: not-allowed">사번(선택)</label >
                                                </div>


                                            </div>

                                        </div>

                                        <div class="HR_box">

                                            <div class="HR_line"
                                                style="border-bottom-right-radius: 11px; border-top-right-radius: 11px;">
                                                <div class="input_box">
                                                    <input type="text" value="${login.emp_pos}" name="emp_pos"
                                                        style="width: 700px;"> <label>직책</label>
                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="HR_box_2">

                                        <div class="HR_line_1">
                                            <div class="HR_icon">
                                                <i class="far fa-calendar-check"></i>
                                            </div>
                                            <div class="text_box">입사일</div>
                                            <div class="">
                                                <input id="datepicker1" type="text" value="${login.start_day.toLocaleString().substring(0,11)}"
                                                    name="start_day">
                                            </div>

                                        </div>

                                    </div>

                                    <div class="HR_box_2 departMent_con">

                                        <div class="HR_line_1" id="depart_click">
                                            <div class="HR_icon">
                                                <i class="far fa-building"></i>
                                            </div>
                                            <div class="input_box3">
                                                <input id="dept_input" type="text" name="emp_dept"
                                                    value="${login.emp_dept}"><label>조직</label>
                                            </div>

                                        </div>

                                        <!-- 조직 클릭스 스르륵 열리는 창 -->
                                        <div class="depart_container">
                                            <c:forEach var="deptList" items="${departList}">
                                                <div class="depart_box" id="${deptList['DEPT_NO']}">
                                                    <div class="item1">
                                                        <div class="itam_in" id="itam_num">
                                                            <i class="far fa-calendar-check"></i>${deptList['DEPT_NAME']}
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>


                                    </div>

                                    <div class="HR_box_2">

                                        <div class="HR_line_1">
                                            <div class="HR_icon">
                                                <i class="far fa-calendar-check"></i>
                                            </div>
                                            <div class="text_box">입사정보 변경 시점</div>
                                            <div class="">
                                                <input id="datepicker2" type="text" placeholder="입사정보 변경 시점"
                                                    value="2021-06-12" name="emp_info_change">
                                            </div>

                                        </div>

                                    </div>
                                </form>

                            </div>

                        </div>

                        <!-- 기본정보 수정(연필) 클릭 시-->
                        <div class="second_container_3" id="con2_hidden2">

                            <div style="box-shadow: rgb(0 0 0/ 4%) 0px -1px 0px 0px inset;">
                                <div class="header_2">

                                    <div class="back">
                                        <i class="fas fa-arrow-left"></i> 돌아가기
                                    </div>

                                    <div class="empty_2"></div>

                                    <div class="header_box">
                                        <div class="cancle_def">
                                            <div class="">취소</div>
                                        </div>

                                        <div class="fixed1">
                                            <i class="fas fa-check" style="margin-right: 5px;"></i>적용하기
                                        </div>
                                    </div>
                                </div>
                            </div>


                                <div class="def_info_con">

                                    <!-- 프로필 -->
                                    <div class="def_profile click_profile">
                                        <div class="def_img">
                                           <img class="profileImg" src="${serverPath }/${login.emp_profile}" alt="headerProfile">
                                        </div>
                                        <button class="pen_div_1">
                                            <i class="fas fa-pen pen"></i>
                                        </button>
                                    </div>

                            <form id="infoForm">
                                <input type="hidden" value="${login.emp_num}" name="emp_num">

                                    <!-- 기본정보 -->
                                    <div class="def_info_div1">
                                        <div class="">기본정보</div>
                                    </div>

                                    <div class="def_con">



                                        <!-- 이름 -->

                                        <div class="HR_display">

                                            <div class="" style="width: 100%;">

                                                <div class="HR_line4"
                                                    style="border-top-left-radius: 11px; border-bottom-left-radius: 11px; border-bottom-right-radius: 11px; border-top-right-radius: 11px;">

                                                    <div class="HR_icon">
                                                        <i class="fas fa-user-alt"></i>
                                                    </div>

                                                    <div class="input_box">
                                                        <input type="text" value="${login.emp_name}" name="emp_name">
                                                        <label>이름</label>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>



                                        <!-- 내소개 -->

                                        <div class="HR_display">

                                            <div class="" style="width: 100%;">

                                                <div class="HR_line4"
                                                    style="border-top-left-radius: 11px; border-bottom-left-radius: 11px; border-bottom-right-radius: 11px; border-top-right-radius: 11px;">

                                                    <div class="HR_icon">
                                                        <i class="fas fa-chalkboard-teacher"></i>
                                                    </div>

                                                    <div class="input_box">
                                                        <input type="text" value="${login.emp_introduce}"
                                                            name="emp_introduce"> <label>내소개</label>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>



                                        <!-- 이메일 -->

                                        <div class="HR_display">

                                            <div class="" style="width: 100%;">

                                                <div class="HR_line4"
                                                    style="border-top-left-radius: 11px; border-bottom-left-radius: 11px; border-bottom-right-radius: 11px; border-top-right-radius: 11px;">

                                                    <div class="HR_icon">
                                                        <i class="fas fa-address-book"></i>
                                                    </div>

                                                    <div class="input_box">
                                                        <input type="text" value="${login.emp_email}"
                                                            name="emp_email"> <label>이메일</label>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>
                                        
                                        <!-- 주민번호 -->

                                        <div class="HR_display">

                                            <div class="" style="width: 100%;">

                                                <div class="HR_line4"
                                                    style="border-top-left-radius: 11px; border-bottom-left-radius: 11px; border-bottom-right-radius: 11px; border-top-right-radius: 11px;">

                                                    <div class="HR_icon">
                                                        <i class="fas fa-address-book"></i>
                                                    </div>

                                                    <div class="input_box">
                                                        <input type="text" value="${login.emp_birthnum}"
                                                            name="emp_birthnum"> <label>주민번호</label>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>



                                        <!--폰번호-->

                                        <div class="HR_display">

                                            <div class="" style="width: 100%;">

                                                <div class="HR_line4"
                                                    style="border-top-left-radius: 11px; border-bottom-left-radius: 11px; border-bottom-right-radius: 11px; border-top-right-radius: 11px;">

                                                    <div class="HR_icon">
                                                        <i class="fas fa-phone-alt"></i>
                                                    </div>

                                                    <div class="input_box">
                                                        <input type="text" value="${login.emp_pnum}" name="emp_pnum">
                                                        <label>폰번호</label>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>



                                        <!-- 집주소 -->

                                        <div class="HR_display">

                                            <div class="" style="width: 100%;">

                                                <div class="HR_line4"
                                                    style="border-top-left-radius: 11px; border-bottom-left-radius: 11px; border-bottom-right-radius: 11px; border-top-right-radius: 11px;">

                                                    <div class="HR_icon">
                                                        <i class="fas fa-map-marker-alt"></i>
                                                    </div>

                                                    <div class="input_box">
                                                        <input type="text" value="${login.emp_addr}" name="emp_addr">
                                                        <label>집주소</label>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>



                                    </div>

                                    <!-- 급여정보 -->
                                    <div class="def_info_div1" style="margin-top: 20px;">
                                        <div class="">급여정보</div>

                                    </div>

                                    <div class="HR_display">

                                        <div class="" style="width: 30%;">

                                            <div class="HR_line4"
                                                style="border-top-left-radius: 11px; border-bottom-left-radius: 11px;">

                                                <div class="HR_icon">
                                                    <i class="fas fa-university"></i>
                                                </div>

                                                <div class="input_box4">
                                                    <input type="text" value="${login.emp_bank}" name="emp_bank">
                                                    <label>은행명</label>
                                                </div>

                                            </div>

                                        </div>

                                        <div class="" style="width: 70%;">

                                            <div class="HR_line"
                                                style="border-bottom-right-radius: 11px; border-top-right-radius: 11px;">

                                                <div class="input_box5">
                                                    <input type="text" value="${login.emp_banknum}"
                                                        name="emp_banknum">
                                                    <label>급여계좌번호</label>
                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </form>

                        </div>
                        <!-- 첫번째 인사정보,기본정보,공제정보 container end-->



                        <!-- 더보기 경력수정 클릭 시-->
                        <div class="second_container_4" id="con2_hidden3">

                            <div style="box-shadow: rgb(0 0 0/ 4%) 0px -1px 0px 0px inset;">
                                <div class="header_2">

                                    <div class="back">
                                        <i class="fas fa-arrow-left"></i> 돌아가기
                                    </div>

                                    <div class="empty_2"></div>

                                    <div class="header_box">
                                        <div class="cancle">
                                            <div class="">취소</div>
                                        </div>

                                        <div class="fixed">
                                            <i class="fas fa-check" style="margin-right: 5px;"></i>적용하기
                                        </div>
                                    </div>

                                </div>
                            </div>


                            <!-- 경력수정 클릭 시  -->
                            <div class="def_info_con">

                                <!-- 기본정보 -->
                                <div class="def_info_div1">
                                    <div class="">기본정보</div>

                                </div>
                                <div class="def_con">

                                    <!-- 이름 -->
                                    <div class="HR_box_2">

                                        <div class="HR_line_1">
                                            <div class="HR_icon">
                                                <i class="fas fa-user-alt"></i>
                                            </div>
                                            <div class="input_box3">
                                                <input type="text"> <label>이름</label>
                                            </div>

                                        </div>

                                    </div>

                                    <!-- 내소개 -->
                                    <div class="HR_box_2">

                                        <div class="HR_line_1">
                                            <div class="HR_icon">
                                                <i class="fas fa-chalkboard-teacher"></i>
                                            </div>
                                            <div class="input_box3">
                                                <input type="text"> <label>내소개</label>
                                            </div>

                                        </div>

                                    </div>

                                    <!-- 주민번호 -->
                                    <div class="HR_box_2">

                                        <div class="HR_line_1">
                                            <div class="HR_icon">
                                                <i class="fas fa-address-book"></i>
                                            </div>
                                            <div class="input_box3">
                                                <input type="text"> <label>주민번호</label>
                                            </div>

                                        </div>

                                    </div>

                                    <!-- 폰번호 -->
                                    <div class="HR_box_2">

                                        <div class="HR_line_1">
                                            <div class="HR_icon">
                                                <i class="fas fa-phone-alt"></i>
                                            </div>
                                            <div class="input_box3">
                                                <input type="text"> <label>폰번호</label>
                                            </div>

                                        </div>

                                    </div>
                                    <!-- 집주소 -->
                                    <div class="HR_box_2">

                                        <div class="HR_line_1">
                                            <div class="HR_icon">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </div>
                                            <div class="input_box3">
                                                <input type="text"> <label>집주소</label>
                                            </div>

                                        </div>

                                    </div>


                                </div>

                                <!-- 급여정보 -->
                                <div class="def_info_div1" style="margin-top: 20px;">
                                    <div class="">급여정보</div>

                                </div>

                                <div class="HR_display">

                                    <div class="" style="width: 30%;">

                                        <div class="HR_line4"
                                            style="border-top-left-radius: 11px; border-bottom-left-radius: 11px;">

                                            <div class="HR_icon">
                                                <i class="fas fa-university"></i>
                                            </div>

                                            <div class="input_box4">
                                                <input type="text"> <label>은행명</label>
                                            </div>

                                        </div>

                                    </div>

                                    <div class="" style="width: 70%;">

                                        <div class="HR_line"
                                            style="border-bottom-right-radius: 11px; border-top-right-radius: 11px;">

                                            <div class="input_box5">
                                                <input type="text"> <label>급여계좌번호</label>
                                            </div>

                                        </div>

                                    </div>

                                </div>
                                </form>
                            </div>

                        </div>
                        <!-- 더보기 경력수정 클릭 end -->

                    </div>
                    <!-- modal_content and -->


                    <!-- 모달 밖 더보기 모달창  -->
                    <div class="">
                        <div class="clickList" id="plus_hidden">
                            <ul>
                                <li class="HR_modi"
                                    style="padding-top: 5px; padding-bottom: 5px; margin-bottom: 10px; border-bottom: 1px solid #ccc;">
                                    <i class="fas fa-user-alt"></i>인사정보 수정
                                </li>
                                <li class="defualt_modi"><i class="fas fa-pen"></i>기본정보 수정</li>
                                <li class="career_modi"><i class="fas fa-city" style="font-size: 12px;"></i>경력 수정</li>
                                <li class="Education_modi" style="padding-bottom: 7px;"><i
                                        class="fas fa-user-graduate"></i>학력 정보</li>
                                <li style="border-top: 1px solid #ccc;"><i class="fas fa-times"
                                        style="color: rgb(195, 29, 29);"></i>삭제</li>
                            </ul>
                        </div>
                    </div>
                    <!-- 모달 밖 더보기 모달창 end -->


                    <!-- 기본 정보 안 프로필 수정 모달창 -->
                    <div class="">
                        <div class="clickList_2" id="profile_hidden">
                            <ul>
                                <li>
                                    <form>
                                        <input id="profile_file" type="file"><i class="fas fa-pen"></i> 프로필 수정
                                    </form>
                                </li>
                                <li id="delete"><i class="fas fa-times" style="color: rgb(195, 29, 29);"></i>삭제</li>
                            </ul>
                        </div>
                    </div>
                    <!--  기본 정보 안  프로필 수정 모달창 end -->


                    <!-- 프로필 전화,메일  hover 시 타나는 모달 -->
                    <div class="copy_clip1" id="copy_hidden1">
                        <div class="">

                            <div class="copy_icon">
                                <i class="fas fa-check"></i>
                            </div>

                            <div class="copy_text">'${login.emp_pnum }'가 복사되었습니다.</div>
                        </div>
                    </div>
                    <div class="copy_clip2" id="copy_hidden2">
                        <div class="">

                            <div class="copy_icon">
                                <i class="fas fa-check"></i>
                            </div>

                            <div class="copy_text">'${login.emp_email}'가 복사되었습니다.</div>
                        </div>
                    </div>
                    <!-- 프로필 전화,메일  hover 시 타나는 모달 end -->


                    <!-- 프로필 변경시 나타나는 모달 -->
                    <div class="copy_clip3" id="copy_hidden3">
                        <div class="">

                            <div class="copy_icon">
                                <i class="fas fa-check"></i>
                            </div>

                            <div class="copy_text">'프로필 이미지가 저장되었습니다.'</div>
                        </div>
                    </div>
                    <!-- 프로필 변경시 나타나는 모달 end -->

                    <!-- 인사정보 적용 시 나타나는 모달 -->
                    <div class="copy_clip4" id="copy_hidden4">
                        <div class="">
                            <div class="copy_icon">
                                <i class="fas fa-check"></i>
                            </div>

                            <div class="copy_text">인사정보가 수정되었습니다.</div>
                        </div>
                    </div>
                    <!-- 인사정보 적용 시 나타나는 모달 end -->

                    <!-- 기본정보 적용 시 나타나는 모달 -->
                    <div class="copy_clip5" id="copy_hidden5">
                        <div class="">
                            <div class="copy_icon">
                                <i class="fas fa-check"></i>
                            </div>

                            <div class="copy_text">기본정보가 수정되었습니다.</div>
                        </div>
                    </div>
                    <!-- 기본정보 적용 시 나타나는 모달 end -->

                </div>
                <!-- 모달 마지막 div-->
                
                
                
		<!-- 모달 스크립트 시작  -->


		<!-- 모달 창 열기 -->
		<script>
                $('.btn_profile').click(function () {
                    $('.modal').attr("id", "");
                })

                $('.modal_overlay').click(function () {
                    $('.modal').attr("id", "hidden");
                    
                    // 모달이 꺼지면 인사정보창으로 기본 셋팅
                    $('.first_model_con').show();
                    $('.vacation_con').hide();
                    $('.notified_con').hide();
                    $('.workTime_con').hide();
                    
                    $('.main_container').attr("id", "");
                    $('.second_container_2').attr("id", "back_hidden1")
                    $('.second_container_3').attr("id", "back_hidden2")
                    
                    setMenuModal();
                    $('.hr_box').addClass('modalMenuOn');
                })
            </script>


		<!-- 파일업로드 -->


		<script>
				
                document.getElementById('profile_file').addEventListener("change", function (e) {

                    //1MB(메가바이트)는 1024KB(킬로바이트)
                    var maxSize = 2048;

                    //input file 태그.
                    var fileM = document.getElementById('profile_file');
                    //파일 경로.
                    var filePath = fileM.value;
                    //전체경로를 \ 나눔.
                    var filePathSplit = filePath.split('\\');
                    //전체경로를 \로 나눈 길이.
                    var filePathLength = filePathSplit.length;
                    //마지막 경로를 .으로 나눔.
                    var fileNameSplit = filePathSplit[filePathLength - 1]
                        .split('.');
                    //파일명 : .으로 나눈 앞부분
                    var fileName = fileNameSplit[0];
                    //파일 확장자 : .으로 나눈 뒷부분
                    var fileExt = fileNameSplit[1];

                    // 값이 들어 오면
                    if (fileName != '') {

                        var formFile = $('#uploadForm');

                        // FormData 객체 생성
                        var formData = new FormData();

                        formData.append('file', e.target.files[0]);
                        formData.append('emp_num',
                            formFile[0].children[1].value);

                        $.ajax({
                            type: "POST",
                            enctype: 'multipart/form-data',
                            url: cpath + '/form/',
                            data: formData,
                            processData: false,
                            contentType: false,
                            cache: false,
                            timeout: 600000,
                            success: function (data) {
                                console.log("SUCCESS : ", data);
                                $(".profileImg").attr("src", "http://192.168.0.173/" + data);

                                if (data == '1') {
                                    $('#copy_hidden3').attr("id", "");
                                }
                            },
                            error: function (e) {
                                console.log("ERROR : ", e);
                            }
                        });

                        $(".copy_clip3").fadeIn(1000).delay(3000).fadeOut(1000);

                    }


                })

            </script>
            

		<script>
				// 기본 정보 프로필 변경
                document.getElementById('fileInput').addEventListener("change", function (e) {

                    //1MB(메가바이트)는 1024KB(킬로바이트)
                    var maxSize = 2048;

                    //input file 태그.
                    var file = document.getElementById('fileInput');
                    //파일 경로.
                    var filePath = file.value;
                    //전체경로를 \ 나눔.
                    var filePathSplit = filePath.split('\\');
                    //전체경로를 \로 나눈 길이.
                    var filePathLength = filePathSplit.length;
                    //마지막 경로를 .으로 나눔.
                    var fileNameSplit = filePathSplit[filePathLength - 1]
                        .split('.');
                    //파일명 : .으로 나눈 앞부분
                    var fileName = fileNameSplit[0];
                    //파일 확장자 : .으로 나눈 뒷부분
                    var fileExt = fileNameSplit[1];

                    // 값이 들어 오면
                    if (fileName != '') {

                        var formFile = $('#uploadForm');

                        // FormData 객체 생성
                        var formData = new FormData();

                        formData.append('file', e.target.files[0]);
                        formData.append('emp_num',
                            formFile[0].children[1].value);

                        $.ajax({
                            type: "POST",
                            enctype: 'multipart/form-data',
                            url: cpath + '/form/',
                            data: formData,
                            processData: false,
                            contentType: false,
                            cache: false,
                            timeout: 600000,
                            success: function (data) {
                                console.log("SUCCESS : ", data);
                                $(".profileImg").attr("src", "${serverPath }/" + data);

                                if (data == '1') {
                                    $('#copy_hidden3').attr("id", "");
                                }
                            },
                            error: function (e) {
                                console.log("ERROR : ", e);
                            }
                        });

                        $(".copy_clip3").fadeIn(1000).delay(3000).fadeOut(1000);

                    }


                })

            </script>


		<!-- input 값이 들어가있으면 이벤트 작동 -->
		<script>
                $(document).ready(
                    function () {

                        $('input').each(
                            function () {
                                if ($(this).val() != '') {
//                                     console.log($(this));
                                    $(this).parent('div').find('label')
                                        .addClass('label_on');
                                }

                            });

                    });
            </script>


		<!-- 더보기 클릭 시 이벤트 -->
		<script>
                $(".clickBtn").click(function () {

                    if ($('.clickList').attr("id") == "") {
                        $('.clickList').attr("id", "plus_hidden");
                    } else {
                        $('#plus_hidden').attr("id", "");
                    }

                    $('.clickList').mouseleave(function () {
                        $('.clickList').attr("id", "plus_hidden");
                    })

                })
            </script>

		<!-- 프로필 클릭 시 이벤트-->
		<script>
                $(".pen_div_1").click(function () {

                    if ($('.clickList_2').attr("id") == "") {
                        $('.clickList_2').attr("id", "profile_hidden");
                    } else {
                        $('.clickList_2').attr("id", "");
                    }

                    $('.clickList_2').mouseleave(function () {
                        $('.clickList_2').attr("id", "profile_hidden");
                    })

                })
            </script> 

		<!-- 인사정보 수정 연필 클릭-->
		<script>
                $('.info_modify').click(function () {
                    $('.main_container').attr("id", "con2_hidden1");
                    $('.second_container_2').attr("id", "")

                })
            </script>

		<!-- 인사정보 돌아가기 -->
		<script>
                $('.back').click(function () {
                    $('.main_container').attr("id", "");
                    $('.second_container_2').attr("id", "con2_hidden1")
                })
            </script>

		<!-- 인사정보 취소 -->
		<script>
                $('.cancle_hr').click(function () {
                    $('.main_container').attr("id", "");
                    $('.second_container_2').attr("id", "back_hidden1")
                })
            </script>

		<!-- 기본 정보 연필 클릭 -->
		<script>
                $('.info_modify2').click(function () {
                    $('.main_container').attr("id", "hidden");
                    $('.second_container_3').attr("id", "");

                })
            </script>

		<!-- 기본 정보 돌아가기 -->
		<script>
                $('.back').click(function () {
                    $('.main_container').attr("id", "");
                    $('.second_container_3').attr("id", "back_hidden2")
                })
            </script>

		<!-- 기본 정보 취소 -->
		<script>
                $('.cancle_def').click(function () {
                    $('.main_container').attr("id", "");
                    $('.second_container_3').attr("id", "back_hidden2")
                })
            </script>

		<!-- 글자 스르륵 뒤로 이벤트-->
		<script>
                // input fous 이벤트
                $('input[type="text"]')
                    .focus(
                        function () {
                            $(this).parent('div').parent('div').css(
                                'backgroundColor', 'white');
                            $(this)
                                .parent('div')
                                .parent('div')
                                .css(
                                    'boxShadow',
                                    'rgb(29 56 83 / 8%) 0px 0px 0px 2px inset, rgb(0 0 0 / 4%) 0px 1px 1px 0px inset');
                            $(this).parent('div').find('label').addClass(
                                'label_on');
                        });
                // input blur 이벤트
                $('input[type="text"]')
                    .blur(
                        function () {
                            if ($(this).val() == '') {
                                $(this).parent('div').parent('div').css(
                                    'backgroundColor',
                                    'rgba(99, 114, 131, 0.02)');
                                $(this)
                                    .parent('div')
                                    .parent('div')
                                    .css(
                                        'boxShadow',
                                        'rgb(29 56 83 / 8%) 0px 0px 0px 1px inset, rgb(0 0 0 / 4%) 0px 1px 1px 0px inset');
                                $(this).parent('div').find('label')
                                    .removeClass('label_on');
                            } else {
                                $(this).parent('div').find('label')
                                    .addClass('label_on');
                            }
                        });
            </script>

		<!-- 캘린더 -->
		<script>
                $("#datepicker1").flatpickr({
                    dateFormat: "Y.m.d",
                    minDate: "today"
                });

                $("#datepicker2").flatpickr({
                    dateFormat: "Y.m.d",
                    minDate: "today"
                });
            </script>


		<!-- info hover , close 스크립트-->
		<script>
                $('.info_1').hover(function () {
                    $('.room-list-empty-room1').attr("id", "");
                })

                $('.info_1').mouseout(function () {
                    $('.room-list-empty-room1').attr("id", "info_hidden1");
                })

                $('.info_2').hover(function () {
                    $('.room-list-empty-room2').attr("id", "");
                })
                $('.info_2').mouseout(function () {
                    $('.room-list-empty-room2').attr("id", "info_hidden2");
                })
            </script>



		<!-- 클립보드 복사 -->
		<script>
                const pnum = document.getElementById('info_hidden1');
                const email = document.getElementById('info_hidden2');

                document.querySelector(".copy1").addEventListener("click",
                    function () {
                        var tempElem = document.createElement('textarea');
                        tempElem.value = pnum.innerText;

                        document.body.appendChild(tempElem);

                        tempElem.select();
                        document.execCommand("copy");
                        document.body.removeChild(tempElem);

                    });

                document.querySelector(".copy2").addEventListener("click",
                    function () {

                        var tempElem = document.createElement('textarea');
                        tempElem.value = email.innerText;

                        document.body.appendChild(tempElem);

                        tempElem.select();
                        document.execCommand("copy");
                        document.body.removeChild(tempElem);

                    });


            </script>

		<!-- 클립보드 2초뒤 숨기기  -->
		<script>

                $('.copy1').click(function () {
                    $(".copy_clip1").fadeIn(1000).delay(3000).fadeOut(1000);
                })

                $('.copy2').click(function () {
                    $(".copy_clip2").fadeIn(1000).delay(3000).fadeOut(1000);
                })

            </script>

		<!-- 더보기 > 인사정보 수정 -->
		<script>
                $('.HR_modi').click(function () {
                    $('.main_container').attr("id", "con2_hidden1");
                    $('.second_container_2').attr("id", "")
                })
            </script>


		<!-- 더보기 > 기본정보 수정 -->

		<script>
                $('.defualt_modi ').click(function () {
                    $('.main_container').attr("id", "hidden");
                    $('.second_container_3').attr("id", "");
                })
            </script>



		<!-- 더보기 > 경력정보 수정 -->

		<script>
//                 $('.career_modi').click(function () {
//                     $('.main_container').attr("id", "con2_hidden1");
//                     $('.second_container_4').attr("id", "")
//                 })
            </script>



		<!-- 더보기 > 학력정보 수정 -->

		<script>
//                 $('.Education_modi').click(function () {
//                     $('.main_container').attr("id", "con2_hidden1");
//                     $('.second_container_5').attr("id", "")
//                 })
            </script>




		<!-- 인사정보  insert -->

		<script>

                $('.fixed').click(function () {

                    const formData = new FormData($('#HR_form')[0]);

                    const ob = {};

                    for (const [key, value] of formData.entries()) {
                        ob[key] = value;
                    }

                    const url = cpath + '/hr_insert/';
                    const opt = {
                        method: 'POST',
                        body: JSON.stringify(ob),
                        headers: {
                            'Content-Type': 'application/json;charset=utf8'
                        }
                    };

                    fetch(url, opt)
                        .then(response => response.json())
                        .then(json => {
// 		                  	console.log(json);
							
		                  	$('#modal_emp_dept').text(json.emp_dept);
		                  	$('#modal_emp_pos').text(json.emp_pos);
		                  	$('#modal_start_day').text(new Date(json.start_day).toLocaleString().substring(0,11));
                        })
                        
                    
                    $('.main_container').attr("id", "");
                    $('.second_container_2').attr("id", "con2_hidden1");

                    $(".copy_clip4").fadeIn(1000).delay(3000).fadeOut(1000);

                });



            </script>


		<!-- 기본정보  insert -->

		<script>

                $('.fixed1').click(function () {

                    const formData = new FormData($('#infoForm')[0]);

                    const ob = {};

                    for (const [key, value] of formData.entries()) {
                        ob[key] = value;
                    }

                    const url = cpath + '/deInfo_insert/';
                    const opt = {
                        method: 'POST',
                        body: JSON.stringify(ob),
                        headers: {
                            'Content-Type': 'application/json;charset=utf8'
                        }
                    };

                    fetch(url, opt)
                        .then(response => response.json())
                        .then(json => {
                            console.log(json);
                            $('#modal_emp_name').text(json.emp_name);
                            $('#modal_emp_introduce').text(json.emp_introduce);
                            $('#modal_emp_email').text(json.emp_email);
                            $('#modal_emp_birthnum').text(json.emp_birthnum);
                            $('#modal_emp_pnum').text(json.emp_pnum);
                            $('#modal_emp_addr').text(json.emp_addr);
                            $('#modal_emp_bank').text(json.emp_bank + " " + json.emp_banknum);
                            
                        })

                    $('.main_container').attr("id", "");
                    $('.second_container_3').attr("id", "con2_hidden2");
                    $(".copy_clip5").fadeIn(1000).delay(3000).fadeOut(1000);

                });



            </script>

		<!-- 조직 선택 시  -->

		<script>
				// 
				
                $('#depart_click').click(function (e) {

                    $('.depart_container').css("visibility", "visible");

                    //             if ($(e.target).hasClass("departMent_con")) {
                    //             	$('.depart_container').css("visibility","visible");
                    //             }else{
                    //             	$('.depart_container').css("visibility","hidden");
                    //             }
    				$(document).click(function(e) {
    					if($(e.target).attr('id') == 'depart_click' || $(e.target).attr('id') == 'dept_input') return;
    					
    					$('.depart_container').css("visibility", "hidden");
    				});
                })



                for (var i = 0; i <= 50; i += 10) {

                    $('#' + i).click(function () {
                        $('.depart_container').css("visibility", "hidden");
                        $('#dept_input').val($(this).text().trim());

                        $(document).ready(
                            function () {

                                $('input').each(
                                    function () {
                                        if ($(this).val() != '') {
//                                             console.log($(this));
                                            $(this).parent('div').find('label')
                                                .addClass('label_on');
                                        }

                                    });

                            });

                    })
                }

            </script>

		<script>
                $('.vacation_con').hide();
                $('.workTime_con').hide();
                $('.notified_con').hide();
                

                // menu function
                function setMenuModal() {
                	$('.hr_box').removeClass('modalMenuOn');
                	$('.vacation_box').removeClass('modalMenuOn');
                	$('.workTime_box').removeClass('modalMenuOn');
                	$('.notified_box').removeClass('modalMenuOn');
                	
                }
            </script>

		<!-- 인사정보 클릭 시 -->
		<script>

                $('.hr_box').click(function (e) {
                    $('.first_model_con').show();
                    $('.vacation_con').hide();
                    $('.notified_con').hide();
                    $('.workTime_con').hide();

                    setMenuModal();
                    $(this).addClass('modalMenuOn');
                })

            </script>

		<!-- 휴가 클릭 시  -->
		<script>

                $('.vacation_box').click(function (e) {
                    $('.vacation_con').show();
                    $('.first_model_con').hide();
                    $('.notified_con').hide();
                    $('.workTime_con').hide();
                    
                    setMenuModal();
                    $(this).addClass('modalMenuOn');
                })

            </script>

		<!-- 인사노트 클릭 시  -->
		<script>

                $('.notified_box').click(function (e) {
                    $('.notified_con').show();
                    $('.vacation_con').hide();
                    $('.first_model_con').hide();
                    $('.workTime_con').hide();
                    
                    setMenuModal();
                    $(this).addClass('modalMenuOn');
                })

            </script>

		<!-- 근무시간 클릭 시  -->
		<script>

                $('.workTime_box').click(function (e) {
                    $('.workTime_con').show();
                    $('.first_model_con').hide();
                    $('.vacation_con').hide();
                    $('.notified_con').hide();
                    
                    setMenuModal();
                    $(this).addClass('modalMenuOn');
                })

            </script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KOYOTE</title>

<!-- cpath 경로 -->
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- 달력 시 필요한 jQuery -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>


<!-- css 파일 2개  -->
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/people_add.css">

<!-- icon site -->
<script src="https://kit.fontawesome.com/85039ef1d3.js" crossorigin="anonymous"></script>

<!-- js file -->
<script src="${cpath }/resources/js/people_add.js"></script>

</head>
<body>
<div id="root">

	<main>
		<div class="container">
			<div class="head_add">
				<div>
					<div class="title_head"><div>구성원 정보 입력</div></div>
					<div class="title_sub">추가할 구성원의 정보를 입력해주세요.</div>
					<div class="icon_write"><i class="fas fa-pencil-alt"></i></div>
				</div>
			</div>
			<form id="insertForm" method="post">
			<div>
				<div class="content_add">
					
					<div class="info_basic">
						<div class="box_title">
							<div class="line"></div>
							<div class="title_basic">기본 ・ 인사정보</div>
						</div>
					</div>
					
					<div class="box_type1 box_effect">
						<div class="icon_name"><i class="fas fa-user"></i></div>
						<div class="box_input">
							<input class="input_type_c" name="emp_name" autocomplete="off" type="text">
							<label>이름</label>
						</div>
					</div>
					<div class="box_type1 box_effect">
						<div class="icon_birthnum"><i class="fas fa-address-card"></i></div>
						<div class="box_input">
							<input id="input_birthnum" class="input_type_c" name="emp_birthnum" autocomplete="off" type="text" maxlength="14"
								 onkeyup="setJumin(this)" onKeyPress="return numkeyCheck(event)" 
								 pattern="\d{0,6}-\d{7}"  title="주민등록번호 13자리를 입력하세요.">
							<label>주민등록번호</label>
						</div>
					</div>
					<div id="warning_birthnum" class="box_warning hidden" style="color:red;">
						<div class="icon_warning"><i class="fas fa-exclamation-circle" style="color:red;"></i></div>
						<div class="txt_warning">올바르지 않은 주민등록번호입니다.</div>
					</div>
					
					<div class="box_type1 box_effect">
						<div class="icon_pnum"><i class="fas fa-phone-alt"></i></div>
						<div class="box_input">
							<input id="input_pnum" class="input_type_c" name="emp_pnum" autocomplete="off" type="text" maxlength="13"
								onkeyup="setPnum(this)" onKeyPress="return numkeyCheck(event)"
								pattern="\d{3}-\d{4}-\d{4}" title="010-****-****">
							<label>전화번호</label>
						</div>
					</div>
					<div id="warning_pnum" class="box_warning hidden" style="color:red;">
						<div class="icon_warning"><i class="fas fa-exclamation-circle" style="color:red;"></i></div>
						<div class="txt_warning">올바르지 않은 전화번호입니다.</div>
					</div>
					
					<div class="box_type1 box_effect">
						<div class="icon_email"><i class="far fa-envelope"></i></div>
						<div class="box_input">
							<input id="input_email" class="input_type_c" name="emp_email" autocomplete="off" type="email" maxlength="30">
							<label>이메일</label>
						</div>
					</div>
					
					<div id="warning_email" class="box_warning hidden" style="color:red;">
						<div class="icon_warning"><i class="fas fa-exclamation-circle" style="color:red;"></i></div>
						<div class="txt_warning">이메일 형식으로 적어주세요.</div>
					</div>
					
					<div class="box_type1 box_effect">
						<div class="icon_addr"><i class="fas fa-map-marker-alt"></i></div>
						<div class="box_input">
							<input id="userAddr" class="input_type_c" name="emp_addr" onClick="goPopup();" autocomplete="off" type="text" readonly>
							<label>주소</label>
						</div>
					</div>

					<div id="box_enter" class="box_type1 box_effect">
						<div class="icon_enter"><i class="far fa-calendar-check"></i></div>
						<div class="box_input">
							<input id="input_enter" class="input_type_c" name="start_day" autocomplete="off" type="text" >
							<label>입사일</label>
						</div>
					</div>
															
					<div class="box_warning">
						<div class="icon_warning"><i class="fas fa-exclamation-circle"></i></div>
						<div class="txt_warning">입사일이 지나면 변경할 수 없으니 정확한 정보를 입력해주세요.</div>
					</div>

					<div class="box_emp">
						<div class="box_no box_effect">
							<div class="icon_no"><i class="far fa-flag"></i></div>
							<div class="box_input">
								<input id="input_no" class="input_type_r" name="emp_num" autocomplete="off" type="text" maxlength="7"
									oninput="this.value=this.value.replace(/[^0-9]/g,'');">
								<label>사번(선택)</label>
							</div>
						</div>
						<div class="box_pos box_effect">
							<div class="box_input">
								<input id="input_pos" class="input_type_l" name="pos_name" autocomplete="off" type="text" readonly>
								<div class="icon_more"><i class="fas fa-caret-down"></i></div>
								<label>직급</label>
							</div>
						</div>
					</div>

					<!-- dropdwon_pos -->
					<div id="dropdown_pos" class="dropdown hidden"></div>
					
					<div id="explain_no" class="box_warning">
						<div class="icon_warning"><i class="fas fa-exclamation-circle"></i></div>
						<div class="txt_warning">사원번호를 입력하지 않을 시, 자동으로 처리됩니다.</div>
					</div>
					<div id="warning_no" class="box_warning hidden" style="color:red;">
						<div class="icon_warning"><i class="fas fa-exclamation-circle" style="color:red;"></i></div>
						<div class="txt_warning">사원번호 7자리를 입력하세요.</div>
					</div>
					
					<div class="box_dept box_type1 box_effect">
						<div class="icon_dept"><i class="fab fa-hubspot"></i></div>
						<div class="box_input">
							<input id="input_dept" class="input_type_c" name="dept_name" autocomplete="off" type="text" readonly>
							<label>조직</label>
						</div>
						<div class="box_boss">
							<input id="input_boss" name="emp_head" type="hidden" value="0">
							<button id="btn_boss" type="button"><div>
								<div class="icon_radio_on hidden"><i class="fas fa-check-circle"></i></div>
								<div class="icon_radio_off"><i class="far fa-circle"></i></div>
								<div class="txt_boss">조직장</div>
							</div></button>
						</div>
					</div>
					<!-- dropdown_dept -->
					<div id="dropdown_dept" class="dropdown hidden"></div>
					
					<div class="info_contract">
						<div class="box_title">
							<div class="line"></div>
							<div class="title_contract">급여 ・계약정보</div>
						</div>
					</div>
					
					<div class="box_bank">
						<div class="box_left box_effect">
							<div class="icon_bank"><i class="fas fa-university"></i></div>
							<div class="box_input">
								<input class="input_type_r" name="emp_banknum" autocomplete="off" type="text"
									oninput="this.value=this.value.replace(/[^0-9]/g,'');">
								<label>급여계좌정보</label>
							</div>
						</div>
						<div class="box_right box_effect">
							<div class="box_input">
								<input id="input_bank" class="input_type_l" name="emp_bank" autocomplete="off" type="text" readonly>
								<div class="icon_more"><i class="fas fa-caret-down"></i></div>
								<label class="label_on">은행명</label>
							</div>
						</div>
					</div>
					
					<!-- dropdown_bank -->
					<div id="dropdown_bank" class="dropdown hidden"></div>
					
					<div class="box_pay">
						<div class="box_left box_effect">
							<div class="icon_pay"><i class="fas fa-dollar-sign"></i></div>
							<div class="box_input">
								<input id="input_pay" class="input_type_r" name="con_income" autocomplete="off" type="text" maxlength="9"
									oninput="this.value=this.value.replace(/[^0-9]/g,'');">
								<label>계약금액</label>
							</div>
							<div class="won">원</div>
						</div>
						<div class="box_std box_right box_effect box_on">
							<div class="box_input">
								<input id="input_std" class="input_type_l" autocomplete="off" type="text" value="연봉" readonly>
								<div class="icon_more"><i class="fas fa-caret-down"></i></div>
								<label class="label_on">지급기준</label>
							</div>
						</div>
					</div>
					<!-- dropdown_std -->
					<div id="dropdown_std" class="dropdown hidden">
						<div class="box_dropdown">
							<div class="box_menu">
								<div class="txt_menu">연봉</div>
							</div>
						</div>
					</div>
					
					<div class="box_date">
						<div id="box_start" class="box_left box_effect">
							<div class="icon_pay"><i class="far fa-calendar-alt"></i></div>
							<div class="box_input">
								<input id="datepicker" class="input_type_r" name="con_startday" autocomplete="off" type="text" >
								<label>연봉계약 시작일</label>
							</div>
						</div>
						<div id="box_end" class="box_right box_effect">
							<div class="box_input">
								<input id="end-date" class="input_type_l" name="con_endday" autocomplete="off" type="text" >
								<label>연봉계약 종료일</label>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			<button id="btn_add">
				<div class="box_add">
					<div class="txt_add">저장 후 초대 메일 발송</div>
				</div>
			</button>
			</form>
		</div>
	</main>
	
	<header>
		<div class="title_add">구성원 추가하기</div>
		<div class="box_close">
			<button id="btn_close">
				<div>
					<div class="icon_close"><i class="fas fa-times"></i></div>
					<div class="close">취소하기</div>
				</div>
			</button>
		</div>
	</header>


<script>

	// cpath 저장
	setCpath('${cpath}');
	
	// dropdown menu list 불러오기
	ajaxDeptSelectList();
	
	// position menu list 불러오기
	ajaxPosSelectList();
	
	// bank menu list 불러오기
	ajaxBankSelectList();
	
	// 창 나가기 이벤트
	$('#btn_close').click(function() {
		if (confirm('정말 나가시겠습니까?')) {
			location.href="${cpath}/people/hr";
		}
	});
	
	// submit
	$('#insertForm').submit(function() {
		event.preventDefault();
		if(checkInput()) {
			insertSubmit();
		}
	});
	
	function checkInput() {
		var cnt = 0;
		$('input').each(function(){
			if(($(this).val() == '' || $(this).val() == 'undefined') && $(this).attr('id') != 'input_no') {
				$(this).parent('div').parent('div').addClass('box_error');
				cnt += 1;
				if(cnt == 1) { $(this).focus(); }
			}
			if($(this).parent('div').parent('div').hasClass('box_error')) {
				cnt += 1;
				if(cnt == 1) { $(this).focus(); }
			}
		});
		if(cnt == 0) {
			return true;
		}
		else{ return false }
	}

</script>

<!-- input controller -->
<script>

	// input fous 이벤트
	$('input').focus(function() {
		$(this).parent('div').find('label').addClass('label_on');
	});
	
	// input blur 이벤트 (값의 유무)
	$('input').blur(function() {
		if($(this).val() == '') {
			$(this).parent('div').find('label').removeClass('label_on');
			$(this).parent('div').parent('div').removeClass('box_on');
		}
		else {
			$(this).parent('div').find('label').addClass('label_on');
			$(this).parent('div').parent('div').addClass('box_on');
		}
	});
	
	// input birthnum blur
	$('#input_birthnum').blur(function() {
	  	if($(this).val().length != 14) {
	  		$(this).parent('div').parent('div').addClass('box_error');
	  		$('#warning_birthnum').removeClass('hidden');
	  	}
	  	else {
	  		// 주민등록번호 검사
	        if(checkBirthnum2($(this).val())) {
		  		$(this).parent('div').parent('div').removeClass('box_error');
		  		$('#warning_birthnum').addClass('hidden');
	        }
	        else {
		  		$(this).parent('div').parent('div').addClass('box_error');
		  		$('#warning_birthnum').removeClass('hidden');
	        	
	        }
	  	}
	});
	
	// input pnum blur
	$('#input_pnum').blur(function() {
	  	if($(this).val().length != 13) {
	  		$(this).parent('div').parent('div').addClass('box_error');
	  		$('#warning_pnum').removeClass('hidden');
	  	}
	  	else {
	  		$(this).parent('div').parent('div').removeClass('box_error');
	  		$('#warning_pnum').addClass('hidden');
	  	}
	});
	
	// input email blur
	$('#input_email').blur(function() {
		var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	    var bool = ($(this).val() != '' && $(this).val() != 'undefined' && regex.test($(this).val()));
	  	if(! bool) {
	  		$(this).parent('div').parent('div').addClass('box_error');
	  		$('#warning_email').removeClass('hidden');
	 	}
	  	else {
	  		$(this).parent('div').parent('div').removeClass('box_error');
	  		$('#warning_email').addClass('hidden');
	  	}
	});
	
	// input no blur
	$('#input_no').blur(function() {
	  	// input 사원번호
	  	if($(this).val().length >= 1 && $(this).val().length < 7) {
	  		$(this).parent('div').parent('div').addClass('box_error');
	  		$('#warning_no').removeClass('hidden');
	  		$('#explain_no').addClass('hidden');
	  	}
	  	else {
	  		$(this).parent('div').parent('div').removeClass('box_error');
	  		$('#warning_no').addClass('hidden');
	  		$('#explain_no').removeClass('hidden');
	  	}
	});
	
	// 조직장 버튼 클릭 이벤트
	$('#btn_boss').click(function() {
		$('.icon_radio_on').toggleClass('hidden');
		$('.icon_radio_off').toggleClass('hidden');
		
		if($('.icon_radio_off').hasClass('hidden')) {
			$('#input_boss').val('1');	// 버튼 on 일 때 값
		}
		else {
			$('#input_boss').val('0');	// 버튼 off 일 때 값
		}
	});
	
	// input 값 변경 시 이벤트
	$(document).ready(function(){
		$("input").on("change keyup paste", function() {
			if($(this).val() != '') {
				$(this).parent('div').parent('div').removeClass('box_error');
			}
		});
	});

	
</script>

<!-- dropdown -->
<script>

	// 다른 곳 클릭 시 dropdown hidden
	$(document).click(function(e) {
// 		console.log($(e.target).attr('id'));
 		
		if($(e.target).attr('class') == 'box_menu') return;
		
 		if($(e.target).attr('id') != 'input_pos') {
 			$('#dropdown_pos').addClass('hidden');
 		}
 		if($(e.target).attr('id') != 'input_dept') {
 			$('#dropdown_dept').addClass('hidden');
 		}
 		if($(e.target).attr('id') != 'input_bank') {
 			$('#dropdown_bank').addClass('hidden');
 		}
 		if($(e.target).attr('id') != 'input_std') {
 			$('#dropdown_std').addClass('hidden');
 		}
	});
	
	// 해당 클래스 클릭 시 dropdown 나타나기
	$('.box_pos').click(function() {
		$('#dropdown_pos').toggleClass('hidden');
	});
	$('.box_dept').click(function() {
		$('#dropdown_dept').toggleClass('hidden');
	});
	$('.box_bank').click(function() {
		$('#dropdown_bank').toggleClass('hidden');
	});
	$('.box_std').click(function() {
		$('#dropdown_std').toggleClass('hidden');
	});
	
	// dropdown menu 클릭 시 input value 주기
	$(document).ready(function(){
		$(document).on("click",".box_menu",function(e){
			let parentDiv = $(e.target).parent('div').parent('div');
			if(parentDiv.attr('class') == 'box_dropdown') {
				parentDiv = parentDiv.parent('div');
			}
//			console.log($(this).children());
			if(parentDiv.attr('id') == 'dropdown_pos') {
				$('#input_pos').val($(this).children().text());
				$('#input_pos').parent('div').find('label').addClass('label_on');
				$('#input_pos').parent('div').parent('div').addClass('box_on');
				$('#input_pos').parent('div').parent('div').removeClass('box_error');
				$('#dropdown_pos').addClass('hidden');
			}
			else if(parentDiv.attr('id') == 'dropdown_dept') {
				$('#input_dept').val($(this).children().text());
				$('#input_dept').parent('div').find('label').addClass('label_on');
				$('#input_dept').parent('div').parent('div').addClass('box_on');
				$('#input_dept').parent('div').parent('div').removeClass('box_error');
				$('#dropdown_dept').addClass('hidden');
			}
			else if(parentDiv.attr('id') == 'dropdown_bank') {
				$('#input_bank').val($(this).children().text());
				$('#input_bank').parent('div').find('label').addClass('label_on');
				$('#input_bank').parent('div').parent('div').addClass('box_on');
				$('#input_bank').parent('div').parent('div').removeClass('box_error');
				$('#dropdown_bank').addClass('hidden');
			}
			else if(parentDiv.attr('id') == 'dropdown_std') {
				$('#input_std').val($(this).children().text());
				$('#input_std').parent('div').find('label').addClass('label_on');
				$('#input_std').parent('div').parent('div').addClass('box_on');
				$('#dropdown_std').addClass('hidden');
			}
		});
	});
</script>

<!-- 달력 -->
<script>
	
	$('#root').on('scroll', function(){
	     calendar1._positionCalendar();
	     calendar2._positionCalendar();
	     if(calendar3) {
		     calendar3._positionCalendar();
	     }
	});

	var calendar1 = flatpickr('#input_enter', {
		dateFormat: "Y.m.d",
	});
	
	var calendar2 = flatpickr('#datepicker', {
	//	minDate: "today"
		dateFormat: "Y.m.d",
	    onChange: function(selectedDates, dateStr, instance) {
 	        calendar3 = $("#end-date").flatpickr({
 				dateFormat: "Y.m.d",
				defaultDate: [(selectedDates[0].getFullYear() + 1) + "."
					+ (selectedDates[0].getMonth() + 1) + "."
			        + (selectedDates[0].getDate() - 1)],
 	       		minDate:  dateStr,
			});

			$("#end-date").parent('div').find('label').addClass('label_on');
 			$("#end-date").parent('div').parent('div').addClass('box_on');
 			$("#end-date").parent('div').parent('div').removeClass('box_error');
	    }
	});
	
	var calendar3 = flatpickr('#end-date', {
		dateFormat: "Y.m.d",
	});
	
</script>

<!-- 금액 입력 -->
<script>
	jQuery(document).ready(function($){
		$('#input_pay').on('focus', function() {
			var val = $('#input_pay').val();
			if(!isEmpty(val)) {
				val = val.replace(/,/g,'');
				$('#input_pay').val(val);
			}
		});
		
		$('#input_pay').on('blur', function() {
			var val = $('#input_pay').val();
			if(!isEmpty(val) && isNumeric(val)){
				val = currencyFormatter(val);
				$('#input_pay').val(val);
			}
		});
	});
	
	// Null check
	function isEmpty(value){
		if(value.length == 0 || value == null){
			return true;
		}else{
			return false;
		}
	}
	// Number check with Regular expression
	function isNumeric(value){
		var regExp = /^[0-9]+$/g;
		return regExp.test(value);
	}
	// 숫자 세자리 마다 콤마를 추가하여 금액 표기 형태로 변환
	function currencyFormatter(amount) {
		return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
	}
	
</script>

<!-- 주민번호 및 전화번호 입력 -->
<script>
	// 숫자만 입력가능
	function numkeyCheck(e) { 
		var keyValue = event.keyCode; 
		if( ((keyValue >= 48) && (keyValue <= 57)) ) return true; 
		else return false; 
	}

	// 주민번호 입력 함수
	function setJumin(obj) {
		const startPosition = obj.value.length - obj.selectionEnd;
		
		ju = obj.value;
		ju = ju.replace("-","");
		if(ju.length > 6) {
			ju1 = ju.substring(0,6);
			ju2 = ju.substring(6,13);
// 			for(i=1; i<ju.substring(6).length && i < 7; i++) {
// 				ju2 = ju2 + "*";
// 			}
			obj.value = ju1+"-"+ju2;
			const len = Math.max(obj.value.length - startPosition, 0);
			obj.setSelectionRange(len, len);
		}
		
	}

	
	// 주민등록번호 검사 함수 v1
	function checkBirthnum1(str) {
		var strArray = str.split('-');
        var num1 = strArray[0];
        var num2 = strArray[1];
		
		var arrNum1 = new Array(); // 주민번호 앞자리숫자 6개를 담을 배열
        var arrNum2 = new Array(); // 주민번호 뒷자리숫자 7개를 담을 배열
		
        for (var i=0; i<num1.length; i++) {
            arrNum1[i] = num1.charAt(i);
        } // 주민번호 앞자리를 배열에 순서대로 담는다.

        for (var i=0; i<num2.length; i++) {
            arrNum2[i] = num2.charAt(i);
        } // 주민번호 뒷자리를 배열에 순서대로 담는다.

        var tempSum=0;

        for (var i=0; i<num1.length; i++) {
            tempSum += arrNum1[i] * (2+i);
        } // 주민번호 검사방법을 적용하여 앞 번호를 모두 계산하여 더함

        for (var i=0; i<num2.length-1; i++) {
            if(i>=2) {
                tempSum += arrNum2[i] * i;
            }
            else {
                tempSum += arrNum2[i] * (8+i);
            }
        } // 같은방식으로 앞 번호 계산한것의 합에 뒷번호 계산한것을 모두 더함
// 		console.log("주민번호 검사 : ",(11-(tempSum%11))%10, arrNum2[6]);
		
        return (11-(tempSum%11))%10==arrNum2[6];
	}
	
	// 주민등록번호 검사 함수 v2
	function checkBirthnum2(str) {
		var strArray = str.split('-');
        var num1 = strArray[0];
        var num2 = strArray[1];
//         console.log(num1, num2);
        if(num2.substr(0,1) < '1'|| num2.substr(0,1) > '4'){
			console.log(num2.charAt(0));
        	return false;
        }
        
        if(num1.substr(2,2) > '12' || num1.substr(4,2) > '31') {
// 			console.log(num1.substr(2,2), num1.substr(4,2));
        	return false;
        }
        
        return true;
        
	}

	
	// 전화번호 입력 함수
	function setPnum(obj) {
		const startPosition = obj.value.length - obj.selectionEnd;
		
		ju = obj.value;
		ju = ju.replace("-","");
		ju = ju.replace("-","");
		
		if(ju.length > 3 && ju.length < 8) {
			ju1 = ju.substring(0,3);
			ju2 = ju.substring(3,7);
			obj.value = ju1+"-"+ju2;
			const len = Math.max(obj.value.length - startPosition, 0);
			obj.setSelectionRange(len, len);
		}
		else if(ju.length > 7) {
			ju1 = ju.substring(0,3);
			ju2 = ju.substring(3,7);
			ju3 = ju.substring(7,11);
			obj.value = ju1+"-"+ju2+"-"+ju3;
			const len = Math.max(obj.value.length - startPosition, 0);
			obj.setSelectionRange(len, len);
		}
	}
	
</script>

<!-- 주소 api 관련 script -->
<script>
function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("${cpath}/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.	
		$('#userAddr').val(roadFullAddr);
		$('#userAddr').parent('div').parent('div').removeClass('box_error');
}
</script>



<script >

	const msg = '${msg}';
	
	if(msg !== ''){
		alert(msg);
	}

</script>

<!-- test -->
<script>
	$('input').val('1234');
	$('#input_birthnum').val('911018-1234567');
	$('#input_email').val('gnues71@naver.com');
	$('#input_pnum').val('010-1111-1111');
	$('#input_no').val('');
	$('#input_pos').val('부장');
	$('#input_dept').val('개발팀');
	$('#input_bank').val('TestBank');
	$('#input_pay').val('100,000,000');

	$('#input_enter').val('2020.10.17');
	$('#datepicker').val('2021.11.18');
	$('#end-date').val('2022.12.19');


</script>



</div> <!-- /root -->
</body>
</html>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!-- css 파일 -->
<link rel="stylesheet" href="${cpath}/css/word_req_sub.css">
<link rel="stylesheet" href="${cpath}/css/word_req.css">

 <!-- 작성요청 클릭 시 모달-->
    <!-- 안쪽 박스-->
    <div class="modal_sub1" id="hidden2">

        <div class="modal_sub_overlay1"></div>

        <div class="annaul_con" id="annual_hide">

            <div class="fixRe2 fixRe1">
                <!-- 첫 라인-->
                <div class="">
                    <div class="fixReWor fixReWor1">연차 신청</div>
                </div>
                <!-- 두번째-->
			<form class="req_fixForm1" method="POST" action="${cpath}/fixModal">
				<!-- 요청 항목 -->
				<input  name="req_field" type="hidden" value="연차 신청">
				<!-- 요청한 사람-->
				<input name="sender" type="hidden" value="${login.emp_name}">
				<!-- 요청한 사람  사원번호 -->
				<input name="sender_num"type="hidden" value="${login.emp_num}">
				<!-- 요청받는 사람  사원번호 -->
				<input name="recipient_num" type="hidden" value="" class="reciValNum">
				

				<div class="selecP_box1">
					<div class="selecP">
						<div class="box_input_d">
							<!-- 선택 받은 구성원 -->
							<input name="recipient" readonly="readonly" class="input_type_d" 
								autocomplete="off" type="text"> <label>선택한 구성원</label>
						</div>
					</div>
					<div class="ReIcon">
						<i class="fas fa-external-link-alt "></i>
					</div>
				</div>
				<!-- 요청 메세지 -->
				<textarea  name="req_content"  class="re_msg"cols="30" rows="10"
					placeholder="요청 메세지를 입력하세요."></textarea>
				<!-- 닫기 -->
			</form>

			<div class="fixRe_closeBox">
                    <div class="">
                        <button class="fixClose">
                            <div class="">닫기</div>
                        </button>
                        <button class="fix_Re1">
                            <div class="">요청하기</div>
                        </button>
                    </div>
                </div>
            </div>
        </div>

    
        <!-- 작성요청 선택한 구성원 클릭 시 -->
        <div class="eNyBZO1" id="selectHidden1">
            <div class="eWcsIY">
                <!-- 대상자 감싸는 div-->
                <div class="jYhhvt">
                    <div class="cmoWCA">
                        <div class="jdCxPo">
                            <div class="edWqkT">대상자 선택하기</div>
                        </div>
                        <!-- 검색 -->
                        <div class="bsZkow">
                            <div class="fs_box">
                                <div class="fs_icon_box">
                                    <div class="fs_icon">
                                        <i class="fas fa-search"></i>
                                    </div>
                                </div>
                                <div class="">
                                    <input class="kJOAtS" type="text" placeholder="이름,조직,역할(직무) 검색">
                                </div>
                                <div class="">
                                    <div class=""></div>
                                </div>
                            </div>
                        </div>
                        <!-- 검색 끝 -->
                    </div>
                </div>
    
                <!-- 리스트 감싸는 div-->
                <div class="qSLjh">
				<c:forEach var="list" items="${deptList}" varStatus="i">
					<div class="fIoLyR1" id="sub_${i.count}">
					<input class="adminNum" value="${list.emp_num}" type="hidden">
						<div class="">
							<!-- 이미지 나오게 만들기1 -->
							<span class="fixs_img"> <img src="http://192.168.0.173/${list.emp_profile}" alt="">
							</span>
						</div>
						<div class="">
							<div class="cjAyOt">${list.emp_name}</div>
							<div class="krotZY">${list.emp_dept}</div>
						</div>
						<div class="fp_con${i.count} ic_hidden">
							<div class="fp_icon_box">
								<i class="fas fa-check"></i>
							</div>
						</div>
					</div>
				</c:forEach>
    
                </div>
    
                <div class="eltlnR">
                    <div class=""></div>
                    <div class="">
                        <button class="diQzjO">닫기</button>
                        <button class="cdRCRz1">
                            <i class="fas fa-check"></i>
                            			선택완료
                        </button>
                    </div>
                </div>
    
    
            </div>
        </div> <!-- 작성요청 선택한 구성원 클릭 시 end -->
    </div>
    <!-- 모달 마지막 -->


    <!--글자 스르륵 뒤로 이벤트-->
    <script>
        // input fous 이벤트
        $('input[type="text"]')
            .focus(
                function () {
                    $(this).parent('div').parent('div').css(
                        'backgroundColor', 'white');
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
                        $(this).parent('div').find('label')
                            .removeClass('label_on');
                    } else {
                        $(this).parent('div').find('label')
                            .addClass('label_on');
                    }
                });
    </script>


<script>

	$('.annual_btn_second').click(
			function() {

				if ($('.modal_sub1').attr("id") == "hidden2") {
					// 글자 스르륵 뒤로가기
					$('.modal_sub1').attr("id", "");

					$('input[type="text"]').focus(
							function() {
								$(this).parent('div').parent('div').css(
										'backgroundColor', 'white');
								$(this).parent('div').find('label').addClass(
										'label_on');
							});
				}

			})
			

	$('.modal_sub_overlay1').click(function() {
		$('.modal_sub1').attr("id", "hidden2");
		$(".annaul_con").attr("id", "annual_hide");
		$(".eNyBZO1").attr("id", "selectHidden1");
		
	})
	
</script>

<!-- 비품 신청 > 선택한 구성원 클릭 시-->
    <script>

        $('.selecP_box1').click(function () {
            $('.annaul_con').css("display","none");
            $('.eNyBZO1').attr("id", "");

            // input값이 있으면 
            if ($('.input_type_d').val() != '') {
                // input값이 있으면 input박스 선택 된다!!!!
                $('.input_type_d').css("pointer-events", "visible");

                // 값이 있으면 글자 스르륵 뒤로 간다
                $(this).parent('div').parent('div').css(
                    'backgroundColor', 'white');
                $(this).parent('div').find('label').addClass(
                    'label_on');

                // 값이 있으면 글자 스르륵 뒤로 간다 요청하기 버튼 나오게 
                $('.fix_Re1').css("cursor", "pointer");
                $('.fix_Re1').css("opacity", "1000");

                // input값이 없으면
            } else {
                $('input[type="text"]').blur(
                    function () {
                        $(this).parent('div').parent('div').css(
                            'backgroundColor', 'white');
                        $(this).parent('div').find('label').addClass(
                            'label_on');

                        if ($(this).val() == '') {
                            $(this).parent('div').parent('div').css(
                                'backgroundColor',
                                'rgba(99, 114, 131, 0.02)');
                            $(this).parent('div').find('label')
                                .removeClass('label_on');
                        } else {
                            $(this).parent('div').find('label')
                                .addClass('label_on');
                        }
                    });

                // input값이 없으면 요청하기버튼 안나오게 
                $('.fix_Re1').css("cursor", "not-allowed");
                $('.fix_Re1').css("opacity", "0.5");
            }
        })

    </script>

    <!-- 연차 작성요청 클릭 시 모달창-->
    <script>
	    $(".annual_btn_second").click(function () {
	        $(".annaul_con").fadeIn(300).attr("id", "");
	    })
		$(".fixClose").click(function() {
			$(".annaul_con").fadeIn(300).attr("id", "annual_hide");
			$('.modal_sub1').attr("id", "hidden2");
		})
    </script>

    <!-- input 색상 변경-->
    <script>

        $('.kJOAtS').mousedown(function () {
            $('.bsZkow').css("background-color", "white");
            $('.bsZkow').css('box-shadow', 'rgb(197 204 211 / 90%) 0px 0px 0px 2px inset');
        })
        
        $('.kJOAtS').blur(function () {
            $('.bsZkow').css("background-color", " rgba(99, 114, 131, 0.051)");
            $('.bsZkow').css('box-shadow', '');
        })

    </script>

    
    <!-- 요청하기 클릭 시  -->
    <script>
    
    	$('.fix_Re1').click(function(){
    		$('.req_fixForm1').submit();
    	})
    
    </script>
    
    <!-- 클릭 제외 모든 박스 none -->
    <script>
    	
    	$('.fIoLyR1').click(function(e) {
    		
   		   var count = '${deptCount}'; // 리스트 수 넣어주기 
           var NameText = '';
           var clickID = e.target.id ;
           var clickIDInputVal = $('#'+clickID+' input').val()
           
           // 요청받는 사람 사원번호 inputHidden 값 넣어주기
           $('.reciValNum').val(clickIDInputVal);
           
   		   for (var i = 1 ; i <= count; i++){
                   if ($(this).attr("id") == 'sub_'+i) {
                	   
                       // 클릭한 클래스 이름
                       const className = $('.fp_con' + i);
                       // 선택한 사람의 이름
                       NameText = $(this).children()[2].childNodes[1].innerText;
                       $('.input_type_d').val(NameText);
                       var classLength = document.querySelector('.fp_con' + i).classList.length;
                       
                       if (classLength == 2) {
                           $('.fp_con' + i).removeClass('ic_hidden');

                       }else {
                           className.addClass("ic_hidden");
                       }
                   }
               }
   
			for(var i = 0 ; i <= $('.fIoLyR1').length ; i++ ){
				
				if(clickID != 'sub_'+i){
					$('#sub_'+i).css("pointer-events", "none");
					$('#sub_'+i).css('opacity','0.5');
				}else{
					$('#sub_'+i).css('background','rgba(99, 114, 131, 0.05)');
				}
				
			}
		})
    
 </script>
 
 

    <!-- 선택하기 클릭 시 -->
    <script>
        $('.cdRCRz1').click(function(){
            $('.eNyBZO1').attr("id", "selectHidden");
            $('.annaul_con').css("display","");
                      // 값이 있으면 글자 스르륵 뒤로 간다
                    $('.input_type_d').parent('div').parent('div').css(
                        'backgroundColor', 'white');
                    $('.input_type_d').parent('div').find('label').addClass(
                        'label_on');
                    // 요청하기 버튼 나오게 
                    $('.fix_Re1').css("cursor", "pointer");
                    $('.fix_Re1').css("opacity", "1000");
        })

    </script>

    
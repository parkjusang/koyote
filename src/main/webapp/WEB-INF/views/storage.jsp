<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- icon site -->
<script src="https://kit.fontawesome.com/85039ef1d3.js" crossorigin="anonymous"></script>


<!-- 내 보관함 전체 감싸는 div -->
<div class="storageCon" id="">

	<div class="work_container">

		<div class="work_seCon">
			<!-- 태그 박스 -->
			<div class="fOhfen">
				<div class="clTTYF">
					<button class="eiBlAT" style="margin-left: 10px;">
						<i class="fas fa-pen" style="margin-right: 5px;"></i>
						<div class="ihUYFR">내가 작성</div>
					</button>
					<button class="eiBlAT">
						<i class="fas fa-envelope" style="margin-right: 5px;"></i>
						<div class="ihUYFR">내가 요청</div>
					</button>
					<button class="eiBlAT">
						<i class="fas fa-bell" style="margin-right: 5px;"></i>
						<div class="ihUYFR">내가 승인</div>
					</button>
				</div>
			</div>

			<!-- 확인 필요 박스-->
			<div class="fOhfen">
				<div class="clTTYF">
					<button class="lguqUk">
						<div class="kXgMUi ma_icons">
							<i class="checkIcon fas fa-chevron-up" id="fa-chevron-up"></i>
						</div>
					</button>

					<div class="hwJycN">확인 필요</div>

					<div class="">
						<div class="gRMRUk">${checkCount == null ? 0 : checkCount}</div>
					</div>
				</div>
			</div>
			<!-- 확인 필요 end -->

			<!-- 불러온 리스트 -->
			<c:forEach var="stlist" items="${storage}" varStatus="stCount">
			<c:if test="${stlist.approval eq '미승인' || stlist.approval eq '요청' || stlist.write_check eq '0'}" >
<%-- 				<c:if test="${ || }" > --%>
				<ul class="sub1">
				<li class="workstlistBox" style="${stlist.approval == '완료' ? 'color: rgb(0, 121, 107); ' : ' color: rgb(0, 83, 179);'}">
					<div class="boxMainList">

					    <div class="box1">
					    	${stlist.approval == '미승인' ? '미승인' : '요청'}
					    </div>
		
					    <!-- 중간 박스 -->
					    <div class="box2" id="box2Id${stCount.count}">
						
						<!-- 승인 요청 클릭 시 모달   -->
						<c:if test="${stlist.kinds eq '비품' || stlist.kinds eq '연차'}"> 
							<%@ include file="stoSubModal1.jsp"%>
						</c:if>
<!-- 						비품 요청 클릭 시 모달   -->
						<c:if test="${stlist.kinds eq '비품 신청'}">
							<%@ include file="a.jsp"%>
						</c:if>
<!-- 						연차 요창 클릭 시 모달   -->
						<c:if test="${stlist.kinds eq '연차 신청'}">
							<%@ include file="b.jsp"%>
						</c:if>
						
					        <div class="annText">
					        	<c:if test="${stlist.kinds eq '비품' }"  >
									비품 신청
								</c:if>
								<c:if test="${stlist.kinds eq '연차' }"  >
									연차 사용 계획
								</c:if>
								<c:if test="${stlist.kinds eq '비품 신청' }"  >
									비품 요청
								</c:if>
								<c:if test="${stlist.kinds eq '연차 신청' }"  >
									연차 요청
								</c:if>
					         </div>
					        <div class="annchild">${stlist.expected_date}</div>
					    </div>
					    
					    <div class="box3">${stlist.emp_name}님 작성</div>
					    <div class="box4">${stlist.req_date}(${stlist.weekend})</div>
					    <!-- 휴지통-->
					    <div class="trashBox">
					        <i class="fas fa-trash"></i>
					    </div>
					</div>
					</li> 
						</ul>
<%-- 				</c:if> --%>
			</c:if>
			</c:forEach>


			<div class="fOhfen">
				<!-- 보관함 필요 박스-->
				<div class="clTTYF">
					<button class="lguqUks">
						<div class="kXgMUi ma_icons1">
							<i class="fas fa-chevron-up" id="firstIcon" id="fa-chevron-up"></i>
						</div>
					</button>

					<div class="hwJycN">보관함</div>

				</div>
			</div>

			<!-- 보관함 리스트 -->
			<c:forEach var="stlist" items="${storage}" varStatus="stCount">
	    	<c:if test="${stlist.approval eq '완료' }"  >
	    
			<ul class="sub2">
				<li class="workstlistBox" >
					<div class="boxMainList" id="dd">

					    <div class="box1" style="${stlist.approval == '완료' ? 'color: rgb(0, 121, 107); ' : ' color: rgb(0, 83, 179);'}">
					        ${stlist.approval == '미승인' ? '할일 -미승인' : '완료'}
					    </div>
		
					    <!-- 중간 박스 -->
					    <div class="box2" id="box2Id${stCount.count}">
				
						<!-- 클릭 시 모달   -->
						<%@ include file="stoSubModal1.jsp"%>
						
					        <div class="annText">
					        	<c:if test="${stlist.kinds eq '비품' }"  >
									비품 신청
								</c:if>
								<c:if test="${stlist.kinds eq '연차' }"  >
									연차 사용 계획
								</c:if>
					         </div>
					        <div class="annchild">${stlist.expected_date}</div>
					    </div>
					    <div class="box3">${stlist.emp_name}님 작성</div>
					    <div class="box4">${stlist.req_date}(${stlist.weekend})</div>
					    <!-- 휴지통-->
					    <div class="trashBox">
					        <i class="fas fa-trash"></i>
					    </div>
					</div>
					</li> 
						</ul>
				</c:if>
			</c:forEach>


<script>
	$(".lguqUk").click(function() {

		// 확인 필요
		if ($('.ma_icons i').attr("id") == '') {
			$('.ma_icons i').addClass("fa-chevron-up")
			$('.ma_icons i').removeClass("fa-chevron-down")
			$('.ma_icons i').attr("id", "fa-chevron-up")
		} else {

			$('.ma_icons i').addClass("fa-chevron-down")
			$('.ma_icons i').removeClass("fa-chevron-up")
			$('.ma_icons i').attr("id", "")

		}

		if ($(".sub1").is(":visible")) {
			$(".sub1").slideUp();
		} else {
			$(".sub1").slideDown();
		}
	})

	$(".lguqUks").click(function() {

		if ($(".sub2").is(":visible")) {
			$(".sub2").slideUp();
		} else {
			$(".sub2").slideDown();
		}

		// 보관함
		if ($('.ma_icons1 i').attr("id") == '') {
			$('.ma_icons1 i').addClass("fa-chevron-up")
			$('.ma_icons1 i').removeClass("fa-chevron-down")
			$('.ma_icons1 i').attr("id", "fa-chevron-up")
		} else {

			$('.ma_icons1 i').addClass("fa-chevron-down")
			$('.ma_icons1 i').removeClass("fa-chevron-up")
			$('.ma_icons1 i').attr("id", "")

		}
	})
</script>

<script>

	var scount = '${count}';
	
	$('.box2').click(function(e) {
		inputfocusF();
		inputblurF();
		
		var overmouse = e.target.id;
		for(var i = 1 ; i <= scount ; i++){
			if(overmouse == $('#box2Id'+i).attr("id")) {
				
				$($('#box2Id'+i)).children().attr("id","");
				
				$('.approval1').val($('.writerNum'+i)[0].innerText)
				$('.approval2').val($('.writerDate'+i)[0].innerText)
				$('.approval3').val($('#writerkinds'+i)[0].innerText.trim())
				
			}
		}
		
	})

</script>


<script>

var elT = $('input[type="text"]');
var elN = $('input[type="number"]');

	
// 오버레이 닫기
$('.storaModel_overlay').click(function() {
	
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
	
	$('.storaModel').attr("id", "hidden");
	
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
	
	$('.storaModel').attr("id", "hidden");
	
		elT.val("")
		elN.val("");
	

})
</script>



<script>

 $('.stoSubmitCon').click(function(){
	 $('.approval4').val($('#comInputT').val());
	 $('#appForm').submit();
 })
 
</script>



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


$('.fix_submit3').click(function(){
	
	$('.fix_form3').submit();
	
})

$('.fix_submit4').click(function(){
	$('.fix_form4').submit();
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




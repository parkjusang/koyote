<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- css 파일 -->
<link rel="stylesheet" href="${cpath}/css/home.css">
<link rel="stylesheet" href="${cpath}/css/home_sub.css">

<main>

	<div class="container">
		<div class="wrap_home">
		
			<div class="left-side">
				<!-- 메뉴 (전체보기, 공지사항, 할 일) -->
				<div class="box lnb_home">
					<div id="btn_notice" class="menu menu_on">공지사항</div>
					<div id="btn_work" class="menu">할 일</div>
				</div>
				
				
				<!-- 공지 리스트 -->
				<div id="list_notice">
				
					<!-- 공지 작성 (관리자만) -->
					<div id="write_notice" class="hidden">
					<form id="notiInsertForm" method="POST">
						<div class="top_write_notice">
							<textarea class="txtarea_notice" name="contents" rows="2" 
								placeholder="공지사항을 입력해주세요.&#13;&#10;관리자만 입력할 수 있습니다."></textarea>
						</div>
						<div class="bot_write_notice">
							<div class="box_btn">
								<button id="btn_write_notice"><div>
									<div class="icon_write_notice"><i class="far fa-edit"></i></div>
									<div class="txt_write_notice">전체 공지하기</div>
								</div></button>
							</div>
						</div>
					</form>
					</div>
					
					<c:if test="${fn:length(noticeList) == 0}">
						<div id="notice_empty" class="box box_empty">	<!-- 공지 리스트 추가 시 empty div hidden 처리 -->
							<div class="icon_notice"><i class="fas fa-seedling"></i></div>
							<div class="txt_notice">아직 작성된 공지사항이 없어요.</div>
							<div class="txt_sub">앞으로 좋은 소식들만 전달되기 바랍니다!</div>
						</div>
					</c:if>
					<div id="list_notice_content">
					<c:forEach var="noti" items="${noticeList}">
						<div class="box box_list_noti">
							<div class="head_noti">
								<div>
									<div class="img_profile">
										<img src="${serverPath }/${noti.emp_profile}" alt="profile">
									</div>
									<div>
										<div class="txt_name">${noti.emp_name}</div>
										<div class="time_notice">${noti.createDate.toLocaleString().substring(0,10)} · ${noti.createDate.toLocaleString().substring(10,18) }</div>
									</div>
								</div>
								<button id="noti_${noti.seq }" class="btn_noti hidden">
									<div class="img_trash"><i class="fas fa-trash-alt"></i></div>
								</button>
							</div>
							<div class="txt_noti">${noti.contents }</div>
						</div>
					</c:forEach>
					</div>
				</div>
				
				<!-- 할 일 리스트 -->
				<div id="list_work" class="hidden">
					<c:if test="${fn:length(worktodoList) == 0}">
						<div id="work_empty" class="box box_empty">	<!-- 할 일 리스트 추가 시 empty div hidden 처리 -->
							<div class="icon_work"><i class="fas fa-child"></i></i></div>
							<div class="txt_work">새로운 할 일이 없습니다.</div>
							<div class="txt_sub">이승백님에게 할 일이 생기면 여기서 알려드릴게요.</div>	<!-- user 이름 -->
						</div>
					</c:if>
					
					<c:forEach var="worktodo" items="${worktodoList}">
					
						<div class="box box_list_worktodo" onclick="location.href='${cpath }/workFlow/${login.emp_dept}'">
						
							<c:if test="${worktodo.table_name eq 'EQUI_REQ_TABLE' }">
								<div class="head_worktodo">
									<div>
										<div class="img_profile">
											<img src="${serverPath }/${worktodo.emp_profile}">
										</div>
										<div>
											<div class="txt_name">
											작성 요청${worktodo.req_field == '연차 신청' ? '(연차)' : '(비품)'}
											</div>
											<div class="time_worktodo">${worktodo.req_date }</div>
										</div>
									</div>
										<div class="txt_go">해당 페이지로 이동</div>
								</div>
								<div class="txt_worktodo">${worktodo.req_content }</div>
							</c:if>
							
							<c:if test="${worktodo.table_name eq 'EQUIPMENT_TABLE' }">
								<div class="head_worktodo" onclick="location.href='${cpath }/workFlow/${login.emp_dept}'">
									<div>
										<div class="img_profile">
											<img src="${serverPath }/${worktodo.emp_profile}">
										</div>
										<div>
											<div class="txt_name">승인 요청 - 비품 신청</div>
											<div class="time_worktodo">${worktodo.req_date }</div>
										</div>
									</div>
									<div class="txt_go">해당 페이지로 이동</div>
								</div>
							</c:if>
							
							<c:if test="${worktodo.table_name eq 'ANNUAL_TABLE' }">
								<div class="head_worktodo" onclick="location.href='${cpath }/workFlow/${login.emp_dept}'">
									<div>
										<div class="img_profile">
											<img src="${serverPath }/${worktodo.emp_profile}">
										</div>
										<div>
											<div class="txt_name">승인 요청 - 연차 신청</div>
											<div class="time_worktodo">${worktodo.req_date }</div>
										</div>
									</div>
									<div class="txt_go">해당 페이지로 이동</div>
								</div>
							</c:if>
							
						</div>
					</c:forEach>
				</div>
			</div>
			
			<div class="right-side">
				<!-- 오늘 근무 -->
				<section class="box box_work">
					<div class="head_work">
						<h1>오늘 근무</h1>
						<div id="workingTime">
							<div id="startTime">출근  09:00</div>
							<div id="endTime">퇴근  18:00</div>
						</div>
					</div>
					<div class="content_work">
						<div class="content">
							<div class="box1">
							
								<!-- 지금 출근하기 버튼 클릭 시 활성화 리스트 (time) -->
							    <div id="box_time">
							        <span class="countTimeHour">00:</span>
							        <span class="countTimeMinute">00:</span>
							        <span class="countTimeSecond">00</span>
							    </div>
							    
								<!-- 예정 스케줄 버튼 클릭 시 활성화 리스트 -->
								<ul id="list_today" class="hidden">
									<li class="item_today">		<!-- 할 일 li 추가 -->
										<div class="icon_today"><i class="fas fa-briefcase"></i></div>
										<div class="txt_item">근무</div>
										<div class="txt_time">09:00 ~ 18:00</div>
									</li>
								</ul>
								
								<!-- 예정 스케줄 -->
								<button id="btn_today">
									<div>
										<div class="txt_today">예정 스케줄
											<div class="box_count">
												<div class="txt_count">1</div></div>	<!-- 스케줄 count -->
										</div>
										<div class="box_more">
											<div class="icon_top"><i class="fas fa-angle-up"></i></div>
											<div class="icon_bot"><i class="fas fa-angle-down"></i></div>
										</div>
									</div>
								</button>
							</div>
							
							<!-- 지금 출근하기 -->
							<div class="box2">
								<button id="on_work" class="btn_come">
									<div class="icon_come"><i class="far fa-clock"></i></div>
									<div class="txt_come">지금 출근하기</div>
								</button>
								<button id="off_work" class="btn_come" style="display:none;">
									<div class="icon_come"><i class="far fa-clock"></i></div>
									<div class="txt_come">지금 퇴근하기</div>
								</button>
							</div>
							
						</div> <!-- /content -->
					</div> <!-- /content_work -->
				</section>
				
				<!-- 다가오는 일정 -->
				<div class="box hidden">
					<div class="box_schedule">
						<div class="head_schedule">
							<div class="txt_schedule">다가오는 일정</div>
							<div class="txt_date">4월 14일 (수)</div>	<!-- 다가오는 일정 기간 입력 -->
						</div>
						<div class="content_schedule">
							<div class="list_schedule"> <!-- 일정 div 추가 -->
								<div class="item_schedule">
									<div class="icon_item"><i class="fas fa-skull-crossbones"></i></div>
									<div class="txt_item">
										<div>종강일</div>
									</div>
								</div>
							</div>
						</div>
					</div> <!-- /box_schedule -->
				</div>
				
			</div> <!-- /right-side -->
		</div> <!-- /wrap_home -->
	</div> <!-- /container -->
 
</main>


<!-- header menu handler -->
<script>gnbHandler(document.getElementById('home'));</script>

<!-- menu onclick -->
<script>
	const btn_notice = document.getElementById('btn_notice');
	const btn_work = document.getElementById('btn_work');
	
	$(document).ready(function() {
		btn_notice.onclick();
	})
	
	/* 공지사항 */
	btn_notice.onclick = function(event) {
// 		console.log('notice');
		btn_notice.classList.add('menu_on');
		btn_work.classList.remove('menu_on');
		document.getElementById('list_notice').classList.remove('hidden');
		document.getElementById('list_work').classList.add('hidden');
	};
	
	/* 할 일 */
	btn_work.onclick = function(event) {
// 		console.log('work');
		btn_notice.classList.remove('menu_on');
		btn_work.classList.add('menu_on');
		document.getElementById('list_notice').classList.add('hidden');
		document.getElementById('list_work').classList.remove('hidden');
	};
	
	/* 예정 스케줄 */
	const btn_today = document.getElementById('btn_today');	
	let cnt = 1;
	btn_today.onclick = function(event) {

		if(cnt === 1) {
			document.getElementById('list_today').classList.remove('hidden');			
		}
		else {
			document.getElementById('list_today').classList.add('hidden');			
		}
		cnt *= -1;
	}
	
</script>

<!-- 공지사항 작성 및 삭제 -->
<script>
	// 관리자 및 대표 인지 확인
	if(admin == 1) {
		$('#write_notice').removeClass('hidden');
		$('.btn_noti').removeClass('hidden');
	}
	
	// 공지사항 작성
	$('#notiInsertForm').submit(function() {
		event.preventDefault();
		
		const notiInsertForm = document.getElementById('notiInsertForm');
		const notiformData = new FormData(notiInsertForm);
		const ob_noti = {};
		for (const [key, value] of notiformData.entries()) {
			ob_noti[key] = value;
		}
		console.log(ob_noti);
		const answer_noti = confirm('공지사항을 추가하시겠습니까?');
		
		if(answer_noti) {
			const url = cpath + '/noticeAdd';
			const opt = {
				method: 'POST',
				body: JSON.stringify(ob_noti),
				headers: {
					'Content-Type': 'application/json'
				}
			};
			fetch(url, opt)
			.then(resp => resp.text())
			.then(text => {
				console.log("notice : " + text);
				if(text == 1) {
					alert('공지사항 업로드 되었습니다.');
					location.reload();
				}
				else {
					alert('공지사항 업로드 실패하셨습니다.');
				}
			});
		}
	});
	
	// 공지사항 삭제
	$('.btn_noti').click(function() {
		
		const seq = $(this).attr('id').substring(5);
		console.log(seq);
		
		const answer = confirm('공지사항을 삭제하시겠습니까?');
		
		if(answer) {
			const url = cpath + '/noticeDel/' + seq;
			const opt = {
				method: 'DELETE',
				
			};
			fetch(url, opt)
			.then(resp => resp.text())
			.then(text => {
				console.log("notice : " + text);
				if(text == 1) {
					alert('삭제가 완료되었습니다.');
// 					SetDivPosition();	// 스크롤 위치 저장
					location.reload();
				}
				else {
					alert('삭제가 실패되었습니다.');
				}
			});
		}
	})
	
</script>

<!-- hover event-->
<script>
	// notice box hover
	$('.box_list_noti').hover(function(){
	    $(this).find('.time_notice').css({'display':'block'});
	    $(this).find('.btn_noti').css({'display':'block'});
	}, function() {
	    $(this).find('.time_notice').css({'display':'none'});
	    $(this).find('.btn_noti').css({'display':'none'});
	});
	
	// worktodo box hover
	$('.box_list_worktodo').hover(function(){
	    $(this).find('.time_worktodo').css({'display':'block'});
	    $(this).find('.txt_go').css({'visibility':'visible'});
	}, function() {
	    $(this).find('.time_worktodo').css({'display':'none'});
	    $(this).find('.txt_go').css({'visibility':'hidden'});
	});
</script>

<!-- 지금 출근하기 버튼 및 Time 구현 함수 -->
<script>
/*
	1. home 페이지 오면 working table에 사원 및 오늘자 행이 있는지 확인
	
	2-1 있으면 퇴근버튼 활성화 -> 현재 시간과 출근시간 비교하여 실시간 근무시간 활성
	
	2-2 없으면 출근버튼 활성화 (실시간 근무시간은 출근버튼 클릭시 활성화)
	
*/
	function checkWork(){
		const url = cpath + '/checkWorking';
		const opt = {
				method: 'GET',
		}
		fetch(url, opt)
		.then(resp => resp.json())
		.then(json => {
// 			console.log('초기 :',json);
			
			if(json != null) {
				$('#startTime').text('출근  ' + json['working_time'].substring(0,5));
				if(json['off_work'] != '0') {
					$('#endTime').text('퇴근  ' + json['off_work'].substring(0,5));
					offWorking();
				}
				else {
					$('#endTime').text('퇴근  -- : --');
					onWorking();
				}
			}
			else {
				$('#startTime').text('출근  -- : --');
				$('#endTime').text('퇴근  -- : --');
				offWorking();
			}

		});
	}
	
	function onWorking() {
		$("#box_time").css("display","flex");
		$('#on_work').css("display","none");
		$('#off_work').css("display","flex");
	    timer = setInterval(working, 1000); /* millisecond 단위의 인터벌 */
	}
	function offWorking() {
	    // Yes click
	    clearInterval(timer); 
	    
		$("#box_time").css("display","none");
		$('#on_work').css("display","flex");
		$('#off_work').css("display","none");
		
		// 초기화
	    $(".countTimeHour").html('00:');
	    $(".countTimeMinute").html('00:');
	    $(".countTimeSecond").html('00');
	}
	
	let checkText = '';
	
	jQuery(document).ready(
			checkWork()
	);

		
	$('#on_work').click(function () {
		
		if(checkText == '퇴근후') {
			alert("이미 퇴근하셨습니다.");
			return;
		}
		
		const url = cpath + '/setStart';
		const opt = {
				method: 'POST',
		}
		fetch(url, opt)
		.then(resp => resp.text())
		.then(text => {
			console.log('무결성제약조건 :',text);
			if(text == '0') {
				alert("이미 출근하셨습니다.");
				return;
			}
			onWorking();
			checkWork();
		});
		
	})
	
	$('#off_work').click(function () {
        if (confirm('퇴근하시겠습니까?\n퇴근하시면 다시 출근하실 수 없습니다.')) {
    		const url = cpath + '/setEnd';
    		const opt = {
    				method: 'PUT',
    		}
    		fetch(url, opt)
    		.then(resp => resp.text())
    		.then(text => {
    			if(text == '1') {
			        alert('안전한 귀가 되시고 맛있는 저녁식사 드시고\n편안한 밤 보내시고 내일도 활기찬 하루로 뵙겠습니다!');
			        checkText = '퇴근후';
// 					offWorking();
		    		checkWork();
    			}
    			else {
    				alert('퇴근 실패!');
    			}
    		});
       	} 
	})
	
	
    var timer;
    function working() {

		const url = cpath + '/nowTime';
		const opt = {
				method: 'GET',
		}
		fetch(url, opt)
		.then(resp => resp.text())
		.then(text => {
// 			console.log(text);
			
			var strArray = text.split(':');
			var hour = strArray[0];
			var minute = strArray[1];
			var second = strArray[2];

			$(".countTimeHour").html(hour + ":");
	        $(".countTimeMinute").html(minute + ":");
	        $(".countTimeSecond").html(second);
		});
		
       
	};
	
	

   
</script>

<!-- 새로고침 했을때 이전 스크롤 위치 기억시키기 -->
<script>

// 	window.onload = function(){ 
// 		var strCook = document.cookie;
// 		if(strCook.indexOf("!~")!=0) { 
// 			var intS = strCook.indexOf("!~"); 
// 			var intE = strCook.indexOf("~!"); 
// 			var strPos = strCook.substring(intS+2,intE); 
// 			console.log('strPos : ',strPos);
// 			document.getElementById("root").scrollTop = strPos; 
// 		}
// 	} 
	
// 	function SetDivPosition(){ 
// 		var intY = document.getElementById("root").scrollTop; 
// 		document.title = intY; 
// 		document.cookie = "yPos=!~" + intY + "~!"; 
// 	}

</script>

</div> <!-- /root -->
</body>
</html>
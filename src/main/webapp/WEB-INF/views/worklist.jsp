
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"></c:set>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- 폰트  -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
	
<!-- icon site -->
<script src="https://kit.fontawesome.com/85039ef1d3.js"
	crossorigin="anonymous"></script>
	
<style>


*{
font-family: -apple-system,BlinkMacSystemFont,Apple SD Gothic Neo,Noto Sans Korean,sans-serif;

}
html {
	height: 100%;
}

body {
	margin: 0px;
	height: inherit;
	width: 100%;
}

main {
	width: 1920px;
	height: inherit;
}

.outline {
	width: 1920px;
	height: 100%;
}

.topline {
	width: 1920px;
	height: 140px;
	position: fixed;
}

.topline-top {
	width: 1920px;
	height: 64px;
	background-color: rgb(255, 255, 255);
	border-top: 1px solid rgb(243, 245, 246);
	border-bottom: 2px solid rgb(243, 245, 246);
	display: flex;
}

.topline-bot {
	width: 1920px;
	height: 72px;
	border-bottom: 2px solid rgb(243, 245, 246);
}

.tt-left, .tt-cen, .tt-right {
	width: 640px;
	height: inherit;
}

.sch-line {
	width: 260px;
	height: inherit;
	margin-left: 50px;
	display: flex;
}

#mysch-btn {
	width: 110px;
	height: 40px;
	margin-top: 11px;
	margin-bottom: 11px;
	display: flex;
	cursor: pointer;
	background-color: #ffffff;
	border: none;
	outline: none;
	border-radius: 10px;
}

.mysch-img, .oursch-img {
	width: 20px;
	height: 20px;
	margin-top: auto;
	margin-bottom: auto;
}

.mysch-write {
	width: 86px;
	height: 20px;
	margin-top: auto;
	margin-bottom: auto;
	font-size: 15px;
	color: rgb(139, 152, 167);
	font-weight: 800;
}

.oursch-write {
	width: 98px;
	height: 20px;
	margin-top: auto;
	margin-bottom: auto;
	font-size: 15px;
	color: rgb(31, 46, 61);
	font-weight: 800;
}

#oursch-btn:hover, #mysch-btn:hover {
	background-color: rgb(247, 248, 248);
}

#oursch-btn {
	width: 140px;
	height: 40px;
	margin-top: 11px;
	margin-bottom: 11px;
	display: flex;
	cursor: pointer;
	background-color: #ffffff;
	border: none;
	outline: none;
	border-radius: 10px;
}

.oursch-outl {
	width: 140px;
	height: inherit;
	margin-left: 20px;
}

.alxwnf {
	width: 140px;
	height: 3px;
	background-color: #1F2E3D;
}

.tt-cen-line {
	width: 200px;
	height: 40px;
	margin-top: 10px;
	margin-bottom: 10px;
	margin-right: auto;
	margin-left: auto;
	display: flex;
}

#left-btn, #right-btn {
	width: 38px;
	height: inherit;
	border: none;
	outline: none;
	background-color: #ffffff;
	cursor: pointer;
	border-radius: 10px;
}

#left-btn:hover, #right-btn:hover, #modal-btn:hover {
	background-color: rgb(247, 248, 248);
}

#modal-btn {
	width: 125px;
	height: inherit;
	border: none;
	outline: none;
	background-color: #ffffff;
	cursor: pointer;
	border-radius: 10px;
}

.modal-btn-inner {
	width: 92px;
	height: 20px;
	margin-left: auto;
	margin-right: auto;
}

.modal {
	position: fixed;
	top: 50px;
	left: 0px;
	width: 100%;
	height: 100%;
	display: flex;
}

.modal_overlay {
	background-color: #ffffff;
	width: 298px;
	height: 282px;
	left: 810px;
	top: 20px;
	position: absolute;
}

.modal_content {
	border-radius: 12px;
	box-shadow: 4px 16px 36px 0 rgb(20 20 20/ 16%), 0 4px 8px 0
		rgb(20 20 20/ 12%);
	height: 282px;
	position: relative;
	border-radius: 16px;
	left: 810px;
	top: 20px;
	min-width: 298px;
	max-width: 298px;
	width: 50%;
	z-index: 9999;
}

.mc-header {
	width: 298px;
	height: 62px;
}

.mc-inheader {
	width: 246px;
	height: 24px;
	border: 1px solid #ffffff;
	margin-top: 19px;
	margin-bottom: 19px;
	margin-left: auto;
	margin-right: auto;
	display: flex;
	justify-content: space-between;
}

.inheader-left {
	width: 100px;
	height: inherit;
	color: #3a5064;
	font-weight: 800;
	font-size: 17px;
}

.inheader-right {
	width: 50px;
	height: inherit;
	display: flex;
}

.mtwtf {
	width: 298px;
	height: 34px;
	margin-top: -10px;
}

.inmtwtf {
	width: 256px;
	height: 24px;
	margin-top: 5px;
	margin-bottom: 5px;
	margin-left: auto;
	margin-right: auto;
	display: flex;
}

.mo, .tu, .we, .th, .fr {
	width: 35px;
	height: inherit;
	text-align: center;
	font-size: 13px;
	font-weight: 500;
	color: #3a5064;
}

.su {
	width: 35px;
	height: inherit;
	text-align: center;
	font-size: 13px;
	font-weight: 500;
	color: red;
}

.sa {
	width: 35px;
	height: inherit;
	text-align: center;
	font-size: 13px;
	font-weight: 500;
	color: blue;
}

#smallleft {
	width: 25px;
	height: inherit;
	border: none;
	outline: none;
	background-color: #ffffff;
	cursor: pointer;
}

#smallright {
	width: 25px;
	height: inherit;
	border: none;
	outline: none;
	background-color: #ffffff;
	cursor: pointer;
}

.daylist {
	width: 256px;
	height: 170px;
	margin-left: auto;
	margin-right: auto;
	display: flex;
	flex-flow: wrap;
}

.one, .one1, .one2, .one3, .one4, .one5, .one6 {
	width: 35px;
	height: 24px;
	text-align: center;
	font-size: 13px;
	font-weight: 800;
	color: #3a5064;
}

.onebox {
	width: inherit;
	height: 24px;
	display: flex;
}

#hidden {
	display: none;
}

.inputdate {
	width: 200px;
	height: 50px;
}

.topline-bot-left {
	width: 100%;
	height: 100%;
	box-shadow: rgb(0 0 0/ 2%) -1px 0px 0px 0px inset;
	background-image: linear-gradient(rgba(197, 204, 211, 0.05),
		rgba(197, 204, 211, 0.05)), linear-gradient(rgb(255, 255, 255),
		rgb(255, 255, 255));
	display: flex;
}

.day-users {
	width: 194px;
	height: inherit;
	box-sizing: border-box;
	padding: 20px 15px 40px 40px;
	font-weight: 700;
	color: rgb(99, 114, 131);
	border-right: 1px solid rgb(235, 235, 235);
}

.cen-outline {
	width: inherit;
	height: 72px;
	border-bottom: 2px solid rgb(243, 245, 246);
	display: flex;
	
	
}

.co-child {
	width: 200px;
	height: 72px;
	border-right: 1px solid rgb(243, 245, 246);
	
}

.co-child1 {
	width: 60px;
	height: 30px;
	font-weight: 700;
	font-size: 18px;
	color: rgb(31, 46, 61);
	margin-top: 21px;
	margin-bottom: 21px;
	margin-left: 50px;
}

#listbox {
	width: inherit;
	height: 822px;
	max-height: 2500px;
	overflow: scroll;
	-ms-overflow-style: none; /* IE and Edge */
	scrollbar-width: none; /* Firefox */
	
}

#listbox::-webkit-scrollbar {
	display: none; /* Chrome, Safari, Opera*/
}

.rightbox {
	width: 100%;
	height: 72px;
	max-width: 3000px;
	border-right: 1px solid rgb(243, 245, 246);
	
	
}

.work-bar {
	width: 90%;
	height: 22px;
	margin-left: auto;
	margin-right: auto;
	 margin-top : 14px;
	margin-bottom: 14px;
	border-radius: 6px;
	background-color: rgba(24, 157, 171, 0.2);
	color: rgb(31, 46, 61);
	display: flex;
	margin-top: 14px;
	
	
}

.wbi {
	width: 90%;
	height: 16px;

	margin-left: auto;
	margin-right: auto;
	margin-top: 3px;
	margin-bottom: 3px;
	display: flex;
}

.workbar-in {
	width: 30px;
	height: 16px;
	margin-top: auto;
	margin-bottom: auto;
	
	color: rgb(31, 46, 61);
	font-size: 13px;
	font-weight: 600;
}

.workbar-time {
	width: 70px;
	height: inherit;
	
	margin-top: auto;
	margin-bottom: auto;
	margin-left: 8px;
	opacity: 0.6;
	font-weight: 500;
	font-size: 11px;
}

.day-users-profile {
	width: 100%;
	max-width: 3500px;
	height: inherit;
}

.day-users-in {
	width: 120px;
	height: 40px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 4px;
}

.dup-btn {
	width: 100%;
	height: inherit;
	/*  border: none;
    outline: none;*/
	background-color: transparent;
	font-weight: inherit;
	position: relative;
	overflow: hidden;
	border: 0;
	outline: 0;
	border-radius: 0px;
	border-right: 1px solid rgb(243,245,246);
	box-sizing: border-box;
	background-color: #ffffff;
	/*border: 1px solid red;*/
}

.dup-btn-ol {
	width: 100%;
	min-width: 0;
	height: 50px;
	display: flex;
}

.profile-pic {
	color: rgb(255, 255, 255);
	width: 50px;
	height: 50px;
	border-radius: 9999px;
	background-size: co;
	background-repeat: no-repeat;
	background-position: center center;
	display: flex;
	position: relative;
	font-size: 14px;
	font-weight: 500;
	-webkit-box-align: center;
	align-items: center;
	flex-shrink: 0;
	-webkit-box-pack: center;
	justify-content: center;
	box-shadow: rgb(0 0 0/ 10%) 0px 0px 0px 1px inset;
	overflow: visible;
	
}

.profile-name {
	width: 45px;
	height: 22px;
	margin-left: 14px;
	display: flex;
	align-items: flex-start;
	flex-direction: column;
	overflow: hidden;
	margin-top: auto;
	margin-bottom: auto;
	font-size: 14px;
	font-weight: 700;
}

#plus_hidden {
	display: none;
}

#plus_hidden1 {
	display: none;
}

.work-bar-outline {
	width: 100%;
	margin-top: 11px;
	margin-bottom: 11px;
	max-width: 3500px;
	min-width: 0;
	height: 50px;
	display: flex;
}
</style>

<main>
<div class="modal" id="">

	<div class="modal_overlay" id="plus_hidden"></div>
	<!--나머지 배경 어둡게 만드는 영역-->

	<div class="modal_content" id="plus_hidden1">
		<!--표시하고 싶은 내용-->

		<div class="mc-header">
			<div class="mc-inheader">
				<div class="inheader-left" id="inheader-left"></div>
				<div class="inheader-right">

					<button id="smallleft"><</button>
					<button id="smallright">></button>
				</div>
			</div>
		</div>
		<div class="mtwtf">
			<div class="inmtwtf">
				<div class="su">일</div>
				<div class="mo">월</div>
				<div class="tu">화</div>
				<div class="we">수</div>
				<div class="th">목</div>
				<div class="fr">금</div>
				<div class="sa">토</div>
			</div>
		</div>
		<div class="daylist" id="daylist"></div>



	</div>

</div>



<div class="outline">
	<div class="topline">
		<div class="topline-top">
			<div class="tt-left">
				<div class="sch-line">
					<button id="mysch-btn">
						<div class="mysch-img">
							<i class="fas fa-user fa"
								style="color: rgb(139, 162, 189); width: 20px; height: 20px; margin-top: 3px; margin-left: 3px;"></i>
						</div>
						<div class="mysch-write">내 스케줄</div>
					</button>
					<div class="oursch-outl">
						<button id="oursch-btn">
							<div class="oursch-img">
								<i class="fas fa-users"
									style="width: 20px; height: 20px; margin-top: 3px; margin-right: -2px;"></i>
							</div>
							<div class="oursch-write">구성원 스케줄</div>
						</button>
						<div class="alxwnf"></div>
					</div>
				</div>
			</div>
			<div class="tt-cen">
				<div class="tt-cen-line">
					<button id="left-btn"><</button>
					<button id="modal-btn">
						<div class="modal-btn-inner" id="modal-btn-inner"></div>
					</button>
					<button id="right-btn">></button>
				</div>
			</div>
			<div class="tt-right"></div>
		</div>
		<div class="topline-bot">
			<div class="topline-bot-left">
				<div class="day-users">
					<div class="day-users-in">날짜 · 구성원</div>
				</div>
				<div class="day-users-profile" id="day-users-profile">

				</div>
			</div>
		</div>
		<div id="listbox">

		</div>

	</div>
</div>

</main>
</body>
<script>


    var thisMonth = new Date().getMonth();                      // 이번달
    var thisYear = new Date().getFullYear();                    // 이번년도
    var firstDay = new Date(thisYear,thisMonth,1).getDate();    // 이번달 첫번째
    var lastDay = new Date(thisYear,thisMonth+1,0).getDate();   // 이번달 마지막날
    var inheaderleft = document.getElementById('inheader-left'); // 왼쪽 날짜 표시
    var dydlf = new Date(thisYear,thisMonth,1).getDay(); // 첫달 첫날 요일
    var today = new Date().getDate();
    

    var preMonth = new Date().getMonth()-1; // 저번달
    var preLastDay = new Date(thisYear,preMonth+1,0).getDate(); // 저번달 마지막날
    var preDydlf = new Date(thisYear,preMonth+1,0).getDay(); // 저번달 마지막날 요일

  
    const modalbtn = document.getElementById('modal-btn');
    modalbtn.innerText = thisMonth+1 + '.' + firstDay + '-' + (thisMonth+1) + '.' + lastDay;

 
    var plus2=0;
    var minus1 = -1;
    var plus1 = 1;
    // 젤위에 < 버튼 클릭시 작동
    var leftChangePath;
    const leftbtn = document.getElementById('left-btn');
    var leftworkTime;
   var leftday;
    var leftChangeMonth;
   
    window.memLength = 0;
    
    var hellosize = '${hellosize}';
	 console.log(hellosize);
	 
    
   	const getMemNum = function(){
    		const url = "${cpath}/allTeamlist/${login.emp_dept}";
    		const opt={
    				method:'GET',
    		}
    		fetch(url,opt)
    		.then(resp=>resp.text())
    		.then(text=>{
    			window.memLength = +text;
    			console.log('getmem안에 : ' + window.memLength);
   			});
    	};
    	getMemNum();

//    console.log('getmem밖에 : ' + window.memLength);
  
   

    var datearr = new Array();
    var workarr = new Array();
    var offarr = new Array();
    var enumarr = new Array();
  
    

    //var helloarr = hellostr.split(',');
   // console.log(helloarr[0].split('['));
  //  console.log('zdsad : ' + '${helloarr[0]}');
    
    var arrEmp = new Array();
    
    <c:forEach items="${helloarr}" var="item">
    	arrEmp.push({name:${item}})
    </c:forEach>
    	
  //  console.log(arr123);
   // for(var i=0;i<'${hellosize}';i++){
   // 	console.log('zd : ' + arrEmp[i].name);
   // }
 	 
   // console.log('hello1 : ' + helloarr.length);
   // console.log('hello2 : ' + helloarr[1]);
    
   
   	
    // 젤위에 < 버튼 클릭시 작동
    leftbtn.onclick = function left(){
    	const listbox = document.getElementById('listbox');
    	
    	listbox.innerHTML = '';  
    	
    	 
    	//for(var i=0;i<'${hellosize}';i++){
       // 	console.log('zd : ' + arr123[i].name);
      //  }
    	
        leftChangeMonth = thisMonth + minus1 +plus1;
		//console.log('왼쪽누ㅠ르면 나오는 달 : ' + leftChangeMonth);  
		//console.log('왼쪽누르면 나오는 달 : ' + thisMonth);
        const firstDay = new Date(thisYear,leftChangeMonth,1).getDate();
        const lastDay = new Date(thisYear,leftChangeMonth,0).getDate();
        modalbtn.innerText = leftChangeMonth + '.' + firstDay + '-' + (leftChangeMonth) + '.' + lastDay;
        const cenoutline = document.querySelector('.cen-outline');
    	dydlf = new Date(thisYear,leftChangeMonth-1,1).getDay();
    	var whatdydlf;
    	//var lastPlus = lastDay+1;
    	//console.log('lastDay+1 : ' + lastDay);
    	var innerT = new Array(lastDay);
    	var inc=0;
    	var num=0;  
    	
    	
    	 var en = encodeURIComponent('${login.emp_dept}');
         sql = thisYear +',' +  leftChangeMonth + ',' +firstDay+','+lastDay +','+'${login.emp_dept}';
    	//console.log('sql111111 : ' + sql);
    	const url = '${cpath}/memz' + sql;
    	const opt = {
    			method:'GET',
    	}
    	fetch(url,opt)
    	.then(resp=>resp.json())
    	.then(json=>{	
    
    		for(var i=0;i<json.length;i++){
    			
    			datearr[i] = json[i]['today_date'];
    			offarr[i] = json[i]['off_work'];
    			workarr[i] = json[i]['working_time'];
    			enumarr[i] = json[i]['emp_num'];
    			//console.log('arr11 : ' + datearr[i]);
    			//console.log('arr1234 : ' + offarr[i]);
    			//console.log('adasdsa : ' + workarr[i]);
    			//console.log('adasdsa : ' + enumarr[i]);
    		}
    		//console.log(';sadsad : ' + offarr[0]);
    		//console.log('sadasdasd : ' + workarr[0]);
    		//console.log('sadadsa: ' + enumarr[0]);
    		//console.log('sadadsa: ' + enumarr[1]);
    		//console.log('enumarrr[1] : ' + enumarr[1]);
    		
    		for(var i=firstDay;i<=lastDay;i++){
    			switch (dydlf) {
    			case 1:
    				whatdydlf = '월';
    				dydlf++;
    				if(dydlf==7){
    					dydlf=0;
    				}
    				break;
    			case 2:
    				whatdydlf = '화';
    				dydlf++;
    				if(dydlf==7){
    					dydlf=0;
    				}
    				break;
    			case 3:
    				whatdydlf = '수';
    				dydlf++;
    				if(dydlf==7){
    					dydlf=0;
    				}
    				break;
    			case 4:
    				whatdydlf = '목';
    				dydlf++;
    				if(dydlf==7){
    					dydlf=0;
    				}
    				break;
    			case 5:
    				whatdydlf = '금';
    				dydlf++;
    				if(dydlf==7){
    					dydlf=0;
    				}
    				break;
    			case 6:
    				whatdydlf = '토';
    				dydlf++;
    				if(dydlf==7){
    					dydlf=0;
    				}
    				break;
    			case 0:
    				whatdydlf = '일';
    				dydlf++;
    				if(dydlf==7){
    					dydlf=0;
    				}
    				break;
    			}
    			
        		const cenoutline = document.createElement('div');
    			cenoutline.className = 'cen-outline';
    			const cochild = document.createElement('div');
    			cochild.className = 'co-child';
    			const cochild1 = document.createElement('div');
    			cochild1.className = 'co-child1';
    			cochild.appendChild(cochild1);
    			cenoutline.appendChild(cochild);
    			listbox.appendChild(cenoutline);
    			cochild1.innerText = leftChangeMonth + '.' + i + '(' + whatdydlf + ')';
    			
    			if(leftChangeMonth <10 && i < 10){
    				innerT[i-1] = '0'+ leftChangeMonth + '-0' + i;	
    			}else if(leftChangeMonth <10 && i>9){
    				innerT[i-1] = '0' + leftChangeMonth + '-' + i;
    			}else if(leftChangeMonth >=10 && i < 10){
    				innerT[i-1] = leftChangeMonth + '-0' + i;
    			}else{
    				innerT[i-1] = leftChangeMonth + '-' + i;
    			}
    			
    			//console.log('sadsada : ' + arrEmp.length);
    			
    				if(json.length != 0 && innerT[i-1] === datearr[inc]){
    					
    					console.log('성공');
    					
					//	console.log('datearr : ' + datearr[inc]);
					//	console.log('offarr : ' + offarr[inc]);
					//	console.log('workarr : ' + workarr[inc]);
					//	console.log('enumarr : ' + enumarr[inc]);
    					
    				//	for(var i=0;i<arrEmp.length;){
					//		if(arrEmp[i].name === enumarr[inc]){
								
								
					//		}else{
								
					//		}		
					//	}
    				for(var z=0;z<arrEmp.length;z++){
    					if(arrEmp[z].name === enumarr[inc]){
    						console.log('성공1');
    						//console.log('arrEmpasdsada : ' + arrEmp[z].name);
    						//console.log('enumarr[inc] : ' + enumarr[inc]);
    						const rightbox = document.createElement('div');
    	    				const workbarout = document.createElement('div');
    	    				const a = 100 / window.memLength;
    	    				
    	    				//console.log('datearr : ' + datearr[inc]);
    	    				//console.log('enumarr tqtqqt: ' + enumarr[inc]);
    	    				//console.log('sadsad : ' + '${hello.get(j+1)}');
    	    				
    	    				const wbi = document.createElement('div');
    						wbi.className = 'wbi';
    						const workbarin = document.createElement('div');
    						workbarin.className = 'workbar-in';
    						const workbartime = document.createElement('div');
    						workbartime.className = 'workbar-time';
    						
    						workbarin.innerText = '근무';
    						workbartime.innerText = workarr[inc] + '~' + offarr[inc];
    						
    						wbi.appendChild(workbarin);
    						wbi.appendChild(workbartime);
    						
    						workbarout.className = 'work-bar';
    						workbarout.appendChild(wbi);
    						
    	    				
    	    				rightbox.className = 'rightbox';
    	    				workbarout.className = 'work-bar';
    	    				rightbox.style.width = a + '%';
    	    				
    	    				
    	    				rightbox.appendChild(workbarout);
    	    				cenoutline.appendChild(rightbox);
    	    				
    	    				listbox.appendChild(cenoutline);
    	    				
    	    				//console.log('inc : ' + inc);
    	    				inc++;
    						
    					}else if(arrEmp[z].name != enumarr[inc]){
    						console.log('실패1');
    					//	console.log('z값오르나? : ' + z);
    					//	console.log('arrEmp : ' + arrEmp[z].name);
    					//	console.log('enumarr[inc]zdsadad : ' + enumarr[inc]);
    					//	z++;
    						console.log('실패 ');
        					
        					const rightbox = document.createElement('div');
    	    				const workbarout = document.createElement('div');
    	    				const a = 100/window.memLength;
    	    			//	console.log('a : ' +a )
    	    				rightbox.className = 'rightbox';
    	    				workbarout.className = 'work-bar';
    	    				rightbox.style.width = a + '%';
    	    				workbarout.style.width = a + '%';
    	    				workbarout.style.border = 'none';
    	    				workbarout.style.outline = 'none';
    	    				workbarout.style.backgroundColor = '#ffffff';	
    	    				workbarout.style.boxshadow = 'initial';
    	    				
    	    				rightbox.appendChild(workbarout);
    	    				cenoutline.appendChild(rightbox);
    	    				
    	    				listbox.appendChild(cenoutline);
    					}
    				}
    				
    					
    			//	console.log('밑에거는 뜨나? : ' + arrEmp[1].name);
    			//	console.log('밑에거는 뜨나?111 : ' +enumarr[0]);
    					
	    				
	    				
	    				
    				}else if(inc==json.length || json.length === 0 || innerT[i-1] != datearr[inc]){
    					
    					console.log('실패 ');
    					for(var bo=0;bo<window.memLength;bo++){
    					const rightbox = document.createElement('div');
	    				const workbarout = document.createElement('div');
	    				const a = 100/window.memLength;
	    			//	console.log('a : ' +a )
	    				rightbox.className = 'rightbox';
	    				workbarout.className = 'work-bar';
	    				rightbox.style.width = a + '%';
	    				workbarout.style.width = a + '%';
	    				workbarout.style.border = 'none';
	    				workbarout.style.outline = 'none';
	    				workbarout.style.backgroundColor = '#ffffff';	
	    				workbarout.style.boxshadow = 'initial';
	    				
	    				rightbox.appendChild(workbarout);
	    				cenoutline.appendChild(rightbox);
	    				
	    				listbox.appendChild(cenoutline);
    					}
	    				
    				}
    			
    			
    		}
    		
    		
    		
    	});
        
        plus2 = 0;
		minus1--;
        
		 if(leftChangeMonth < 2){
	            leftbtn.disabled = 'disabled';
	        }
	        rightbtn.disabled = false;
    	}
   
   
    
   
	
    var rightChangeMonth;
   
    // 젤위에 > 버튼 클릭시 작동
    const rightbtn = document.getElementById('right-btn');
  
    rightbtn.onclick = function rightfun(){
    	const listbox = document.getElementById('listbox');
		listbox.innerHTML = '';     
	

      rightChangeMonth = thisMonth + plus1 + minus1 +1;
     
      
      const firstDay = new Date(thisYear,rightChangeMonth+1,1).getDate();
      const lastDay = new Date(thisYear,rightChangeMonth+1,0).getDate();
    //  console.log('오른쪽누르면 바뀌는 달의 첫날 : ' + firstDay);
    //  console.log('오른쪽누르면 바뀌는 달의 마지막날 : ' + lastDay);
      
      modalbtn.innerText = (rightChangeMonth+1) + '.' + firstDay + '-' + (rightChangeMonth+1) + '.' + lastDay;
        
     
      const cenoutline = document.querySelector('.cen-outline');
      dydlf = new Date(thisYear,rightChangeMonth,1).getDay();
      var innerT = new Array(lastDay);
      var inc=0;
      var en = encodeURIComponent('${login.emp_dept}');
      sql = thisYear +',' + (rightChangeMonth+1) + ',' +firstDay+','+lastDay +','+'${login.emp_dept}';
      //console.log('sql : ' + sql);
      
      const url = '${cpath}/memz' + sql;
      const opt = {
    		  method:'GET',
      }
      fetch(url,opt)
      .then(resp=>resp.json())
      .then(json=>{
    	 // console.log(json.length);
    	//  for(i in json){
    	//	  console.log(json[i]['working_time']);
    	 // }
    	 for(var i=0;i<json.length;i++){
    		 datearr[i] = json[i]['today_date'];
    		 offarr[i] = json[i]['off_work'];
    		 workarr[i] = json[i]['working_time'];
    		 enumarr[i] = json[i]['emp_num'];
    		 
    	 }
    	
    	 for(var i=firstDay;i<=lastDay;i++){
    		 switch(dydlf){
    		 case 1:
 				whatdydlf = '월';
 				dydlf++;
 				if(dydlf==7){
 					dydlf=0;
 				}
 				break;
 			case 2:
 				whatdydlf = '화';
 				dydlf++;
 				if(dydlf==7){
 					dydlf=0;
 				}
 				break;
 			case 3:
 				whatdydlf = '수';
 				dydlf++;
 				if(dydlf==7){
 					dydlf=0;
 				}
 				break;
 			case 4:
 				whatdydlf = '목';
 				dydlf++;
 				if(dydlf==7){
 					dydlf=0;
 				}
 				break;
 			case 5:
 				whatdydlf = '금';
 				dydlf++;
 				if(dydlf==7){
 					dydlf=0;
 				}
 				break;
 			case 6:
 				whatdydlf = '토';
 				dydlf++;
 				if(dydlf==7){
 					dydlf=0;
 				}
 				break;
 			case 0:
 				whatdydlf = '일';
 				dydlf++;
 				if(dydlf==7){
 					dydlf=0;
 				}
 				break;
    		 }
    		 
    		const cenoutline = document.createElement('div');
 			cenoutline.className = 'cen-outline';
 			const cochild = document.createElement('div');
 			cochild.className = 'co-child';
 			const cochild1 = document.createElement('div');
 			cochild1.className = 'co-child1';
 			cochild.appendChild(cochild1);
 			cenoutline.appendChild(cochild);
 			listbox.appendChild(cenoutline);
 			cochild1.innerText = (rightChangeMonth+1) + '.' + i + '(' + whatdydlf + ')';
 			
 			if((rightChangeMonth+1) <10 && i < 10){
 				innerT[i-1] = '0'+ (rightChangeMonth+1) + '-0' + i;	
 			}else if(rightChangeMonth <10 && i>9){
 				innerT[i-1] = '0' + (rightChangeMonth+1) + '-' + i;
 			}else if((rightChangeMonth+1) >=10 && i < 10){
 				innerT[i-1] = (rightChangeMonth+1) + '-0' + i;
 			}else{
 				innerT[i-1] = (rightChangeMonth+1) + '-' + i;
 			}
 			
 			
 			
 				if(json.length!=0 && innerT[i-1] === datearr[inc]){
 					
 					for(var z=0;z<arrEmp.length;z++){
 						if(arrEmp[z].name === enumarr[inc]){
 							const rightbox = document.createElement('div');
 		    				const workbarout = document.createElement('div');
 		    				const a = 100 / window.memLength;
 		    				
 		    				const wbi = document.createElement('div');
 							wbi.className = 'wbi';
 							const workbarin = document.createElement('div');
 							workbarin.className = 'workbar-in';
 							const workbartime = document.createElement('div');
 							workbartime.className = 'workbar-time';
 							workbarin.innerText = '근무';
 							workbartime.innerText = workarr[inc] + '~' + offarr[inc];
 							
 							wbi.appendChild(workbarin);
 							wbi.appendChild(workbartime);
 							
 							workbarout.className = 'work-bar';
 							workbarout.appendChild(wbi);
 							
 		    				rightbox.className = 'rightbox';
 		    				workbarout.className = 'work-bar';
 		    				rightbox.style.width = a + '%';
 		    				
 		    				
 		    				rightbox.appendChild(workbarout);
 		    				cenoutline.appendChild(rightbox);
 		    				
 		    				listbox.appendChild(cenoutline);
 		    				
 		    				console.log('inc : ' + inc);
 		    				inc++;
 						}else if(arrEmp[z].name != enumarr[inc]){
 							const rightbox = document.createElement('div');
    	    				const workbarout = document.createElement('div');
    	    				const a = 100/window.memLength;
    	    			//	console.log('a : ' +a )
    	    				rightbox.className = 'rightbox';
    	    				workbarout.className = 'work-bar';
    	    				rightbox.style.width = a + '%';
    	    				workbarout.style.width = a + '%';
    	    				workbarout.style.border = 'none';
    	    				workbarout.style.outline = 'none';
    	    				workbarout.style.backgroundColor = '#ffffff';	
    	    				workbarout.style.boxshadow = 'initial';
    	    				
    	    				rightbox.appendChild(workbarout);
    	    				cenoutline.appendChild(rightbox);
    	    				
    	    				listbox.appendChild(cenoutline);
 						}
 					}
 					
 					
 					
 					
					
				
					
    				
    				
    				
 				}else if(inc==json.length || json.length === 0 || innerT[i-1] != datearr[inc]){
 					const rightbox = document.createElement('div');
    				const workbarout = document.createElement('div');
    				const a = 100/window.memLength;
    			//	console.log('실패 ');
    					for(var bo=0;bo<window.memLength;bo++){
    					const rightbox = document.createElement('div');
	    				const workbarout = document.createElement('div');
	    				const a = 100/window.memLength;
	    			//	console.log('a : ' +a )
	    				rightbox.className = 'rightbox';
	    				workbarout.className = 'work-bar';
	    				rightbox.style.width = a + '%';
	    				workbarout.style.width = a + '%';
	    				workbarout.style.border = 'none';
	    				workbarout.style.outline = 'none';
	    				workbarout.style.backgroundColor = '#ffffff';	
	    				workbarout.style.boxshadow = 'initial';
	    				
	    				rightbox.appendChild(workbarout);
	    				cenoutline.appendChild(rightbox);
	    				
	    				listbox.appendChild(cenoutline);
    					}
 				}
 			
    		 
    	 }
    	 
    	 
    	 
    	 
      });
      
      
      
      
      
      
       plus1++;
       if(rightChangeMonth < 1 || rightChangeMonth == 11){
           rightbtn.disabled = 'disabled';
       }
       leftbtn.disabled = false;
      
     //whatMonth = cenbtn.innerText[0] + cenbtn.innerText[1];
   
    }       // 여기까지 젤위에 >버튼 클릭시 작동


    
    
   // < 버튼 클릭시 클릭이벤트
   
  

   
</script>


<script>
//var arr;
var inc=0;
var thisMonth = new Date().getMonth();                      // 이번달
var innerT = new Array(lastDay);
var thisYear = new Date().getFullYear();                    // 이번년도
var firstDay = new Date(thisYear,thisMonth,1).getDate();    // 이번달 첫번째
var lastDay = new Date(thisYear,thisMonth+1,0).getDate();   // 이번달 마지막날
var inheaderleft = document.getElementById('inheader-left'); // 왼쪽 날짜 표시
var dydlf = new Date(thisYear,thisMonth,1).getDay(); // 첫달 첫날 요일
var today = new Date().getDate();
var workTime;
    
    const dayusersprofile = document.getElementById('day-users-profile');
   var plus=0;
    // 위에리스트 총 팀원 인원수뽑아오는거 
   
   var sql1;
 	
    var sql;
    
    var ma;
   //console.log('러ㅗ그인데프트 : ' + '${login.emp_dept}');
   	 workTime = function(){
   		 var en = encodeURIComponent('${login.emp_dept}');
   		 //console.log('en : ' + en);
	    	sql = thisYear+','+(thisMonth+1) +','+firstDay+','+lastDay +','+'${login.emp_dept}';
	    	//console.log(sql);
	    	console.log('이건뭐 : ' + sql);
	     
	  
			const url = '${cpath}/memz' + sql; 
			const opt = {
					method: 'GET',
					async:false,
			}
			fetch(url,opt)
				.then(resp => resp.json())
				.then(json =>{ 
					
					//console.log('memLength12 : ' + memLength);			
					
					//for(i in json){
				//		console.log('출근시간 : ' + json[i]['working_time']);
				//		console.log('퇴근시간 : ' + json[i]['off_work']);
						//console.log('json[' + i + '] : ' + json[i]['working_time']);
				//	}
					for(var i=0;i<json.length;i++){
		    			
		    			datearr[i] = json[i]['today_date'];
		    			offarr[i] = json[i]['off_work'];
		    			workarr[i] = json[i]['working_time'];
		    			enumarr[i] = json[i]['emp_num'];
		    			//console.log('arr11 : ' + datearr[i]);
		    			//console.log('arr1234 : ' + offarr[i]);
		    			//console.log('adasdsa : ' + workarr[i]);
		    			//console.log('adasdsa : ' + enumarr[i]);
		    		}
				// 시작 포문
					for(var c=firstDay;c<=lastDay;c++){
						
						
		    			switch (dydlf) {
						case 1:
							whatdydlf = '월';
							dydlf++;
							if(dydlf==7){
								dydlf=0;
							}
							break;

						case 2:
							whatdydlf = '화';
							dydlf++;
							if(dydlf==7){
								dydlf=0;
							}
							break;
						case 3:
							whatdydlf = '수';
							dydlf++;
							if(dydlf==7){
								dydlf=0;
							}
							break;
						case 4:
							whatdydlf = '목';
							dydlf++;
							if(dydlf==7){
								dydlf=0;
							}
							break;
						case 5:
							whatdydlf = '금';
							dydlf++;
							if(dydlf==7){
								dydlf=0;
							}
							break;
						case 6:
							whatdydlf = '토';
							dydlf++;
							
							if(dydlf==7){
								dydlf=0;
							}
							break;
						case 0:
							whatdydlf = '일';
							dydlf++;
							if(dydlf==7){
								dydlf=0;
							}
							
							break;
						}
		    			
		    			//console.log('day : ' + day );
		    			//console.log('sql넣을거 : ' + sql);
		    			//console.log('sadsalastday : ' + lastDay);
		    			const cenoutline = document.createElement('div');
		    			cenoutline.className = 'cen-outline';
		    			const cochild = document.createElement('div');
		    			cochild.className = 'co-child';
		    			const cochild1 = document.createElement('div');
		    			cochild1.className = 'co-child1';
		    			cochild.appendChild(cochild1);
		    			cenoutline.appendChild(cochild);
		    			listbox.appendChild(cenoutline);
		    			cochild1.innerText = thisMonth+1 + '.' + c + '(' + whatdydlf + ')';
		    			
		    			if((thisMonth+1) <10 && c < 10){
		    				innerT[c-1] = '0'+ (thisMonth+1) + '-0' + c;	
		    			}else if((thisMonth+1) <10 && i>9){
		    				innerT[c-1] = '0' + (thisMonth+1) + '-' + c;
		    			}else if((thisMonth+1) >=10 && i < 10){
		    				innerT[c-1] = (thisMonth+1) + '-0' + c;
		    			}else{
		    				innerT[c-1] = (thisMonth+1) + '-' + c;
		    			}
		    			
		    			if(json.length !=0 && innerT[c-1] === datearr[inc]){
		    				for(var z=0;z<arrEmp.length;z++){
		    					if(arrEmp[z].name === enumarr[inc]){
		    						const rightbox = document.createElement('div');
		    	    				const workbarout = document.createElement('div');
		    	    				const a = 100 / window.memLength;
		    	    				
		    	    				const wbi = document.createElement('div');
		    						wbi.className = 'wbi';
		    						const workbarin = document.createElement('div');
		    						workbarin.className = 'workbar-in';
		    						const workbartime = document.createElement('div');
		    						workbartime.className = 'workbar-time';
		    						
		    						workbarin.innerText = '근무';
		    						workbartime.innerText = workarr[inc] + '~' + offarr[inc];
		    						
		    						wbi.appendChild(workbarin);
		    						wbi.appendChild(workbartime);
		    						
		    						workbarout.className = 'work-bar';
		    						workbarout.appendChild(wbi);
		    						
		    	    				
		    	    				rightbox.className = 'rightbox';
		    	    				workbarout.className = 'work-bar';
		    	    				rightbox.style.width = a + '%';
		    	    				
		    	    				
		    	    				rightbox.appendChild(workbarout);
		    	    				cenoutline.appendChild(rightbox);
		    	    				
		    	    				listbox.appendChild(cenoutline);
		    	    				
		    	    				//console.log('inc : ' + inc);
		    	    				inc++;
		    					}else if(arrEmp[z].name != enumarr[inc]){
		    						const rightbox = document.createElement('div');
		    	    				const workbarout = document.createElement('div');
		    	    				const a = 100/window.memLength;
		    	    				console.log('a : ' +a )
		    	    				rightbox.className = 'rightbox';
		    	    				workbarout.className = 'work-bar';
		    	    				rightbox.style.width = a + '%';
		    	    				workbarout.style.width = a + '%';
		    	    				workbarout.style.border = 'none';
		    	    				workbarout.style.outline = 'none';
		    	    				workbarout.style.backgroundColor = '#ffffff';	
		    	    				workbarout.style.boxshadow = 'initial';
		    	    				
		    	    				rightbox.appendChild(workbarout);
		    	    				cenoutline.appendChild(rightbox);
		    	    				
		    	    				listbox.appendChild(cenoutline);
		    					}
		    				}
		    				
		    			}else if(inc==json.length || json.length === 0 || innerT[c-1] != datearr[inc]){
		    				for(var bo=0;bo<window.memLength;bo++){
		    					//console.log('windwo.me : ' + window.memLength);
		    				//	console.log('enum.length : ' + enumarr.length);
		    					const rightbox = document.createElement('div');
			    				const workbarout = document.createElement('div');
			    				const a = 100/window.memLength;
			    				console.log('a : ' +a )
			    				rightbox.className = 'rightbox';
			    				workbarout.className = 'work-bar';
			    				rightbox.style.width = a + '%';
			    				workbarout.style.width = a + '%';
			    				workbarout.style.border = 'none';
			    				workbarout.style.outline = 'none';
			    				workbarout.style.backgroundColor = '#ffffff';	
			    				workbarout.style.boxshadow = 'initial';
			    				
			    				rightbox.appendChild(workbarout);
			    				cenoutline.appendChild(rightbox);
			    				
			    				listbox.appendChild(cenoutline);
		    					}
		    			}
		    			
					}
		    			
		    			plus++;
		    			
		    			
		    			
		    			
		    			
	    		
				
				});
	    }
    
    	
       
    //	console.log('wiondwolnemg : ' + window.memLength);
    //	console.log('aaa : ' + arr[0]);
    	//arr = new Array[json.length];
    	//console.log('dddddddddd : ' +arr.length);
    	 const memberList = function(){
    	var memLength; // 인원수
    	var arr = new Array();
        var arrEmpnum = new Array();
        var arrProfile = new Array();
    	const url = '${cpath}/memberInfo/${login.emp_dept}';
		const opt ={
				method: 'GET',
				async: false,
		}
		fetch(url,opt)
		.then(resp => resp.json())
		.then(json =>{
			
			//console.log('dddddddddd : ' +arr.length);
			for(i in json){
				
			arr[i] = json[i]['emp_name'];
			arrEmpnum[i] = json[i]['emp_num'];
			arrProfile[i] = json[i]['emp_profile']
			//console.log(arrEmpnum[i]);
			console.log(arrProfile[i]);
				
			}
			//memLength = json.length;
			//console.log('dddddddddd : ' +arr.length);
			const de = 'default.jpg';
			for(var i=0;i<json.length;i++){
				
				//console.log('json.sd : ' +json.length);
				
	    		const a = 100 / json.length;
	    		
	    			
	    		
	    		//console.log('sadzxcxzc : ' + text);
	    		//console.log('a : ' + a);
	    		const btn = document.createElement('button');
	    		btn.className = 'dup-btn';
	    		btn.style.width = a + '%';
	    		
	    		const dupbtnol = document.createElement('div');
	    		dupbtnol.className = 'dup-btn-ol';
	    		const profilepic = document.createElement('div');
	    		profilepic.className = 'profile-pic';
	    		profilepic.style.background = "url('http://192.168.0.173/" + arrProfile[i] + "'";
	    		profilepic.style.backgroundSize = '100% 100%';
	    		
	    		//profilepic.style.backgroundColor = 'red';
	    		//console.log('de : ' + de);
	    		const profilename = document.createElement('div');
	    		profilename.className = 'profile-name';
	    	//	console.log('arr[i]zxczxc : ' + arr[i]);
	    		profilename.innerText = arr[i];
	    		dupbtnol.appendChild(profilepic);
	    		dupbtnol.appendChild(profilename);
	    		btn.appendChild(dupbtnol);
	    		
	    		
	    		//console.log(btn.style.width);
	    		dayusersprofile.appendChild(btn);
	    		}
	    		
	    		
	    		
	    		plus=0;
			
	    	
	    		//console.log('emp_num : ' + arrEmpnum);
	    			
	    		
	    		//for(var i=0;i<arr.length;i++){
	    		//	arr1[i] = arr[i];
	    		//	arrEmpnum1[i] = arrEmpnum[i]; 
	    			//console.log('zz : ' + arr1[i]);
	    		//}
		});
    }
	memberList();
	workTime();
	//console.log('11111 : ' + arr1[0]);
	
	
	const myschbtn = document.getElementById('mysch-btn');
	myschbtn.onclick = function(){
		location.href= '${cpath}/workholi';
	}
 	 

	//console.log('tq : ' + arr1.length);
   
 </script>

</html>
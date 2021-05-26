<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    
    <style>
    	.out-div{
   		    min-width: 960px;
		    max-width: 1200px;
		    margin-left: auto;
		    margin-right: auto;
		    padding: 0px 36px;
		    box-sizing: border-box;
    		
    	}
        .out-div1{

            width: 1200px;
            height: 950px;
           
            margin-left: auto;
            margin-right: auto;
        }
        .top-div{
         
            width: 1128px;
            height: 284px;
           border: 1px solid rgb(248 248 249);
            margin-left: auto;
            margin-right: auto;
            margin-top: 40px;
            border-radius: 12px;
            background-color: #ffffff;
            box-shadow: rgb(20 20 20 / 2%) 2px 8px 12px 0px, rgb(20 20 20 / 2%) 0px 1px 3px 0px;
            
        }
        .top-div-in{
            width: 1048px;
            height: 180px;
           
            display: flex;
            margin-top: 52px;
            margin-left: auto;
            margin-right: auto;
        }
        .top-left{
            width: 670px;
            height: inherit;
           
            
        }
        .top-cen{
            width: 87px;
            height: inherit;
            
        }
        .top-right{
            width: 291px;
            height: inherit;
            
        }
        .t-l-t{
            display: flex;
            width: inherit;
            height: 124px;
            
        }
        .t-l-b{
            width: inherit;
            height: 16px;
            
            margin-top: 20px;
            border-radius: 5px;
            background-color: rgba(99, 114, 131, 0.1);
        }
        .all-time-work{
            width: 286px;
            height: 107px;
            
            margin-top: auto;
            margin-bottom: auto;
            
        }
        .chd{
            width: inherit;
            height: 44px;
            
            color: rgb(139, 152, 167);
            font-size: 16px;
            font-weight: 800;
        }
        .tlrks{
            width: inherit;
            height: 60px;
            
            display: flex;
        }
        .tlrks-l{
            width: 100px;
            height: inherit;
            
            color: rgb(139, 152, 167);
            font-size: 40px;
            font-weight: 400;
        }
        .tlrks-r{
            width: 30px;
            height: 22px;
             
            margin-top: 27px;
            margin-left: 6px;
            font-size: 15px;
            color: rgb(139, 152, 167);
            font-weight: 400;
        }
        .right-top-w{
            width: 90px;
            height: 30px;
            
        }
        .rmsan{
            width: 280px;
            height: 107px;
            margin-top: auto;
            margin-bottom: auto;
            
        }
        .rmsan-l{
            width: 140px;
            height: inherit;
          
            display: flex;
        }
        .rmsan-r{
            width: 140px;
            height: inherit;
       
            display: flex;	
        }
        .rmsan-l-im{
            width: 32px;
            height: 32px;
           
            margin-top: auto;
            margin-bottom: auto;
        }
        .rmsan-l-im > img,.rmsan-r-im > img, .dbrmq-im > img{
            width: 32px;
            height: 32px;
        }
        .rmsan-l-w{
            width: 56px;
            height: 33px;
         
            margin-top: auto;
            margin-bottom: auto;
            margin-left: 10px;
            color: rgb(31, 46, 61);
            font-size: 22px;
            font-weight: 500;
        }
        .rmsan-r-im,.dbrmq-im{
            width: 32px;
            height: 32px;
         
            margin-top: auto;
            margin-bottom: auto;
        }
        .rmsan-r-w,.dbrmq-w{
            width: 56px;
            height: 33px;
            
            margin-top: auto;
            margin-bottom: auto;
            margin-left: 10px;
            color: rgb(139, 152, 167);
            font-size: 22px;
            font-weight: 500;
            
        }
        .right-top-outl{
            width: inherit;
            height: 160px;
            
            margin-top: 10px;
            
        }
        .top-right-w{
            width: inherit;
            height: 44px;
          
            color: rgb(139, 152, 167);
            font-size: 16px;
            font-weight: 800;
        }
        .top-right-c{
            width: inherit;
            height: 60px;
            
            display: flex;
        }
        .t-r-b{
            width: inherit;
            height: 16px;
            
            margin-top: 30px;
            border-radius: 5px;
            background-color: rgba(99, 114, 131, 0.1);
        }
        .body-div{
            width: 1128px;
            height: 500px;
            
            margin-left: auto;
            margin-right: auto;
            margin-top: 40px;
            border-radius: 12px;
            background-color: #ffffff;
            box-shadow: rgb(20 20 20 / 2%) 2px 8px 12px 0px, rgb(20 20 20 / 2%) 0px 1px 3px 0px;
        }
        .body-d1{
            width: inherit;
            height: 66px;
            color: rgb(99, 114, 131);
            font-size: 16px;
            box-sizing: border-box;
            font-weight: 400;
            border: 1px solid rgb(248 248 249);
        }
        .body-d1-w{
            width: inherit;
            height: 38px;
           
            margin-top: 20px;
            
        }
        .body-d1-wd{
            width: inherit;
            height: 18px;
            margin-left: 35px;
            margin-top: 10px;
           
        }
        .body-d2{
            width: inherit;
            height: 60px;
            border: 1px solid rgb(248 248 249);
        }
        .body-d2-d{
            width: 1070px;
            height: 48px;
           
            margin: auto;
            margin-top: 6px;
            margin-bottom: 6px;
            display: flex;
        }
        .body-date{
            width: 250px;
            height: 30px;
            
            margin-top: auto;
            margin-bottom: auto;
            color: rgb(31, 46, 61);
            font-size: 18px;
            font-weight: 550;
        }
        .body-date-work{
            width: 780px;
            height: 30px;
            
            margin-top: auto;
            margin-bottom: auto;
            margin-right: auto;
            margin-left: auto;
            display: flex;
        }
        .body-date-work-i{
            width: 30px;
            height: inherit;
            
        }
        .body-date-work-i > img{
        	width: 30px;
        	height: inherit;
        }
        
        .body-date-work-rmsan{
            width: 34px;
            height: 21px;
            margin-right: 20px;
            margin-top: auto;
            margin-bottom: auto;
            margin-left: 20px;
            border-radius: 6px;
            box-shadow: rgb(99 114 131 / 24%) 0px 0px 0px 1px inset, rgb(0 0 0 / 2%) 0px 1px 2px;
        }
        .body-date-work-w,.body-date-work-w1,.body-date-work-w2,.body-date-work-w3,.body-date-work-w4{
            width: 24px;
            margin-left: auto;
            margin-right: auto;
            
            height: 17px;
           margin-top: 2px;
           margin-bottom: 2px;
            overflow: hidden;
            color: rgb(99, 114, 131);
            font-size: 12px;
            font-weight: 400;
            
        }
        .work-time,.work-time2,.work-time3,.work-time4,.work-time5{
            width: 500px;
            height: inherit;
            
            margin-top: 3px;
            
            color: rgb(31, 46, 61);
            font-size: 18px;
            font-weight: 550;	
        }
        .work-time1{
            width: 500px;
            height: inherit;
            margin-left: 75px;
            margin-top: 3px;
           
            color: rgb(31, 46, 61);
            font-size: 18px;
            font-weight: 550;
        }
        .m1-box{
        	width: 800px;
        	height: 100px;
        	position: relative;
        	
        }
        #m1{
        	width: 180px;
        	height: 55px;
        	
        	margin-top: 10px;
        	position: absolute;
        	background: rgb(31, 46, 61);
        	color: #fff;
        	border-radius: 10px;
        	font-size: 12px;
        	font-weight: bold;
        	box-shadow: 2px 2px 3px #d1d1d1;
        	z-index: 999;
        }
        #m1:after{
        	
       	 bottom: 100%;
       	 transform: translate(-1px, 3px);
        left: -980px;
        border: solid transparent;
        content: " ";
        height: 0;
        width: 0;
        position: absolute;
        pointer-events: none;
        border-color: rgba(56, 77, 157, 0);
        border-bottom-color: rgb(31, 46, 61);
        border-width: 11px;
        margin-left: 999px;
    }
    #m1-w{
    	width: 140px;
    	height: 50px;
    	 
    	 margin-right: auto;
    	 margin-left: auto;
    	 margin-top: 10px;
    	  margin-bottom: 10px;
    }
    #m2{
    	width: 150px;
        	height: 110px;
        	margin-left: -430px;
        	margin-top: 10px;
        	position: absolute;
        	background: rgb(31, 46, 61);
        	color: #fff;
        	border-radius: 10px;
        	font-size: 12px;
        	font-weight: bold;
        	box-shadow: 2px 2px 3px #d1d1d1;
        	z-index: 999;
        	left: 710px;
    }
    #m2:after{
    	 bottom: 100%;
       	 transform: translate(-1px, 3px);
        left: -980px;
        border: solid transparent;
       	 content: " ";
        height: 0;
        width: 0;
        position: absolute;
        pointer-events: none;
        border-color: rgba(56, 77, 157, 0);
        border-bottom-color: rgb(31, 46, 61);
        border-width: 11px;
        margin-left: 999px;
    }
    #m2-w1{
    	width: 130px;
    	height: 20px;
    	
    	  margin-right: auto;
    	 margin-left: auto;
    	 margin-top: 10px;
    	 color: #7c848d;
    	 font-weight: bold;
    	 font-size: 12px;
    }
    #m2-w2{
    	width: 130px;
    	height: 20px;
    	
    	  margin-right: auto;
    	 margin-left: auto;
    	 margin-top: 2px;
    	  color: #ffffff;
    	  font-size: 12px;
    	  font-weight: bold;
    }
    #m2-w3{
    	width: 130px;
    	 height: 40px;
    	 
    	  margin-right: auto;
    	 margin-left: auto;
    	 margin-top: 10px;
    	 color: #7c848d;
    	  font-size: 12px;
    	  font-weight: bold;
    }
    .hidden{
    	display: none;
    }
    #m3{
    		width: 180px;
        	height: 110px;
        	margin-left: -430px;
        	margin-top: 10px;
        	position: absolute;
        	background: rgb(31, 46, 61);
        	color: #fff;
        	border-radius: 10px;
        	font-size: 12px;
        	font-weight: bold;
        	box-shadow: 2px 2px 3px #d1d1d1;
        	z-index: 999;
        	left: 830px;
    }
    #m3:after{
    	 bottom: 100%;
       	 transform: translate(-1px, 3px);
        left: -920px;
        border: solid transparent;
       	 content: " ";
        height: 0;
        width: 0;
        position: absolute;
        pointer-events: none;
        border-color: rgba(56, 77, 157, 0);
        border-bottom-color: rgb(31, 46, 61);
        border-width: 11px;
       	 margin-left: 999px;
    }
    #m3-w1{
    	width: 150px;
    	height: 20px;
    	
    	  margin-right: auto;
    	 margin-left: auto;
    	 margin-top: 10px;
    	 color: #7c848d;
    	 font-weight: bold;
    	 font-size: 12px;
    }
    #m3-w2{
    	width: 150px;
    	height: 20px;
    	
    	  margin-right: auto;
    	 margin-left: auto;
    	 margin-top: 2px;
    	  color: #ffffff;
    	  font-size: 12px;
    	  font-weight: bold;
    }
    #m3-w3{
    	width: 150px;
    	 height: 40px;
    	 
    	  margin-right: auto;
    	 margin-left: auto;
    	 margin-top: 10px;
    	 color: #7c848d;
    	  font-size: 12px;
    	  font-weight: bold;
    }

    </style>
    
<main>

<script>
 gnbHandler(document.getElementById('work'));

</script>


       <div class="out-div" id="out-div">
            <div class="out-div1">
                <div class="top-div">
                
                    <div class="top-div-in">
                        <div class="top-left">
                            <div class="t-l-t">
                                <div class="all-time-work">
                                    <div class="chd">
                                        총 근무 시간
                                    </div>
                                    <div class="tlrks">
                                        <div class="tlrks-l" id="chdrmsan" onmouseover="mover()" onmouseout="mout()">
                                            
                                        </div>
                                        <div class="tlrks-r">
                                            시간
                                        </div>
                                    </div>
                                    
                                   <div class="m1-box">
                                     <div id="m1" class="m1 hidden">
                                    	<div id="m1-w">
                                    	
                                    	</div>
                                    </div>
                                   
                                    
                                    <div id="m2" class="m2 hidden">
                                    	<div id="m2-w1">
                                    		기본근무
                                    	</div>
                                    	<div id="m2-w2">
                                    	
                                    	</div>
                                    	<div id="m2-w3">
                                    		기본급에 해당하는 근무 시간입니다.
                                    	</div>
                                    </div>
                                   
                                     <div id="m3" class="m3 hidden">
                                    	<div id="m3-w1">
                                    		초과근무
                                    	</div>
                                    	<div id="m3-w2">
                                    		
                                    	</div>
                                    	<div id="m3-w3">
                                    		초과 수당이 발생할 수 있는 근무시간입니다.
                                    	</div>
                                    </div>
                                    </div>
                                </div>
                                <div class="rmsan">
                                    <div class="chd">
                                        근무 상세
                                    </div>
                                    <div class="tlrks">
                                        <div class="rmsan-l" id="rmsanhover" onmouseover="mover1()" onmouseout="mout1()">
                                            <div class="rmsan-l-im">
                                                <img src="${cpath }/img/workholi/laptop.png">
                                            </div>
                                            <div class="rmsan-l-w" id="chdrmsan1">
                                                
                                            </div>
                                        </div>
                                        <div class="rmsan-r" onmouseover="mover2()" onmouseout="mout2()">
                                            <div class="rmsan-r-im">
                                                <img src="${cpath }/img/workholi/fire.png">
                                            </div>
                                            <div class="rmsan-r-w" id="chrhkrmsan">
                                               	 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="t-l-b">

                            </div>
                        </div>
                        <div class="top-cen">

                        </div>
                        <div class="top-right">
                            <div class="right-top-outl">
                                <div class="top-right-w">
                                    유급 휴가
                                </div>
                                <div class="top-right-c">
                                    <div class="dbrmq-im">
                                        <img src="${cpath }/img/workholi/travel-holiday-vacation.png">
                                    </div>
                                    <div class="dbrmq-w">
                                        없음
                                    </div>
                                </div>
                                <div class="top-right-b">
                                    <div class="t-r-b">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="body-div">
                    <div class="body-d1">
                        <div class="body-d1-w">
                            <div class="body-d1-wd">
                                이번 주 근무
                            </div>
                        </div>
                    </div>

                    <div class="body-d2">
                        <div class="body-d2-d">
                            <div class="body-date" id="date1">
                                
                            </div>
                            <div class="body-date-work">
                                <div class="body-date-work-i">
                                    <img src="${cpath }/img/workholi/laptop.png">
                                </div>
                                <div class="body-date-work-rmsan">
                                    <div class="body-date-work-w"></div>
                                </div>
                                <div class="work-time">
                                    	
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="body-d2">
                        <div class="body-d2-d">
                            <div class="body-date" id="date2">
                                
                            </div>
                            <div class="body-date-work">
                                <div class="body-date-work-i">
                                    <img src="${cpath }/img/workholi/laptop.png">
                                </div>
                                <div class="body-date-work-rmsan">
                                    <div class="body-date-work-w1"></div>
                                </div>
                                <div class="work-time2">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="body-d2">
                        <div class="body-d2-d">
                            <div class="body-date" id="date3">

                            </div>
                            <div class="body-date-work">
                                <div class="body-date-work-i">
                                    <img src="${cpath }/img/workholi/laptop.png">
                                </div>
                                <div class="body-date-work-rmsan">
                                    <div class="body-date-work-w2"></div>
                                </div>
                                <div class="work-time3">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="body-d2">
                        <div class="body-d2-d">
                            <div class="body-date" id="date4">
                                
                            </div>
                            <div class="body-date-work">
                                <div class="body-date-work-i">
                                    <img src="${cpath }/img/workholi/laptop.png">
                                </div>  
                                <div class="body-date-work-rmsan">
                                    <div class="body-date-work-w3"></div>
                                </div>
                                <div class="work-time4">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="body-d2">
                        <div class="body-d2-d">
                            <div class="body-date" id="date5">
                                
                            </div>
                            <div class="body-date-work">
                                <div class="body-date-work-i">
                                    <img src="${cpath }/img/workholi/laptop.png">
                                </div>
                                <div class="body-date-work-rmsan">
                                    <div class="body-date-work-w4"></div>
                                </div>
                                <div class="work-time5">
                                 
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="body-d2">
                        <div class="body-d2-d">
                            <div class="body-date" id="date6">
                                
                            </div>
                            <div class="body-date-work">
                                <div class="body-date-work-i">
                                    <img src="${cpath }/img/workholi/travel-holiday-vacation.png">
                                </div>
                                
                                <div class="work-time1">
                                    쉬는 날
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="body-d2">
                        <div class="body-d2-d">
                            <div class="body-date" id="date7">
                                
                            </div>
                            <div class="body-date-work">
                                <div class="body-date-work-i">
                                    <img src="${cpath }/img/workholi/travel-holiday-vacation.png">
                                </div>
                                
                                <div class="work-time1">
                                    쉬는 날
                                </div>
                            </div>
                        </div>
                    </div>  
                </div>

            </div>
      
            
      
        </div>     	
       
       

</main>
    
    </div> <!-- /root -->
    
    <script>
        var currentDay = new Date();	// 오늘날짜
        var month = currentDay.getMonth() + 1;
        var date = currentDay.getDate(); // 16일 화요일이니까 15일 월요일부터 시작할 경우
        var getDay = currentDay.getDay(); // 요일 0 -> 일 1->월 2->화
        var year = new Date().getFullYear();
        var sql;
       // console.log('year : ' + year);
       
        var lastDay;
        var firstDay;
       
        
        
      
       // console.log(currentDay);
       // console.log(getDay);
       // console.log(month);
       // console.log(date);
        
        var day = '';
        var thisweek = [];
        if(getDay == 1){    // 월요일
        	
            date = date;
            getDay = getDay;
            for(var i=0;i<7;i++){
            if(getDay == '0') day = '(일)';
            else if(getDay == '1') day='(월)';
            else if(getDay == '2') day='(화)';
            else if(getDay == '3') day='(수)';
            else if(getDay == '4') day='(목)';
            else if(getDay == '5') day='(금)';
            else day='(토)';
            thisweek[i] = month + '.' + date + day;
            date++;
            getDay++;
            if(getDay == 7){
                getDay = 0;
                }
            }
        }

        else if(getDay == 2){   // 화요일
            date = date -1;
            getDay = getDay -1;
            for(var i=0;i<7;i++){
            if(getDay == '0') day = '(일)';
            else if(getDay == '1') day='(월)';
            else if(getDay == '2') day='(화)';
            else if(getDay == '3') day='(수)';
            else if(getDay == '4') day='(목)';
            else if(getDay == '5') day='(금)';
            else day='(토)';
            thisweek[i] = month + '.' + date + day;
            date++;
            getDay++;
            if(getDay == 7){
                getDay = 0;
                }
            }
        }else if(getDay == 3){  // 수요일  // date 17
            date = date -2;
            getDay = getDay -2;
            for(var i=0;i<7;i++){
                if(getDay == '0') day = '(일)';
                else if(getDay == '1') day='(월)';
                else if(getDay == '2') day='(화)';
                else if(getDay == '3') day='(수)';
                else if(getDay == '4') day='(목)';
                else if(getDay == '5') day='(금)';
                else day='(토)';
                thisweek[i] = month + '.' + date + day;
                date++;
                getDay++;
                if(getDay == 7){
                    getDay = 0;
                    }
                }
        }else if(getDay == 4){  // 목요일
            date = date -3;
            getDay = getDay -3;
            for(var i=0;i<7;i++){
                if(getDay == '0') day = '(일)';
                else if(getDay == '1') day='(월)';
                else if(getDay == '2') day='(화)';
                else if(getDay == '3') day='(수)';
                else if(getDay == '4') day='(목)';
                else if(getDay == '5') day='(금)';
                else day='(토)';
                thisweek[i] = month + '.' + date + day;
                date++;
                getDay++;
                if(getDay == 7){
                    getDay = 0;
                    }
                }
        }else if(getDay == 5){  // 금요일
            date = date -4;
            getDay = getDay -4;
            for(var i=0;i<7;i++){
                if(getDay == '0') day = '(일)';
                else if(getDay == '1') day='(월)';
                else if(getDay == '2') day='(화)';
                else if(getDay == '3') day='(수)';
                else if(getDay == '4') day='(목)';
                else if(getDay == '5') day='(금)';
                else day='(토)';
                thisweek[i] = month + '.' + date + day;
                date++;
                getDay++;
                if(getDay == 7){
                    getDay = 0;
                    }
                }
        }else if(getDay == 6){  // 토요일
            date = date -5;
            getDay = getDay -5;
            for(var i=0;i<7;i++){
                if(getDay == '0') day = '(일)';
                else if(getDay == '1') day='(월)';
                else if(getDay == '2') day='(화)';
                else if(getDay == '3') day='(수)';
                else if(getDay == '4') day='(목)';
                else if(getDay == '5') day='(금)';
                else day='(토)';
                thisweek[i] = month + '.' + date + day;
                date++;
                getDay++;
                if(getDay == 7){
                    getDay = 0;
                    }
                }
        }else if(getDay == 0){  // 일요일
            date = date -6;
            getDay = getDay -6;
            for(var i=0;i<7;i++){
                if(getDay == '0') day = '(일)';
                else if(getDay == '1') day='(월)';
                else if(getDay == '2') day='(화)';
                else if(getDay == '3') day='(수)';
                else if(getDay == '4') day='(목)';
                else if(getDay == '5') day='(금)';
                else day='(토)';
                thisweek[i] = month + '.' + date + day;
                
                date++;
                getDay++;
                if(getDay == 7){
                    getDay = 0;
                    }
                }
        }

        

        

        

        
        const date1 = document.getElementById('date1');
        const date2 = document.getElementById('date2');
        const date3 = document.getElementById('date3');
        const date4 = document.getElementById('date4');
        const date5 = document.getElementById('date5');
        const date6 = document.getElementById('date6');
        const date7 = document.getElementById('date7');
        const chdrmsan = document.getElementById('chdrmsan');
        const chdrmsan1 = document.getElementById('chdrmsan1');
        const chrhkrmsan = document.getElementById('chrhkrmsan');
        const m1 = document.getElementById('m1-w');
        const m2 = document.getElementById('m2-w2');
        const m3 = document.getElementById('m3-w2');

        date1.innerText = thisweek[0];  
        date2.innerText = thisweek[1];
        date3.innerText = thisweek[2];
        date4.innerText = thisweek[3];
        date5.innerText = thisweek[4];
        date6.innerText = thisweek[5];
        date7.innerText = thisweek[6];
       // console.log('firs11 : ' + firstDay );
       // console.log('last11 : ' + lastDay );
      //  sql = year + ',' + month + ',' + date + ',' + ${login.emp_num};
      //  console.log('sql : ' + sql);
      //  console.log('date1 : ' + date1.innerText);
        firstDay = thisweek[0].split('.');
        lastDay = thisweek[6].split('.');
       // console.log('firs111 : ' + firstDay[1]);
        firstDay = firstDay[1].split('(');
        lastDay = lastDay[1].split('(');
      //  console.log('la : ' + lastDay[0]);
        sql = year + ',' + month + ',' + firstDay[0] + ',' + lastDay[0] + ',' + ${login.emp_num};
      //  console.log('sql : ' + sql);
     //   console.log('date3 : ' + date3.innerText);
      //  console.log('date4 : ' + date4.innerText);
      //
    //  console.log('date5 : ' + date5.innerText);
      var workarr = new Array();
      var offarr = new Array();
      	const weekSchedule = function(){
      		
      		const worktime = document.querySelector('.work-time');
      		const worktime2 = document.querySelector('.work-time2');
      		const worktime3 = document.querySelector('.work-time3');
      		const worktime4 = document.querySelector('.work-time4');
      		const worktime5 = document.querySelector('.work-time5');
      		
      		const workw = document.querySelector('.body-date-work-w');
      		const workw1 = document.querySelector('.body-date-work-w1');
      		const workw2 = document.querySelector('.body-date-work-w2');
      		const workw3 = document.querySelector('.body-date-work-w3');
      		const workw4 = document.querySelector('.body-date-work-w4');
      		
      		const url = '${cpath}/weekSch/' + sql;
      		const opt = {
      				method: 'GET',
      		}
      		fetch(url,opt)
      		.then(resp=>resp.json())
      		.then(json=>{
      			console.log(json);
      			for(var i=0;i<json.length;i++){
      				workarr[i] = json[i]['working_time'].substring(0,5);
      				offarr[i] = json[i]['off_work'].substring(0,5);
      			
      			}
      		
      			if(workarr[0] == null){
      				workw.innerText = '예정';
      				workw1.innerText = '예정';
      				workw2.innerText = '예정';
      				workw3.innerText = '예정';
      				workw4.innerText = '예정';
      				
      				worktime.innerText = '09:00~18:00';
      				worktime2.innerText = '09:00~18:00';
      				worktime3.innerText = '09:00~18:00';
      				worktime4.innerText = '09:00~18:00';
      				worktime5.innerText = '09:00~18:00';
      				
      				worktime.style.color = '#8B98A7';
      				worktime2.style.color = '#8B98A7';
      				worktime3.style.color = '#8B98A7';
      				worktime4.style.color = '#8B98A7';
      				worktime5.style.color = '#8B98A7';
      			}else if(workarr[1] == null){
      				workw.innerText = '근무';
      				workw1.innerText = '예정';
          			workw2.innerText = '예정';
          			workw3.innerText = '예정';
          			workw4.innerText = '예정';
      				worktime.innerText = workarr[0] + '~' + offarr[0];
      				worktime2.innerText = '09:00~18:00';
      				worktime3.innerText = '09:00~18:00';
      				worktime4.innerText = '09:00~18:00';
      				worktime5.innerText = '09:00~18:00';
      				
      				worktime2.style.color = '#8B98A7';
      				worktime3.style.color = '#8B98A7';
      				worktime4.style.color = '#8B98A7';
      				worktime5.style.color = '#8B98A7';
      			}else if(workarr[2] == null){
      				workw.innerText = '근무';
      				workw1.innerText = '근무';
          			workw2.innerText = '예정';
          			workw3.innerText = '예정';
          			workw4.innerText = '예정';
      				
      				worktime.innerText = workarr[0] + '~' + offarr[0];
          			worktime2.innerText = workarr[1] + '~' + offarr[1];
          			worktime3.innerText = '09:00~18:00';
      				worktime4.innerText = '09:00~18:00';
      				worktime5.innerText = '09:00~18:00';
      				
      				
      				worktime3.style.color = '#8B98A7';
      				worktime4.style.color = '#8B98A7';
      				worktime5.style.color = '#8B98A7';
      			}else if(workarr[3] == null){
      				
      				workw.innerText = '근무';
      				workw1.innerText = '근무';
          			workw2.innerText = '근무';
          			workw3.innerText = '예정';
          			workw4.innerText = '예정';
      				
      				worktime.innerText = workarr[0] + '~' + offarr[0];
          			worktime2.innerText = workarr[1] + '~' + offarr[1];
          			worktime3.innerText = workarr[2] + '~' + offarr[2];
          			worktime4.innerText = '09:00~18:00';
      				worktime5.innerText = '09:00~18:00';
      				
      				
      				worktime4.style.color = '#8B98A7';
      				worktime5.style.color = '#8B98A7';
          			
      			}else if(workarr[4] == null){
      				workw.innerText = '근무';
      				workw1.innerText = '근무';
          			workw2.innerText = '근무';
          			workw3.innerText = '근무';
          			workw4.innerText = '예정';
      				
      				worktime.innerText = workarr[0] + '~' + offarr[0];
          			worktime2.innerText = workarr[1] + '~' + offarr[1];
          			worktime3.innerText = workarr[2] + '~' + offarr[2];
          			worktime4.innerText = workarr[3] + '~' + offarr[3];
          			worktime5.innerText = '09:00~18:00';
          			
          			
      				worktime5.style.color = '#8B98A7';
      			}else{
      				workw.innerText = '근무';
      				workw1.innerText = '근무';
          			workw2.innerText = '근무';
          			workw3.innerText = '근무';
          			workw4.innerText = '근무';
      				
      				worktime.innerText = workarr[0] + '~' + offarr[0];
          			worktime2.innerText = workarr[1] + '~' + offarr[1];
          			worktime3.innerText = workarr[2] + '~' + offarr[2];
          			worktime4.innerText = workarr[3] + '~' + offarr[3];
          			worktime5.innerText = workarr[4] + '~' + offarr[4];
      			}
      			
      		});
      	}
      
        weekSchedule();
        const allWorkHandler = function(){
        	
        	const url = '${cpath}/allWork/' + sql;
        	const opt = {
        			method: 'GET',
        	}
        	
        	fetch(url,opt)
        	.then(resp => resp.text())
        	.then(text =>{
        		
        		
        		//console.log(text);
        		if(text != '0'){
        			chdrmsan.style.color = 'black';
        			chdrmsan1.style.color = 'black';
        		}else{
        			chdrmsan1.style.color = 'rgb(139,152,167)';
        		}
        		chdrmsan.innerText = text;
        		//chdrmsan1.style.color = 'rgb(139,152,167)';
        		chdrmsan1.innerText = text;
        		
        		//m1.innerText = '이번주 총 근무 시간은 ' + text + ' 시간입니다.';
        			
        		m1.innerText = '이번주 총 근무 시간은 ' + text + ' 시간입니다.';
        		m2.innerText = text + '시간';
        		
        		        		
        	});
        	
        	
        }
        
        const exceed = function(){
        	const url = '${cpath}/exceed/' + sql;
        	const opt = {
        			method: 'GET',
        	}
        	fetch(url,opt)
        	.then(resp=>resp.text())
        	.then(text=>{
        		//console.log('exceed text : ' + text);
        		if(text === '0'){
        			m3.innerText = '없음';
        			chrhkrmsan.innerText = '없음';
        		}else{
        			m3.innerText = text + ' 시간';
        			chrhkrmsan.innerText = text;
        		}
        	});
        	//console.log('exceedsql : ' + sql);
        }
       	exceed();
        function mover(){	
        	var m1 = document.getElementById('m1');
        	m1.classList.remove('hidden');
        	
        }
        function mout(){
        	var m1 = document.getElementById('m1');
        	
        	m1.classList.add('hidden');
        	
        }
        function mover1(){
        	var m2 = document.getElementById('m2');
        	m2.classList.remove('hidden');
        }
        function mout1(){
        	var m2 = document.getElementById('m2');
        	m2.classList.add('hidden');
        }
        function mover2(){
        	var m3 = document.getElementById('m3');
        	m3.classList.remove('hidden');
        }
        function mout2(){
        	var m3 = document.getElementById('m3');
        	m3.classList.add('hidden');
        }
        
        
       allWorkHandler();
        
    </script>

   
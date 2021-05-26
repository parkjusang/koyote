let cpath = null;

function setCpath(param) {
	cpath = param;
}


// menu list 저장
let menu_list;
const setGnbList = function(param) {
	menu_list = param.children;
}

// 페이지에 따른 버튼 활성화 함수
// gnb_on : header 색깔 변경을 위한 class
// header_div : gnb_bot, header 메뉴별 id
const gnbHandler = function(param) {

	for(let i = 0; i < menu_list.length; i++ ) {
		let id = menu_list[i].id
		document.getElementById(id).classList.remove('gnb_on');
		
		const header_div = document.getElementById('header_' + id);
		if(header_div != null) {
			header_div.style.display = 'none';	
		}
	}
	param.classList.add('gnb_on');
	
	document.getElementById('header_' + param.id).style.display = 'flex';
}


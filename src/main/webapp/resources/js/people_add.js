let cpath = null;

function setCpath(param) {
	cpath = param;
}

// 직급 목록 가져와서 div 반환
const convertPosJsonToDiv = function(json) {
	const box = document.createElement('div');
	box.className = 'box_dropdown';
	
	for(let i = 0; i < json.length; i++) {
		const txt = document.createElement('div');
		txt.className = 'txt_menu';
		txt.append(json[i]['POS_NAME']);
		
		const menu = document.createElement('div');
		menu.className = 'box_menu';
		menu.appendChild(txt);
		
		box.appendChild(menu);
	}
		
	return box;
}
// 직급 목록을 ajax로 요청하는 함수
const ajaxPosSelectList = function() {
	const url = cpath + '/position';
	const opt = {
		method: 'GET',
	}
	fetch(url, opt)
	.then(resp => resp.json())
	.then(json => {
		const dropdownDiv = document.getElementById('dropdown_pos');
		dropdownDiv.appendChild(convertPosJsonToDiv(json));
		
	});
	
}

// 부서 목록 가져와서 div 반환
const convertDeptJsonToDiv = function(json) {
	
	const box = document.createElement('div');
	box.className = 'box_dropdown';
	
	for(let i = 0; i < json.length; i++) {
		const txt = document.createElement('div');
		txt.className = 'txt_menu';
		txt.append(json[i]['DEPT_NAME']);
		
		const menu = document.createElement('div');
		menu.className = 'box_menu';
		menu.appendChild(txt);
		
		box.appendChild(menu);
	}
	
	return box;
}

// 부서 목록을 ajax로 요청하는 함수
const ajaxDeptSelectList = function() {
	const url = cpath + '/department';
	const opt = {
			method: 'GET',
	}
	fetch(url, opt)
	.then(resp => resp.json())
	.then(json => {
		const dropdownDiv = document.getElementById('dropdown_dept');
		dropdownDiv.appendChild(convertDeptJsonToDiv(json));
		
	});
	
}

// 은행 목록 가져와서 div 반환
const convertBankJsonToDiv = function(json) {
	
	const box = document.createElement('div');
	box.className = 'box_dropdown';
	
	for(let i = 0; i < json.length; i++) {
		const txt = document.createElement('div');
		txt.className = 'txt_menu';
		txt.append(json[i]['BANK_NAME']);
		
		const menu = document.createElement('div');
		menu.className = 'box_menu';
		menu.appendChild(txt);
		
		box.appendChild(menu);
	}
	
	return box;
}

// 은행 목록을 ajax로 요청하는 함수
const ajaxBankSelectList = function() {
	const url = cpath + '/bank';
	const opt = {
			method: 'GET',
	}
	fetch(url, opt)
	.then(resp => resp.json())
	.then(json => {
		const dropdownDiv = document.getElementById('dropdown_bank');
		dropdownDiv.appendChild(convertBankJsonToDiv(json));
		
	});
	
}

// submit 함수
const insertSubmit = function(event) {	

	const insertForm = document.getElementById('insertForm');
	const formData = new FormData(insertForm);
	const ob = {};
	for (const [key, value] of formData.entries()) {
		ob[key] = value;
	}
	
	const answer = confirm('추가하시겠습니까?');
	
//	console.log(ob);
	if(answer) {
		const url = cpath + '/employee';
		const opt = {
			method: 'POST',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type': 'application/json'
			}
		};
		fetch(url, opt)
		.then(resp => resp.text())
		.then(text => {
			console.log("text : ", text);
			if(text == 1) {
				alert('성공적으로 등록되었습니다 !!');
				location.replace(cpath + "/people/hr");
			}
			else if(text == -99099) {
				alert('등록되었지만, email 주소가 올바르지 않습니다.');
				location.replace(cpath + "/people/hr");
				console.log(cpath + "/people/hr");
				console.log(cpath + "/people/hr");
			}
			else {
				alert('등록 실패 !!');
			}
		});
	}
}


// 메일 보내기
const sendMailHandler = function(event) {
	event.preventDefault();
	const email = event.target.querySelector('input[type="email"]');
	
	const url = cpath + '/mailto/' + email.value + '/';
	const opt = {
			method: 'GET',
	}
	
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		console.log(text);
		console.log(text.length == 128);
		
		if(text.length == 128) {
			authMailForm.classList.remove('hidden');
			sendMailMsg.innerText = '입력한 이메일로 인증번호를 전송했습니다';
			sendMailMsg.style.color = 'blue';
			sendMailMsg.style.fontWeight = 'bold';
		}
		else {
			sendMailMsg.innerText = '이메일을 확인하지 못했습니다';
			sendMailMsg.style.color = 'red';
			sendMailMsg.style.fontWeight = 'bold';
		}
	});
}








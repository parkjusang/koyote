
// 부서 목록 가져와서 ul 반환
const convertDeptJsonToUl = function(json) {
	
	const ul = document.createElement('ul');
	ul.className = 'list_item';
	
	for(let i = 0; i < json.length; i++) {
		const dot = document.createElement('div');
		dot.className = 'dot';
		
		const icon = document.createElement('div');
		icon.className = 'icon_inner';
		icon.appendChild(dot);
		
		const div = document.createElement('div');
		div.appendChild(icon);		
		div.append(json[i]['DEPT_NAME']);
		
		const content = document.createElement('div');
		content.className = 'content_inner';
		content.appendChild(div);
		
		const head = document.createElement('div');
		head.className = 'head_inner';
		head.id = 'submenu-' + json[i]['DEPT_NO'];
		head.appendChild(content);
		
		const li = document.createElement('li');
		li.className = 'item_inner';
		li.appendChild(head);
		
		ul.appendChild(li);
	}
		
	return ul;
}

// 부서에 따른 구성원 목록 가져와서 ul 반환
const convertEmpJsonToUl = function(json) {
	
	const ul = document.createElement('ul');
	ul.id = 'list_peo';
	
	for(let i = 0; i < json.length; i++) {
		const img = document.createElement('div');
		img.className = 'img_profile';
		img.style.backgroundImage = "url('http://221.164.9.200/"+ json[i].emp_profile + "')";
		
		const profile = document.createElement('div');
		profile.className = 'box_profile';
		profile.appendChild(img);
		
		const nameDiv = document.createElement('div');
		nameDiv.className = 'txt_name';
		nameDiv.innerText = json[i].emp_name;
		
		const teamDiv = document.createElement('div');
		teamDiv.className = 'txt_team';
		teamDiv.innerText = json[i].emp_dept;
		
		const content = document.createElement('div');
		content.className = 'content_peo';
		content.appendChild(profile);
		content.appendChild(nameDiv);
		content.appendChild(teamDiv);
		
		const div = document.createElement('div');
		
		const li = document.createElement('li');
		li.className = 'item_peo';
		li.appendChild(content);
		li.appendChild(div);
		
		ul.appendChild(li);
	}
		
	return ul;
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
		const listDiv = document.getElementById('list_item');
		listDiv.appendChild(convertDeptJsonToUl(json));
		
		document.querySelector('.head_item').onclick = submenuHandler;
		document.querySelectorAll('.head_inner').forEach(ele => ele.onclick = submenuHandler);
	});
	
}

// 부서 목록 클릭 시 발생하는 함수
const submenuHandler = function(event) {
	event.preventDefault();
	if(event.target.className == 'btn_more' 
		|| event.target.className == 'fas fa-caret-down'
		|| event.target.className == 'fas fa-caret-right')	return;
	
	const idx = event.currentTarget.id.split('-')[1];
	
	const url = cpath + '/employee/' + idx;
	const opt = {
			method: 'GET',
	};
	fetch(url, opt)
	.then(resp => resp.json())
	.then(json => {
		const titlePeo = document.getElementById('title_peo');
		titlePeo.innerText = '전체구성원 (' + json.length + ')';
		
		const listDiv = document.getElementById('list_people');
		const listPeo = document.getElementById('list_peo');
		listPeo.remove();
		listDiv.appendChild(convertEmpJsonToUl(json));
		
	});
}

// 전체 목록 
const ajaxEmpSelectList = function() {
	const url = cpath + '/employee';
	const opt = {
			method: 'GET',
	};
	fetch(url, opt)
	.then(resp => resp.json())
	.then(json => {
		const titlePeo = document.getElementById('title_peo');
		titlePeo.innerText = '전체구성원 (' + json.length + ')';
		
		const listDiv = document.getElementById('list_people');
		const listPeo = document.getElementById('list_peo');
		listPeo.remove();
		listDiv.appendChild(convertEmpJsonToUl(json));
		
	});
}

// 검색
const searchSubmit = function() {
	event.preventDefault();
	console.log('searchSubmit');
	const searchForm = document.getElementById('searchForm');
	const search = searchForm.querySelector('input[type=text]').value;
	
	const url = cpath + '/employee/search/' + search;
	const opt = {
		method: 'GET',
	};
	
	fetch(url, opt)
	.then(resp => resp.json())
	.then(json => {
		const titlePeo = document.getElementById('title_peo');
		titlePeo.innerText = '전체구성원 (' + json.length + ')';
		
		const listDiv = document.getElementById('list_people');
		const listPeo = document.getElementById('list_peo');
		listPeo.remove();
		listDiv.appendChild(convertEmpJsonToUl(json));
	});
}







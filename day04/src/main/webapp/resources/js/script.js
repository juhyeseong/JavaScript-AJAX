'use script';

function openModal(event) {
	const modal = document.getElementById('modal')
	// event.target은 img태그이다(img에 이벤트를 연결했고, img하위에 노드가 없기 때문에)
	const idx = event.target.parentNode.parentNode.querySelector('.idx').innerText
	
	fetch(cpath + '/youtube/' + idx)
	.then(resp => resp.text())
	.then(text => {
		const tag = '<iframe width="720" height="405"'
		const content = document.getElementById('modal-content')
		
		content.innerHTML = tag + text.substring(text.indexOf('src'))
	})
	
	modal.classList.remove('hidden')
}

function closeModal(event) {
	const modal = document.getElementById('modal')
	const content = document.getElementById('modal-content')
	
	content.innerHTML = ''
	modal.classList.add('hidden')
}

function deleteHandler(event) {
	const idx = event.target.parentNode.querySelector('.idx').innerText
	const flag = confirm(idx + '번 영상을 삭제하시겠습니까 ? ')
	
	if(flag == false) {
		return
	}
	const url = cpath + '/youtube/' + idx
	const opt = {
		method: 'DELETE'
	}
	
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		alert(text != 0 ? '삭제 성공' : '삭제 실패')
		loadHandler()
	})
}

function loadHandler() {
	const url = cpath + "/youtube"
	const root = document.getElementById('root')
	
	fetch(url)
	.then(resp => resp.json())
	.then(json => {
		let tag = ''
		
		json.forEach(dto => {
			tag += '<div class="item">'
			tag += `	<div class="idx">${dto.idx}</div>`
			tag += `	<div class="title">${dto.title}</div>`
			tag += `	<div class="channel">${dto.channel}</div>`
			tag += `	<div class="thumbnail"><img src="${dto.thumbnail}"></div>`
			tag += '	<div class="delete">삭제</div>'
			tag += '</div>'
		})
		root.innerHTML = ''
		root.innerHTML += tag
		
		const deleteList = document.querySelectorAll('.item > .delete')
		deleteList.forEach(btn => btn.onclick = deleteHandler)
		
		const imgList = document.querySelectorAll('.item > .thumbnail > img')
		imgList.forEach(img => img.onclick = openModal)
	})
}


function addSubmitHandler(event) {
	event.preventDefault()	// 이벤트 대상의 기본작동을 막는다
	
	const addForm = document.getElementById('addForm')
	const ob = {
		title: addForm.querySelector('input[name="title"]').value,
		channel: addForm.querySelector('input[name="channel"]').value,
		thumbnail: addForm.querySelector('input[name="thumbnail"]').value,
		iframe: addForm.querySelector('textarea[name="iframe"]').value,
	}
	const url = cpath + '/youtube'
	const opt = {
		method: 'POST',
		body: JSON.stringify(ob),
		headers: {
			'Content-Type': 'application/json; charset=utf-8'
		}
	}
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		alert(text != 0 ? '등록 성공' : '등록 실패')
		closeModal()	// 제출내용이 작성된 모달을 숨기고
		loadHandler()	// 목록을 새로 불러온다
	})
}

function addHandler() {
	document.getElementById('modal').classList.remove('hidden')
	let tag = ''
	
	tag += '<form id="addForm">'
	tag += '	<h3>영상 추가하기</h3>'
	tag += '	<p><input type="text" name="title" placeholder="영상 제목" required></p>'
	tag += '	<p><input type="text" name="channel" placeholder="채널 이름" required></p>'
	tag += '	<p><input type="text" name="thumbnail" placeholder="썸네일" reqiured></p>'
	tag += '	<p><textarea name="iframe" placeholder="영상 소스" required></textarea></p>'
	tag += '	<p><input type="submit"></p>'
	tag += '</form>'
	document.getElementById('modal-content').innerHTML = tag
	document.querySelector('#addForm input').focus()
	
	const addForm = document.getElementById('addForm')
	addForm.onsubmit = addSubmitHandler
}
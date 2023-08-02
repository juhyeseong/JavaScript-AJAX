'use strict';

async function loadHandler() {
    const arr = await requestAPI()
    appendContent(arr)
}
async function requestAPI() {
    // 0) fetch를 호출하기 위한 주소, 파라미터 등을 준비한다
    let url = 'https://apis.data.go.kr/6260000/FoodService/getFoodKr'

    const contents = document.querySelector('.contents')
    const pageNo = +contents.getAttribute('pageNo') + 1
    contents.setAttribute('pageNo', pageNo)

    const params = {
        serviceKey: 'K7G5hCA%2FRqnmALDK%2F7POZXDGSgTgQFRIcOqpF8HUf9rqLn17QSaJ4Q0Ox732h%2BF%2FgxuyB3bXrdEWApNVwrOtWA%3D%3D',
        pageNo: pageNo,         // 몇 페이지를 요청하는가
        numOfRows: 10,          // 한 페이지에 몇개의 컨텐츠를 가져올것인가
        resultType: 'json',
    }
    url += '?'
    for(let key in params) {
        // console.log(key)
        // console.log(params[key])
        // console.log('')
        url += key + '=' + params[key] + '&'
    }
    url = url.substring(0, url.length - 1)

    // 1) fetch를 호출하여 api에서 제공하는 데이터를 받아온다
    const arr = await fetch(url)
                .then(resp => resp.json())
                .then(json => json.getFoodKr.item)
    return arr
}

function appendContent(arr) {
    const contents = document.querySelector('.contents')
    // 2) 배열의 내용으로 contents에 태그를 추가한다
    let tag = ''
    arr.forEach(ob => {
        tag += `<div class="item">`
        tag += `    <div class="img"><img src="${ob.MAIN_IMG_NORMAL}"></div>`
        tag += `    <div class="title">${ob.TITLE}</div>`
        tag += `    <div class="location">${ob.GUGUN_NM}</div>`
        tag += `    <div class="tel">${ob.CNTCT_TEL}</div>`
        tag += `    <div class="time">${ob.USAGE_DAY_WEEK_AND_TIME}</div>`
        tag += `    <div class="addr">${ob.ADDR1}</div>`
        tag += `    <div class="content">${ob.ITEMCNTNTS}</div>`
        tag += `</div>`
    })
    contents.innerHTML += tag
    document.getElementById('length').innerText = document.querySelectorAll('.item').length

}

let timer = null;

async function scrollHandler(event) {
    
    const ob = {
        scrollTop: event.target.scrollTop,
        clientHeight: event.target.clientHeight,
        scrollHeight: event.target.scrollHeight
    }

    const a = Math.round((ob.scrollTop + ob.clientHeight + 0.5) / 2)
    const b = Math.round(ob.scrollHeight / 2)

    const contents = document.querySelector('.contents')
    console.log(a, b)
    const flag = a == b
    const scrollable = contents.getAttribute('scrollable')

    if(flag && scrollable == 'true') {

        // 숨겨져있는 로딩 그림 나타내기
        document.getElementById('loading').classList.remove('hidden')
        if(timer == null) {
            contents.setAttribute('scrollable', false)  // 조건에 사용되는 속성 false
            root.style.overflowY = 'hidden'     // 스크롤바 없애기

            timer = setTimeout(async () => {
                timer = null
                console.log('불러오기 !!')
                const arr = await requestAPI()
                appendContent(arr)
                contents.setAttribute('scrollable', true)
                document.getElementById('loading').classList.add('hidden')
                root.style.overflowY = 'auto'
            }, 2000)    // 내부 내용을 2초 후에 실행하기

        }
    }
}

function checkPswd1(event) {
	checkPswd2("check");

	var id = document.getElementById("id").value;
	var pwd = document.getElementById("pwd").value;
	var oMsg = document.getElementById("pwdMsg1");
	var oImg = document.getElementById("pwdCus1");

	if (pwd == "") {
		oImg.className = " int_pass join_row";
		oMsg.style.display = "block";
		oMsg.className = "error";
		oMsg.innerHTML = "필수 입력입니다.";
		return false;
	}
	
	if (isValidPasswd(pwd) != true) {
		oImg.className = "ps_box int_pass_step1";
		oMsg.style.display = "block";
		oMsg.className = "error e_info";
		oMsg.innerHTML = "6~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
		return false;
	}
	return true;
}

function checkShiftDownJoin(e) {
	if (e.which && e.which==16){
		isshift = true;
	}
	
	var oMsg = document.getElementById("pwdMsg1");
	if (e.which && e.which==20){
		if(!isCapslock) {
			isCapslock = true;
			oMsg.style.display = "block";
			oMsg.className = "error";
			oMsg.innerHTML = "Caps Lock이 켜져 있습니다.";
		} else {
			isCapslock = false;
			oMsg.style.display = "none";
		}
	}
	focuswhere=0;

}
var isShift = false;
function checkShiftUp(e) {
	if (e.which && e.which == 16) {
		isShift = false;
	}
}

function checkShiftDown(e) {
	if (e.which && e.which == 16) {
		isShift = true;
	}
}
function checkCapslock(e) {
	var myKeyCode = 0;
	var myShiftKey = false;
	if (window.event) { // IE
		myKeyCode = e.keyCode;
		myShiftKey = e.shiftKey;
	} else if (e.which) { // netscape ff opera
		myKeyCode = e.which;
		myShiftKey = isShift;
	}

	var oMsg = document.getElementById("pwdMsg1");

	if ((myKeyCode >= 65 && myKeyCode <= 90) && !myShiftKey) {
		oMsg.style.display = "block";
		oMsg.className = "error";
		oMsg.innerHTML = "Caps Lock이 켜져 있습니다.";
	} else if ((myKeyCode >= 97 && myKeyCode <= 122) && myShiftKey) {
		oMsg.style.display = "block";
		oMsg.className = "error";
		oMsg.innerHTML = "Caps Lock이 켜져 있습니다.";
	} else {
		oMsg.style.display = "none";
	}
}
function checkCapslock2(e) {
	var myKeyCode = 0;
	var myShiftKey = false;
	if (window.event) { // IE
		myKeyCode = e.keyCode;
		myShiftKey = e.shiftKey;
	} else if (e.which) { // netscape ff opera
		myKeyCode = e.which;
		myShiftKey = isShift;
	}

	var oMsg = document.getElementById("pwdMsg2");

	if ((myKeyCode >= 65 && myKeyCode <= 90) && !myShiftKey) {
		oMsg.style.display = "block";
		oMsg.className = "error";
		oMsg.innerHTML = "Caps Lock이 켜져 있습니다.";
	} else if ((myKeyCode >= 97 && myKeyCode <= 122) && myShiftKey) {
		oMsg.style.display = "block";
		oMsg.className = "error";
		oMsg.innerHTML = "Caps Lock이 켜져 있습니다.";
	} else {
		oMsg.style.display = "none";
	}
}
function toggleLabel(labelId, inputId, mode) {
	
	var oLabel = document.getElementById(labelId);
	var oInput = document.getElementById(inputId);
	if (mode == "in") {
		oLabel.className = "lbl focus";
	} else {
		if (oInput.value != "") {
			oLabel.className = "lbl focus";
		} else {
			oLabel.className = "lbl";
		}
	}
	/*alert("ou");*/
}

function checkPswd2(event) {
	var pwd = document.getElementById("pwd").value;
	var pwd2 = document.getElementById("repwd").value;
	var oMsg = document.getElementById("pwdMsg2");
	var oImg = document.getElementById("pwdCus2");

	if (pwd2 == "") {
		oImg.className = "join_row int_pass_check";
		oMsg.style.display = "block";
		oMsg.innerHTML = "필수 입력입니다.";
//		lua_do('join_kr'+document.getElementById("platform").value,'',ERROR_PSWD2_REQUIRED, document.getElementById("token_sjoin").value, true,'');
		return false;
	}
	if (pwd != pwd2) {
		oImg.className = "join_row int_pass_check";
		oMsg.style.display = "block";
		oMsg.innerHTML = "비밀번호가 일치하지 않습니다.";
		document.getElementById("repwd").value = "";
		return false;
	} else {
		oImg.className = "join_row int_pass_check2";
		oMsg.style.display = "none";
		return true;
	}

	return true;
}

function checkGender(event) {
	
	var man = document.getElementById("man");
	var woman = document.getElementById("woman");
	var genderMsg = document.getElementById("genderMsg")
	
	if(man.check == false && woman.check == false) {
		genderMsg.style.display = "block";
		oMsg.innerHTML = "필수 입력입니다.";
		
		return false;
	}
	if(man.checked) {
		document.getElementById("onMan").className="on";
		document.getElementById("onWoman").className="";
	}
	if(woman.checked) {
		document.getElementById("onMan").className="";
		document.getElementById("onWoman").className="on";
	}
	
	if(true) {
		genderMsg.style.display ="none";
		return true;
	}
	
	return true;
}
function checkName(event) {
	toggleLabel('nameL', 'name', 'out');

	var name = document.getElementById("name").value;
	var oMsg = document.getElementById("nameMsg");

	if (name == "") {
		oMsg.style.display = "block";
		oMsg.innerHTML = "필수 입력입니다.";
		return false;
	}

	var nonchar = /[^가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z0-9]/gi;
	if (nonchar.test(name)) {
		oMsg.style.display = "block";
		oMsg.innerHTML = "이름은 한글, 영문 대소문자만 사용가능합니다.";
		document.getElementById("name").value = "";
		return false;
	}

	if (true) {
		oMsg.style.display = "none";
		return true;
	}

	return true;
}
function checkNickName(event) {
	toggleLabel('NicknameL', 'Nickname', 'out');

	var name = document.getElementById("Nickname").value;
	var oMsg = document.getElementById("NickMsg");

	if (name == "") {
		oMsg.style.display = "block";
		oMsg.innerHTML = "필수 입력입니다.";
		return false;
	}

	var nonchar = /[^가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z0-9]/gi;
	if (nonchar.test(name)) {
		oMsg.style.display = "block";
		oMsg.innerHTML = "닉네임은 한글, 영문 대소문자만 가능합니다.";
		document.getElementById("Nickname").value = "";
		return false;
	}

	if (true) {
		oMsg.style.display = "none";
		return true;
	}

	return true;
}
var idFlag = false;
function checkId(event) {
	/*alert("su");*/
	toggleLabel('idL', 'id', 'out');
	
	var id = document.getElementById("id").value;
	var oMsg = document.getElementById("idMsg");
	if (id == "") {
		oMsg.style.display = "block";
		oMsg.className = "error";
		oMsg.innerHTML = "필수 입력입니다.";
		return false;
	}
	
    var isID = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
	if (!isID.test(id)) {
		oMsg.style.display = "block";
		oMsg.className = "error";
		oMsg.innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
		document.getElementById("id").value = "";
		return false;
	}
	
	idFlag = false;
	/*alert("idFlag : "+idFlag);*/
	/**
	 * XMLHttpRequest()란?
	 * 
	 * 
	 * XMLHttpRequest 객체의 상태: readyState
	 * 웹 서버로부터 응답이 도착했을 때 콜백 함수가 호출됨.
	 * 그 때 콜백함수는 readySate라는 프로퍼티의 값이 변경될 때 마다 호출.
	 * 0~4번이 있다.
	 * 3 - 데이터의 일부를 받은 상태
	 * 4 - 데이터를 전부 받은 상태
	 * 
	 * - 서버로부터의 응답 상태 : status/statusText -
	 * 웹 서버로부터 응답이 도착할때 처리가 올바르게 수행되었는지 확인해야 할 때. 
	 * 처리 도중에 에러가 발생했는지의 등의 여부를 상태 코드를 통해서 알려주는데
	 * XMLHttpRequest객체는 웹 서버가 전달한 생태 코드를 status 프로버티에 저장한다.
	 * 200 - 요청성공
	 * 403 - 접근거부
	 * 404 - 페이지 없음
	 * 500 - 서버 오류
	 */
	try {
		var xmlhttp = new XMLHttpRequest();
		/*alert("xmlhttp : "+xmlhttp);*/
		var httpUser_Id;
		xmlhttp.open("GET", "recipe_searchID.scv?user_id=" + id);// get방식으로 보낼 때 맨 앞에 / 넣는거 아님 (루프돌음) 
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {
				if(xmlhttp.status==200) {
					httpUser_Id = xmlhttp.responseText;
					/*alert(httpUser_Id);
					alert(id);*/
					if(httpUser_Id != id) {
						
						if (event == "first") {
							oMsg.style.display = "block";
							oMsg.className = "su";
							oMsg.innerHTML = "사용가능 아이디입니다.";
						} else {
							oMsg.style.display = "none";
						}
						idFlag = true;	
						return true;
					}else {
						/*alert("test");*/
						oMsg.style.display = "block";
						oMsg.className = "error";
						oMsg.innerHTML = "이미 사용중이거나 탈퇴한 아이디입니다.";
						return false;
					}
				}	
			}
		};
		xmlhttp.send(null);
	} catch (e) {
		if (window.bridgeGotTime) {
			throw e;
		}
	}
	return true;

}
function checkEmail(event) {
	/*alert("x");*/
	toggleLabel('emailL', 'email', 'out');

	var id = document.getElementById("id").value;
	var email = document.getElementById("email").value;
	var oMsg = document.getElementById("emailMsg");

	if (email == "") {
		oMsg.style.display = "block";
		oMsg.className = "error";
		oMsg.innerHTML = "필수 입력입니다.";
		return true;
	}

	var isEmail = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	var isHan = /[ㄱ-ㅎ가-힣]/g;
	if (!isEmail.test(email) || isHan.test(email)) {
		oMsg.style.display = "block";
		oMsg.className = "error";
		oMsg.innerHTML = "이메일 주소를 다시 확인해주세요.";
		document.getElementById("email").value = "";
		return false;
	}

	if (email == id + "@CookCommunity.com") {
		oMsg.style.display = "block";
		oMsg.className = "error";
		oMsg.innerHTML = "가입중인 아이디는 사용이 불가합니다.";
		document.getElementById("email").value = "";
		return false;
	}

	if (true) {
		oMsg.style.display = "none";
		return true;
	}
	return true;
}
function checkPhone(event) {
	/*alert("x");*/
	toggleLabel('phoneL', 'phone', 'out');

	var id = document.getElementById("id").value;
	var phone = document.getElementById("phone").value;
	var phoneMsg = document.getElementById("phoneMsg");

	if (phone == "") {
		phoneMsg.style.display = "block";
		phoneMsg.className = "error";
		phoneMsg.innerHTML = "필수 입력입니다.";
		return true;
	}

	var isPhone = /[0-9]/;
	if (!isPhone.test(phone)) {
		phoneMsg.style.display = "block";
		phoneMsg.className = "error";
		phoneMsg.innerHTML = "ex)01099999999 정수만 입력해주세요.";
		document.getElementById("phone").value = "";
		return false;
	}

	if (true) {
		oMsg.style.display = "none";
		return true;
	}
	return true;
}

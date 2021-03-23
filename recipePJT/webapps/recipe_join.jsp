<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원가입</title>
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<link href="./css/custom2.css" rel="stylesheet">
	<link href="./css/kfonts.css" rel="stylesheet">
	<link href="./css/join.css" rel="stylesheet">
	<link href="./css/join_nav.css" rel="stylesheet">
	<link href="./css/recipeStyle.css" rel="stylesheet">
	<script type="text/javascript" src="./js/join.js"></script>
	<link href="./imgs/CookCommunity.ico" rel="shortcut icon">
	<style>
		body {
			padding-top: 49px;
		}
	</style>
</head>
<body>
	<div>
		<jsp:include page="recipe_join_nav.jsp"></jsp:include>
	</div>
	<div id="headerCus">
		<img alt="" src="./imgs/join_header.png" class="join_header" width="760px">
	</div>
	
	
	<div id="container1">
		<div id="contents">
			<div class="join_contents">
			<form action="recipe_join_finally.scv" method="post" >
				<fieldset class="join_from">
					<div class="row_group">
						<div class="join_row">
							<span class="form_box int_id">
								<input type="text" id="id" name="user_id" onFocus="toggleLabel('idL','id', 'in');"
								onBlur="checkId('first');" maxlength="20" placeholder="아이디" class="int">
								<label id="idL" for="id" class="lbl">아이디</label>
							</span>
							<div id="idMsg" class="error" style="display:none">필수 입력입니다.</div>
						</div>
						
						<div id="pwdCus1" class="join_row">
							<span class="form_box int_pass">
								<input type="password" id="pwd" name="pwd" onFocus="toggleLabel('pwdL1','pwd','in');"
								onBlur="toggleLabel('pwdL1','pwd','out');checkPswd1('check');" onkeyup="checkShiftUp(event);"								
								onkeypress="checkCapslock(event);"
								onKeydown="checkShiftDownJoin(event);" placeholder="비밀번호" class="int">
								<label id="pwdL1" for="pwd" class="lbl"></label>
							</span>
							<div id="pwdMsg1" class="error" style="display:none">필수 입력입니다.</div>
						</div>
						
						<div id="pwdCus2" class="join_row">
							<span class="form_box int_reCheck">
								<input type="password" id="repwd" name="repwd" onFocus="toggleLabel('pwdL2','repwd','in');"
								onBlur="toggleLabel('pwdL2','repwd','out');checkPswd2('check');" onkeyup="checkShiftUp(event);"								
								onkeypress="checkCapslock2(event);"
								onKeydown="checkShiftDown(event);" placeholder="비밀번호 확인" class="int">
								<label id="pwdL2" for="repwd" class="lbl"></label>
							</span>
							<div id="pwdMsg2" class="error" style="display:none">필수 입력입니다.</div>
						</div>
					</div>
					
					<div class="row_group">
						<div class="join_row">
							<span class="form_box">
								<input type="text" id="name" name="user_name" onFocus="toggleLabel('nameL','name','in');"
								onBlur="toggleLabel('nameL','name','out');checkName('check')" placeholder="이름" class="int_fix">
								<label id="nameL" for="name" class="lbl">이름</label>
							</span>
							<div id="nameMsg"class="error" style="display:none">필수 입력입니다.</div>
						</div>
						<div class="join_row">
							<span class="form_box">
								<input type="text" id="Nickname" name="nickname" onFocus="toggleLabel('NicknameL','Nickname','in');"
								onBlur="toggleLabel('NicknameL','Nickname','out');checkNickName('check')" placeholder="닉네임" class="int_fix">
								<label id="NicknameL" for="Nickname" class="lbl">닉네임</label>
							</span>
							<div id="NickMsg" class="error" style="display:none">필수 입력입니다.</div>
						</div>
						<div class="join_row join_gender">
							<span class="gender">
								<span class="genderLine">
									<input type="radio" id="man" name="gender" value="M" onClick="checkGender()"><label id="onMan" for="man">남자</label>
								</span>
								<span class="genderLine">
									<input type="radio" id="woman" name="gender" value="F" onClick="checkGender()"><label id="onWoman" for="woman">여자</label>
								</span>
							</span>
							<div id="genderMsg" class="error" style="display:none">필수 입력입니다.</div>
						</div>
						
						<div id="birth_date" class="join_row join_birthday">
							<div class="join_birth">
								<div class="bir_title"><span>생 년</span></div>
								<div class="bir_yy">
									<span class="form_box">
										<input type="text" id="yy" name="birth_date" placeholder="년(4자)" maxlength="4" class="int_date">
									</span>
								</div>
								<span class="cell">|</span>
								<div class="bir_mm">
									<span class="form_box">
										<select id="mm" class="sel" name="birth_date">
											<option>월</option>
												<option value="1">01</option>
												<option value="2">02</option>
												<option value="3">03</option>
												<option value="4">04</option>
												<option value="5">05</option>
												<option value="6">06</option>
												<option value="7">07</option>
												<option value="8">08</option>
												<option value="9">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select>
									</span>
								</div>
								<span class="cell">|</span>
								<div class="bir_dd">
									<span class="form_box">
										<input type="text" id="dd" name="birth_date" placeholder="일" class="int_date">
									</span>
								</div>
							</div>
							<span id="birthMsg" class="error" style="display:none">필수 입력입니다.</span>
						</div>
					</div>
					
					<div class="row_group">
						<div class="join_row join_email">
							<span class="form_box">
								<input type="text" id="email" name="mail" onFocus="toggleLabel('emailLb','email','in');"
								onBlur="checkEmail('check')" placeholder="비상연락용 이메일" maxlength="100" class="int_fix">
								<label id="emailL" for="email" class="lbl">비상연락용 이메일</label>
							</span>
							<div id="emailMsg" class="error" style="display:none">필수 입력입니다.</div>
						</div>
						<div class="join_row">
							<span class="form_box">
								<input type="text" id="phone" name="cellphone" onFocus="toggleLabel('phoneL','phone','in');"
								onBlur="checkPhone('check')" placeholder="휴대전화번호" maxlength="11" class="int_fix">
								<label id="phoneL" for="phone" class="lbl">휴대전화번호</label>
							</span>
							<div id="phoneMsg" class="error" style="display:none">필수 입력입니다.</div>
						</div>
					</div>
				</fieldset>
				
				<span class="join_Btn"><input type="submit"  value="가입하기" class="int_join"></span>
				</form>
			</div>
		</div>
	</div>
	
		
	<!-- jquery boostrap .js file -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>


</body>
</html>

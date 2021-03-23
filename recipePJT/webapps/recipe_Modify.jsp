<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>나의 정보</title>
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<link href="./css/custom2.css" rel="stylesheet">
	<link href="./css/kfonts.css" rel="stylesheet">
	<link href="./css/recipeModify.css" rel="stylesheet">
	<link href="./imgs/CookCommunity.ico" rel="shortcut icon">
	<style>
		header {
			max-width: 1167px;
			margin:0 auto
		}
		.modifyHeader {
			max-width: 1167px;
		}
		body {
			padding-top: 49px;
		}
	    h3 { padding: 10px 0 }
	    .tab-content {padding: 10px 0;}
	    .div-test {
			padding-left:30px;
			padding-right:30px;
			margin-top: 30px;
			padding-bottom: 25px
		}
    </style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
	<div>
		<jsp:include page="recipe_nav.jsp"></jsp:include>
	</div>
	<div class="menuPage">
	<header>
    	<img id="imgModify" src="./imgs/join_header.png" class="modifyHeader">
    </header>
	 <div class="container">  
	 <hr>
	   <p class="active-tab"><strong>Active Tab</strong>: <span></span></p>
	   <p class="previous-tab"><strong>Previous Tab</strong>: <span></span></p>
	<hr>
	<ul id="myTab" class="nav nav-tabs">
	      <li class="active"><a href="#home" data-toggle="tab">나의 정보</a></li>
	      <li><a href="#tab1" data-toggle="tab">회원 수정</a></li>
	      <li><a href="#tab2" data-toggle="tab">회원 탈퇴</a></li>
	
	</ul>
	<div class="tab-content">
	 	<div class="tab-pane fade in active" id="home">
	      <h3>나의 정보 </h3>
	      <br>
	      <form role="form">  
		    <div class="form-group">   
		        <label for="Name">아이디</label>
		        <input type="text" name="user_id" class="form-control" value="${loginSession.user_id}" readonly> 
		    </div>       
		    <div class="form-group">  
		
		        <label for="emailaddress">닉네임</label>
		        <input type="text" name="nickname" class="form-control" value="${loginSession.nickname}" readonly> 
		    </div> 
		    <div class="form-group">  
		        <label for="emailaddress">이름</label>
		        <input type="text" class="form-control" value="${loginSession.user_name}" readonly> 
		    </div>
		    <div class="form-group">  
		        <label for="emailaddress">생년월일</label>
		        <input type="text" class="form-control"  value="${loginSession.birth_date}" readonly> 
		    </div>
		    <div class="form-group">  
		        <label for="emailaddress">핸드폰번호</label>
		        <input type="text" name="cellphone" class="form-control" value="${loginSession.cellphone}" readonly> 
		    </div>
		    <div class="form-group">  
		        <label for="emailaddress">이메일</label>
		        <input type="email" name="mail" class="form-control" value="${loginSession.mail}" readonly> 
		    </div>                
		  </form>  
	    </div>
	
	    <div class="tab-pane fade" id="tab1">
	      <h3>회원 수정</h3>
	      <form action="recipe_Modify.scv" method="post"  role="form">  	    
		    <div class="form-group">   
		        <label>아이디</label>
		        <input type="text" name="user_id" class="form-control" value="${loginSession.user_id}" readonly> 
		    </div>
		    <div class="form-group">  
		        <label>패스워드</label>
		        <input type="password" name="pwd" class="form-control" value="${loginSession.pwd}"> 
		    </div>     
		    <div class="form-group">  
		        <label>닉네임</label>
		        <input type="text" name="nickname" class="form-control" value="${loginSession.nickname}"> 
		    </div> 
		    <div class="form-group">  
		        <label>이름</label>
		        <input type="text" class="form-control" value="${loginSession.user_name}" readonly> 
		    </div>
		    <div class="form-group">  
		        <label>생년월일</label>
		        <input type="text" class="form-control"  value="${loginSession.birth_date}" readonly> 
		    </div>
		    <div class="form-group">  
		        <label>핸드폰번호</label>
		        <input type="text" name="cellphone" class="form-control" value="${loginSession.cellphone}"> 
		    </div>
		    <div class="form-group">  
		        <label>이메일</label>
		        <input type="email" name="mail" class="form-control" value="${loginSession.mail}"> 
		    </div>
		    <div class="form-group">     
		        <button type="submit" class="btn btn-info">수 정</button>
		    </div>             
		  </form>
        </div>
	
	    <div class="tab-pane fade" id="tab2">
	      <h3>회원 탈퇴</h3>
	      <form action="recipe_Delete.scv" method="post"  role="form">  	    
		    <div class="form-group">   
		        <label>아이디</label>
		        <input type="text" name="user_id" class="form-control" placeholder="아이디"> 
		    </div>
		    <div class="form-group">
		        <label>패스워드</label>
		        <input type="password" name="pwd" class="form-control" placeholder="패스워드"> 
		    </div>
		    <div class="form-group">     
		        <button type="submit" class="btn btn-info">확 인</button>
		    </div>
		    <hr>
		    <small class="text-danger">※ 아이디와 패스워드를 입력하셔야 탈퇴가 가능합니다.</small>
	      </form>
		</div>
	</div>
	
	
	</div>
	</div>
	    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	    <!-- Include all compiled plugins (below), or include individual files as needed -->
	    <script src="./js/bootstrap.min.js"></script>
	    <script src="./js/all_search_menu.js"></script>
	<script>
	      $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
	      // 현재 활성화 된 탭 이름 가져오기 
	      var activeTab = $(e.target).text(); 
	      // 이전 탭 이름 가져오기 
	      var previousTab = $(e.relatedTarget).text(); 
	      $(".active-tab span").html(activeTab); // 현재 활성화 탭 이름 표시 
	      $(".previous-tab span").html(previousTab); // 이전 탭 이름 표시 
	   });  
	</script>
</body>
</html>
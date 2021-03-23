<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>잘못된 입력</title>
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<link href="./css/custom2.css" rel="stylesheet">
	<link href="./css/kfonts.css" rel="stylesheet">
	<link href="./css/join.css" rel="stylesheet">
	<link href="./css/join_nav.css" rel="stylesheet">
	<link href="./imgs/CookCommunity.ico" rel="shortcut icon">
	<style>
		body {
			padding-top: 49px;
		}
	</style>
</head>
<body>
	<div class="container">
		<div>
			<jsp:include page="recipe_join_nav.jsp"></jsp:include>
		</div>
		<div id="headerCus">
			<img alt="" src="./imgs/join_header.png" class="join_header" width="760px">
		</div>
		<div id="headerCus">
			<div class="jumbotron">
			 <div class="container">
			   <h2>잘못된 입력입니다. </h2>
			   <br><br>
			   <small>홈으로 돌아가서 다시 입력해주시기 바랍니다. </small>
			  
			   <p><a href="index.scv" class="btn btn-primary btn-lg" style="margin-top:10px">Cook Community 이동.</a></p>
			 </div>
			</div>
		</div>
	</div>
	
	
	<!-- jquery boostrap .js file -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script type="text/javascript">

	
	
	</script>

</body>
</html>

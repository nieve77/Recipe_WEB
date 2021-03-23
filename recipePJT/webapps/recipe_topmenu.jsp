<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initail-scale=1">

<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/custom.css" rel="stylesheet">
<link href="./css/kfonts2.css" rel="stylesheet">
<link href="./imgs/CookCommunity.ico" rel="shortcut icon">

<style>
h1 {
	color:#151515;
	font-weight: bold;
}
body {
	padding-top: 70px;
	position: relative;
}

.scrollcontent h4 {
	padding-top: 70px;
}
#rank_check{
	padding-top: 50px;
}
.div-test {
	padding-left:30px;
	padding-right:30px;
	margin-top: 30px;
	padding-bottom: 20px
}
</style>

<title>Ranking Recipe</title>
</head>

<body data-spy="scroll" data-target="#navbar-example" data-offset="50">

	<div>
		<jsp:include page="recipe_nav.jsp"></jsp:include>
	</div>
	<div class="menuPage">
	<div class="container">

		<div class="scrollcontent" id="rank_check">
			<h1>Top5 메뉴들</h1>	
			<c:forEach items="${ranking}" var="top_rank" begin="0" end ="4">
				<div class="col-md-12 div-test">
					<img src="./upload/${top_rank.recipe_path}" class="img-rounded img-responsive" style="width: 100%">
					<p style="text-align: center; font-size: 25px; font-weight: bold; color:#A6A6A6">${top_rank.recipe_name}</p>
					<a href="recipe_cookView.scv?recipe_board_num=${top_rank.recipe_board_num}" class="btn btn-info btn-block topBtnStyle">레시피 보기</a>
				</div>
			</c:forEach>
		</div>
	</div>
	</div>
	<!-- jquary bootstrap.js file -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<jsp:include page="recipe_ajaxSearch.jsp"></jsp:include>
	<script type="text/javascript">
		
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Responsive Multi-Level Menu: Space-saving drop-down menu with subtle effects" />
<meta name="keywords"
	content="multi-level menu, mobile menu, responsive, space-saving, drop-down menu, css, jquery" />
<meta name="author" content="Codrops" />

<link rel="shortcut icon" href="./favicon.ico">
<link href="./css/recipeStyle.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/modernizr.custom.js"></script>
<script src="./js/all_menu.js"></script>

<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/custom.css" rel="stylesheet">
<link href="./css/kfonts.css" rel="stylesheet">


<style>
.gallery {
	/*width: calc(100% -300px-10px);*/
	/*margin-left: 100px;*/
	
}

.img-responsive {
	width: 100%;
}

.div-test {
	padding: 30px;
	margin-top: 30px;
}

.pagenation {
	
}
</style>

<title>전체메뉴 페이지</title>
</head>
<body>
	<div class="container">
		<jsp:include page="recipe_nav.jsp"></jsp:include>

	</div>


	<!-- <div class="row"> -->
		<div class="col-md-4 div-test">
			<img src="./imgs/zzigae.jpg" class="img-rounded img-responsive">
			<p>테스트</p>
			<a href="recipe_check.jsp" class="btn btn-info btn-block">레시피 보기</a>
		</div>
		<div class="col-md-4 div-test">
			<img src="./imgs/zzigae.jpg" class="img-rounded img-responsive">
			<p>테스트</p>
			<a href="#" class="btn btn-info btn-block">test</a>
		</div>
		<div class="col-md-4 div-test">
			<img src="./imgs/zzigae.jpg" class="img-rounded img-responsive">
			<p>테스트</p>
			<a href="#" class="btn btn-info btn-block">test</a>
		</div>
		<div class="col-md-4 div-test">
			<img src="./imgs/zzigae.jpg" class="img-rounded img-responsive">
			<p>테스트</p>
			<a href="#" class="btn btn-info btn-block">test</a>
		</div>
		<div class="col-md-4 div-test">
			<img src="./imgs/zzigae.jpg" class="img-rounded img-responsive">
			<p>테스트</p>
			<a href="#" class="btn btn-info btn-block">test</a>
		</div>
	<!-- </div> -->
	
	<!-- <div class="row">
		<div class="col-md-4 div-test">
			<img src="./imgs/zzigae.jpg" class="img-rounded img-responsive">
			<p>테스트</p>
			<a href="recipe_check.jsp" class="btn btn-info btn-block">레시피 보기</a>
		</div>
		<div class="col-md-4 div-test">
			<img src="./imgs/zzigae.jpg" class="img-rounded img-responsive">
			<p>테스트</p>
			<a href="#" class="btn btn-info btn-block">test</a>
		</div>
		<div class="col-md-4 div-test">
			<img src="./imgs/zzigae.jpg" class="img-rounded img-responsive">
			<p>테스트</p>
			<a href="#" class="btn btn-info btn-block">test</a>
		</div>
	</div> -->

	
	<a href="write_form.jsp" class="btn btn-info btn-block" id="write_button">글쓰기</a>
	<div id="maia-signature"></div>

	<footer>
		<jsp:include page="recipe_footer.jsp"></jsp:include>
	</footer>

</body>
</html>
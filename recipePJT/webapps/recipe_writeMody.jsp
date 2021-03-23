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
<link href="./css/kfonts.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/recipe-allmenu.css" />
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="./css/froala_editor.min.css" rel="stylesheet" type="text/css">
<link href="./css/froala_style.min.css" rel="stylesheet"  type="text/css">
<link href="./imgs/CookCommunity.ico" rel="shortcut icon">

<script src="./js/all_menu.js"></script>
<style>
.col-md-6 {
	padding: 10px;
}

h1 {
	text-align: center;
}

#password {
	
}

.col-md-12 {
	padding: 10px;
}
</style>

<title>글쓰기</title>
</head>

<body>
	<h1>Cook Community 레시피 수정</h1>

	<div class="container">
	<form action="recipe_ModifyUpload.scv" method="post" enctype="multipart/form-data">
		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							전체메뉴선택<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" id="choicemenu">
							<li><a id="recipeTitle1">밥</a></li>
							<li><a id="recipeTitle2">국</a></li>
							<li><a id="recipeTitle3">찌개</a></li>
							<li><a id="recipeTitle4">볶음요리</a></li>
							<li><a id="recipeTitle5">면</a></li>
							<li><a id="recipeTitle6">비빔요리</a></li>
							<li><a id="recipeTitle7">구이요리</a></li>
							<li><a id="recipeTitle8">김치</a></li>
							<li><a id="recipeTitle9">찜요리</a></li>
							<li><a id="recipeTitle10">튀김</a></li>
							<li><a id="recipeTitle11">전</a></li>
							<li><a id="recipeTitle12">베이커리</a></li>
							<li><a id="recipeTitle13">스프</a></li>
							<li><a id="recipeTitle14">소스 & 양념</a></li>
							<li><a id="recipeTitle15">샐러드</a></li>
						</ul>
					</div>
					<!-- /btn-group -->
					<input id="recipeTitleKate" type="text" name="recipe_category" class="form-control" value="${cookModify.recipe_category}">
				</div>
				<!-- /input-group -->
			</div>
			<!-- /.col-lg-6 -->
		</div>
		<!-- /.row -->

		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">작성자</span> <input
						type="text" class="form-control" value="${cookModify.user_id}"
						aria-describedby="sizing-addon2" name="user_id" readonly>
				</div>
			</div>
		</div>

		<!-- <div class="row">
			<div class="col-md-12" id=password>
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">비밀번호</span> <input
						type="password" class="form-control" id="inputPassword3"
						placeholder="4자리 비밀번호">
				</div>
			</div>
		</div> -->

		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">요리 재료</span> <input
						type="text" class="form-control" placeholder="필요한 재료를 써주세요"
						name="recipe_material" aria-describedby="sizing-addon2" value="${cookModify.recipe_material}">
				</div>
			</div>
		</div>
		

		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">메인 음식사진</span>
						<input type="file" name="file"  class="form-control"/>				
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">요리 제목</span> <input
						type="text" class="form-control" placeholder="레시피에 어울리는 제목을 넣어주세요"
						name="recipe_name" aria-describedby="sizing-addon2" value="${cookModify.recipe_name}">
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">간단한 설명</span> <input
						type="text" class="form-control" placeholder="이 요리를 잘  설명할수있는 설명을 넣어주세요"
						name="recipe_feature" aria-describedby="sizing-addon2" value="${cookModify.recipe_feature}">
				</div>
			</div>
		</div>
		
		<div id="recipeWriteBody" class="row">
			<div class="col-md-12" id="writing">
				<section id="editor">
						<textarea id='edit' name="recipe_detail">${cookModify.recipe_detail}</textarea>
				</section>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<input type="hidden" name="recipe_board_num" value="${cookModify.recipe_board_num}">
				<button type="submit" class="btn btn-info btn-block">글 올리기</button>
			</div>
		</div>
		</form>
	</div>

	<!-- jquary bootstrap.js file -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>

	<script src="./js/froala_editor.min.js"></script>
	<script src="./js/plugins/tables.min.js"></script>
	<script src="./js/plugins/lists.min.js"></script>
	<script src="./js/plugins/colors.min.js"></script>
	<script src="./js/plugins/media_manager.min.js"></script>
	<script src="./js/plugins/font_family.min.js"></script>
	<script src="./js/plugins/font_size.min.js"></script>
	<script src="./js/plugins/block_styles.min.js"></script>
	<script src="./js/plugins/video.min.js"></script>

	<script type="text/javascript">
		
		$(function() {
			$('#edit').editable({
				inlineMode : false
			});

			
		
			$("#recipeTitle1").on("click",function() {
				$("#recipeTitleKate").val("밥");
			});
			$("#recipeTitle2").on("click",function() {
				$("#recipeTitleKate").val("국");
			});
			$("#recipeTitle3").on("click",function() {
				$("#recipeTitleKate").val("찌개");
			});
			$("#recipeTitle4").on("click",function() {
				$("#recipeTitleKate").val("볶음");
			});
			$("#recipeTitle5").on("click",function() {
				$("#recipeTitleKate").val("면");
			});
			$("#recipeTitle6").on("click",function() {
				$("#recipeTitleKate").val("비빔");
			});
			$("#recipeTitle7").on("click",function() {
				$("#recipeTitleKate").val("구이");
			});
			$("#recipeTitle8").on("click",function() {
				$("#recipeTitleKate").val("김치");
			});
			$("#recipeTitle9").on("click",function() {
				$("#recipeTitleKate").val("찜");
			});
			$("#recipeTitle10").on("click",function() {
				$("#recipeTitleKate").val("튀김");
			});
			$("#recipeTitle11").on("click",function() {
				$("#recipeTitleKate").val("전");
			});
			$("#recipeTitle12").on("click",function() {
				$("#recipeTitleKate").val("베이커리");
			});
			$("#recipeTitle13").on("click",function() {
				$("#recipeTitleKate").val("스프");
			});
			$("#recipeTitle14").on("click",function() {
				$("#recipeTitleKate").val("소스");
			});
			$("#recipeTitle15").on("click",function() {
				$("#recipeTitleKate").val("샐러드");
			});
		});
		
	</script>
</body>
</html>
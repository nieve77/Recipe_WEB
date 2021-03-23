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

<title>공지사항 작성</title>
</head>

<body>
	<h1>공지사항 작성</h1>

	<div class="container">
	<form action="recipe_NoticWriteUP.scv" method="post" enctype="multipart/form-data">
		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">작성자</span> <input
						type="text" class="form-control" value="${loginSession.user_id}"
						aria-describedby="sizing-addon2" name="admin_writer" readonly>
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
					<span class="input-group-addon" id="sizing-addon2">공지 제목</span> <input
						type="text" class="form-control" placeholder="공지제목을 입력해주세요."
						name="admin_title" aria-describedby="sizing-addon2">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">글쓰기</span>
				</div>
			</div>
		</div>
		<div id="recipeWriteBody" class="row">
			<div class="col-md-12" id="writing">
				<section id="editor">
						<textarea id='edit' name="admin_content"></textarea>
				</section>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
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
		});
		
	</script>
</body>
</html>
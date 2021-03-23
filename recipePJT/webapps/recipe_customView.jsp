<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>고객게시판</title>
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<link href="./css/custom2.css" rel="stylesheet">
	<link href="./css/kfonts.css" rel="stylesheet">
	<link href="./css/MyRecipe.css" rel="stylesheet">
	<style>
		body {
			padding-top: 49px;
			background-color: #EAEAEA
		}
		.div-test {
			padding-left:30px;
			padding-right:30px;
			margin-top: 30px;
			padding-bottom: 25px
		}
		#reply {
			border: 1px solid black;
		}
		.col-md-12 {
			padding: 10px;
		}
	</style>
</head>
<body>
	<div>
		<jsp:include page="recipe_nav.jsp"></jsp:include>
	</div>
	<div class="menuPage">
	<div id="MyRecipeHeader">
		<img src="./imgs/header.jpg" class="MyRecipeHeaderImg">
	</div>
	<div id="MyRecipe-main" role="main">
		<div style="padding-top:30px; padding-left:25px; padding-right:25px; padding-bottom:25px">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#home" data-toggle="tab">고객게시판</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane fade in active" id="home">
					<div style="padding-top:15px;">
						<div class="row">
							<div class="col-md-12">
								<div class="input-group">
									<p class="input-group-addon" id="sizing-addon2"style="text-align: left;border-right-width:0;border-left-width:0;border-radius:0">
									글쓴이 : ${customViewer.user_id }
									
									</p>
									<p class="input-group-addon" id="sizing-addon2" style="text-align: center; border-right-width:0;border-left-width:0;">
									
									글 제목 : ${customViewer.custom_title }
									
									</p>
									<p class="input-group-addon" id="sizing-addon2"style="text-align: right; border-left-width:0; border-right-width:0;border-radius:0 ">
									
									조회 수 : ${ customViewer.cnt }
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="col-md-12" id=reply>
								<div class="col-md-12" style="width:100%" readonly>
									${customViewer.custom_content}
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			
		</div>
	</div>
	</div>
	
	
	<!-- jquery boostrap .js file -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<jsp:include page="recipe_ajaxSearch.jsp"></jsp:include>
	<script type="text/javascript">
	
	</script>

</body>
</html>

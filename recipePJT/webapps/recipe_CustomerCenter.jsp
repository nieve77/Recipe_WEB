<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>고객센터</title>
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<link href="./css/custom2.css" rel="stylesheet">
	<link href="./css/kfonts.css" rel="stylesheet">
	<link href="./css/MyRecipe.css" rel="stylesheet">
	<link href="./imgs/CookCommunity.ico" rel="shortcut icon">
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
	</style>
</head>
<body>
	<div>
		<jsp:include page="recipe_nav.jsp"></jsp:include>
	</div>
	<div class="menuPage">
	<div id="MyRecipeHeader">
		<img src="./imgs/customCenterHeader.jpg" class="MyRecipeHeaderImg">
	</div>
	<div id="MyRecipe-main" role="main">
		<div style="padding-top:30px; padding-left:25px; padding-right:25px; padding-bottom:25px">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#home" data-toggle="tab">공지사항</a></li>
				<li><a href="#tab1" data-toggle="tab">고객 게시판</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane fade in active" id="home">
					<div style="padding-top:15px;">
						<table class="table table-striped">
							<thead>
								<tr>
									<th class="col-md-2">번 호</th>
									<th class="col-md-4">제 목</th>
									<th class="col-md-2">글쓴이</th>
									<th class="col-md-2">등록일</th>
									<th class="col-md-2">조회수</th>
								</tr>
							</thead>
		
							<c:forEach items="${ noticeList }" var="notice">
								<tr>
									<td>${ notice.notice_board_seq }</td>
									<td><a href="recipe_NoticeView.scv?notice_board_seq=${ notice.notice_board_seq }">${ notice.admin_title }</a></td>
									<td>${notice.admin_writer}</td>
									<td>${notice.admin_regdate}</td>
									<td>${notice.cnt}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<c:if test="${loginSession.user_division == '관리자' }">
						<div class="row">
							<div class="col-md-12">
								<a href="recipe_NoticWrite.scv" class="btn btn-info btn-block">글 올리기</a>
							</div>
						</div>
					</c:if>
				</div>
				
				<div class="tab-pane fade" id="tab1">
					<div style="padding-top:15px;">
						<table class="table table-striped">
							<thead>
								<tr>
									<th class="col-md-2">번 호</th>
									<th class="col-md-4">제 목</th>
									<th class="col-md-2">글쓴이</th>
									<th class="col-md-2">등록일</th>
									<th class="col-md-2">조회수</th>
								</tr>
							</thead>
		
							<c:forEach items="${ customList }" var="custom">
								<tr>
									<td>${ custom.custom_board_seq }</td>
									<td><a href="recipe_CustomView.scv?custom_board_seq=${ custom.custom_board_seq }">${ custom.custom_title }</a></td>
									<td>${custom.user_id}</td>
									<td>${custom.custom_regdate}</td>
									<td>${custom.cnt}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="row">
						<div class="col-md-12">
							<a href="recipe_CustomWrite.scv" class="btn btn-info btn-block">글 올리기</a>
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

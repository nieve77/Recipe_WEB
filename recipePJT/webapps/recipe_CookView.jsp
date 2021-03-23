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
<link href="./imgs/CookCommunity.ico" rel="shortcut icon">
<style>
body {
	padding-top: 49px;
}
.div-test {
	padding-left:30px;
	padding-right:30px;
	margin-top: 30px;
	padding-bottom: 25px
}
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

.pull-right {
	padding: 10px;
}

#reply {
	border: 1px solid black;
}
</style>

<title>레시피 보기</title>
</head>

<body>

<input id="user_idCus" type="hidden" value="${loginSession.user_id}">
<input id="board_numCus" type="hidden" value="${cookView.recipe_board_num}">
	<div>
		<jsp:include page="recipe_nav.jsp"></jsp:include>
	</div>
	<div class="menuPage">
	<div class="row">
		<div class="col-md-12">
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2"><h1>${cookView.recipe_name}</h1></span>
			</div>
		</div>
	</div>
	

	<div class="container">
	<form action="recipe_clip.scv" method="post">
		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">작성일</span> <input
						type="text" class="form-control" aria-describedby="sizing-addon2"
						value="${cookView.time}" readonly>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">카테고리</span> <input
						type="text" class="form-control" aria-describedby="sizing-addon2"
						value="${cookView.recipe_category}" readonly>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">작성자</span> <input
						type="text" class="form-control" aria-describedby="sizing-addon2"
						value="${cookView.user_id}" readonly>
				</div>
			</div>

		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">요리 재료</span> <input
						type="text" class="form-control" aria-describedby="sizing-addon2"
						value="${cookView.recipe_material}" readonly>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">간단한 설명</span> <input
						type="text" class="form-control" aria-describedby="sizing-addon2"
						value="${cookView.recipe_feature}" readonly>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12" align="center">
				<img alt="9PixelStudio" width="50%"class="img-rounded" src="./upload/${cookView.recipe_path}" >
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2">레시피</span>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="col-md-12" id=reply>
					<div class="col-md-12" style="width:100%" readonly>
						${cookView.recipe_detail}
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="pull-right">
					<c:if test="${loginSession.user_id != null}">
					<button id="recipeLikeBtn" type="button" class="btn btn-default">
			            <span style="color:blue" class="glyphicon glyphicon-thumbs-up">좋아요</span> 
			        </button>

					<button id="recipeHateBtn" type="button" class="btn btn-default">
			            <span style="color:red" class="glyphicon glyphicon-thumbs-down">싫어요 </span> 
			        </button>
			        </c:if>
			        <c:if test="${ loginSession == null}">
						<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">
				            <span style="color:green" class="glyphicon glyphicon-shopping-cart"></span> 레시피 담기
				        </button>
				    </c:if>
				    <c:if test="${ loginSession != null}">
				    	<input type="hidden" name="user_id" value="${loginSession.user_id}">
				    	<input type="hidden" name="recipe_board_num" value="${cookView.recipe_board_num}">
				    	<input type="hidden" name="recipeClip_category" value="${cookView.recipe_category}">
				    	<input type="hidden" name="recipeClip_name" value="${cookView.recipe_name}">
				    	<input type="hidden" name="recipeClip_path" value="${cookView.recipe_path}">
				    	<input type="hidden" name="recipeClip_material" value="${cookView.recipe_material}">
				    	<input type="hidden" name="recipeClip_feature" value="${cookView.recipe_feature}">
				    	<input type="hidden" name="recipeClip_detail" value="${cookView.recipe_detail}">
				    	
				    	<c:if test="${loginSession.user_id != cookView.user_id}">
					        <button type="submit" class="btn btn-default">
					            <span style="color:green" class="glyphicon glyphicon-shopping-cart"></span> 레시피 담기
					        </button>
					    </c:if>
				    </c:if>
				</div>
			</div>
		</div>
		</form>
		<div class="row">
			<div class="col-md-12">
				<div class="pull-right">
					<c:if test="${loginSession.user_id == cookView.user_id}">
						<a href="recipe_cookModify.scv?recipe_board_num=${cookView.recipe_board_num}" class="btn btn-info">글 수정</a>
					</c:if>
					<c:if test="${loginSession.user_id == cookView.user_id}">
						<a href="recipe_cookDelete.scv?recipe_board_num=${cookView.recipe_board_num}" class="btn btn-info">글삭제</a>
					</c:if>
					<a href="index.scv" class="btn btn-info">홈 으로</a>
				</div>
			</div>
		</div>
		
		<form action="recipe_replyInsert.scv" method="get" role="form" accept-charset="utf-8">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-12">
						<div class="form-group">
							<input id="reply_id" type="text" name="user_id" value="${loginSession.user_id}" class="form-control" placeholder="아이디" readonly>
						</div>
						<div class="form-group">
							<input id="reply_board_num" type="hidden" name="recipe_board_num" value="${cookView.recipe_board_num }" class="form-control" placeholder="게시물번호">
						</div>
						<div class="form-group">
							<input id="content" type="text" name="reply" class="form-control" placeholder="댓글">
						</div>
						<div class="col-md-6">
							<button type="submit" class="btn btn-primary btn-lg">댓글달기</button>
						</div>
					</div>
				</div>
			</div>
		</form>

			<table class="table table-hover bordered">
				<thead>
					<tr>
						<th align="center">유저아이디</th>
						<th align="center">내 용</th>
						<th align="center">작성일</th>
					</tr>
				</thead>

				<c:forEach items="${ replyList }" var="replyClipRow">
					<tr>
						<td>${ replyClipRow.user_id }</td>
						<td>${replyClipRow.reply}</td>	
						<td>${replyClipRow.reply_time}</td>	
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

	<!-- jquary bootstrap.js file -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/all_menu.js"></script>
	<script src="./js/all_search_menu.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			 var id = $("#user_idCus").val();
			 var board_num = $("#board_numCus").val();
			 var love_num=$("#board_numlove").val();
			 
	 		 $("#recipeLikeBtn").on("click",function() {
	 			 $.ajax({
					    url : "recipe_love.scv?user_id="+id+"&recipe_board_num="+board_num,
						type : "get",
						dataType : "json",
						success : function(data) {
							//alert(data.likeNum);
							//var txt="좋아요"+data.likeNum;
							if(data.isInsert=="Y"){
								alert("좋아요를 완료했습니다.");
							}
							else{
								alert("좋아요/싫어요 중 한번만 가능합니다.");
							}
							$("#recipeLikeBtn").html('<span style="color:blue" class="glyphicon glyphicon-thumbs-up" id="like"> 좋아요('+data.likeNum+')</span>  ');
					    }
				  }); 
				
		 	 });
	 		 
	 		$("#recipeHateBtn").on("click",function() {
	 			  
	 			 $.ajax({
					    url : "recipe_hate.scv?user_id="+id+"&recipe_board_num="+board_num,
						type : "get",
						dataType : "json",
						success : function(data) {
							/* alert(data.hateNum); */
							//var txt="좋아요"+data.likeNum;
							if(data.isInsert=="Y"){
								alert("싫어요를 완료했습니다.");
							}
							else{
								alert("좋아요/싫어요 중 한번만 가능합니다.");
							}
							$("#recipeHateBtn").html('<span style="color:red" class="glyphicon glyphicon-thumbs-down" id="hate"> 싫어요('+data.hateNum+')</span>  ');
					    }
				  }); 
				 
		 	 });
		});
	</script>
</body>
</html>
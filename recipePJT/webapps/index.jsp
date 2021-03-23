<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Cook Community</title>
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<link href="./css/custom2.css" rel="stylesheet">
	<link href="./css/kfonts.css" rel="stylesheet">
	<link href="./css/recipeStyle.css" rel="stylesheet">
	<link href="./imgs/CookCommunity.ico" rel="shortcut icon">
	<script src="./js/modernizr.custom.js"></script>
	<style>
		body {
			padding-top: 49px;
		}
		.img-responsive {
			width: 100%;
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
	<div class="container-fluid1">
		<div>
			<jsp:include page="recipe_nav.jsp"></jsp:include>
		</div>
		<div class="menuPage">
		<section>
			<div id="carousel-example-generic" class="carousel slide">
	           <!-- Indicators -->
			   <ol class="carousel-indicators">
			     <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			     <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			     <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			     <li data-target="#carousel-example-generic" data-slide-to="3"></li>
			     <li data-target="#carousel-example-generic" data-slide-to="4"></li>
			   </ol>
		       <!-- Carousel items -->
			   <div class="carousel-inner">
			      <div class="item active">
			         <img src="./imgs/mainSlice1.jpg" alt="First slide">
			      </div>
			      <div class="item">
			         <img src="./imgs/mainSlice2.jpg" alt="Second slide">               
			      </div>
			      <div class="item">
			         <img src="./imgs/mainSlice3.jpg" alt="Third slide">                 
			      </div>
			      <div class="item">
			         <img src="./imgs/mainSlice4.jpg" alt="fourth slide">                 
			      </div>
			      <div class="item">
			         <img src="./imgs/mainSlice5.jpg" alt="fifth slide">                 
			      </div>
			   </div>
			  <!-- Controls -->
			    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
			      <span class="glyphicon glyphicon-chevron-left"></span>
			    </a>
			    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
			      <span class="glyphicon glyphicon-chevron-right "></span>
			    </a>
			</div>
		</section>
		<header>
			<div class="headerImgCus">
				<img alt="" src="./imgs/header.jpg" class="img-responsive">
			</div>
		</header>
		<section>
			<div id="maia-main" role="main">
			<div class="maia-teleport" id="content"></div>
				<div class="gmail-page">
					<div class="maia-aux">	
						<div class="maia-cols">
							<div class="maia-col-6 gmail-feature-set">
								<img alt="" src="./imgs/indexCook.png">
								<div>
									<h4>어떤 기기에서나 가능합니다.</h4>
									<p>
										어느 기기에서나 Cook Community이용이 가능합니다.<br>
										<a data-g-action="Learn more: Gmail for mobile"
										   data-g-event="Carousel" data-g-label="about.html"
										   href="#">모바일용 Cook Community에 대해 자세히 알아보기.</a>
									</p>
								</div>
							</div>
							<div class="maia-col-6 gmail-feature-set">
								<img alt="" class="hi-dpi" src="./imgs/indexSNS.png">
								<div>
									<h4>요리레시피를 주제로 즐거운 대화.</h4>
									<p>
										사진, 이모티콘, SNS기능은 요리주제를 통해 대화에 활기를 불어넣습니다. 컴퓨터뿐만 아니라
										모바일 기기에서도 여러 친구들과 대화를 즐겨보세요.
										<a data-g-action="Learn more: Hangouts" data-g-event="Carousel"
										   data-g-label="about.html" href="#">
										   이 기능에 대해 자세히 알아보기.</a>
									</p>
								</div>
							</div>
						</div>
						
						<div class="maia-cols">
							<div class="maia-col-6 gmail-feature-set">
								<img alt="" src="./imgs/indexRank.png">
								<div>
									<h4>Ranking 요리레시피</h4>
									<p>
										1분기별로 요리레시피에 대한 순위를 1등 ~ 5등까지 부여합니다. 순위에 대한 경쟁을 통해
										자신의 요리레시피를 메인페이지에 올려보세요.   
									</p>
								</div>
							</div>
							<div class="maia-col-6 gmail-feature-set">
								<img alt="" class="hi-dpi" src="./imgs/indexQA.png">
								<div>
									<h4>도움이 필요하신가요?</h4>
									<p>
										Cook Community에 대해 질문이 있으시면 <a href="#">
										고객센터</a>를 방문하여 FAQ를 읽어보거나 질문을 올려주세요.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<div id="maia-signature"></div>
		<footer>
			<jsp:include page="recipe_footer.jsp"></jsp:include>
		</footer>
		</div>
	</div>
	
	<input id="test88" type="hidden" value="${loginSession }">
	<!-- jquery boostrap .js file -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/all_menu.js"></script>
	<jsp:include page="recipe_ajaxSearch.jsp"></jsp:include>
	<script type="text/javascript">
		$('.carousel').carousel();
	</script>

</body>
</html>

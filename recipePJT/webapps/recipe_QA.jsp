<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CustmorSound</title>

<!-- Bootstrap -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/kfonts.css" rel="stylesheet">
<link href="./css/custom.css" rel="stylesheet">
<style type="text/css"></style>
</head>
<body>
	<div class="container-fluid">
		<div class="tab-content">

			<h2>고객센터</h2>
			<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#notice" data-toggle="tab">공지사항</a></li>
				<li><a href="#customer" data-toggle="tab">고객게시판</a></li>

			</ul>

			<div class="tab-pane fade in active" id="notice">
				<table class="table table-condensed">
					<tr>
						<h3>공지사항</h3>
						<th class="text-center">번호</th>
						<th class="text-center">제 목</th>
						<th class="text-center">작성자</th>
						<th class="text-center">작성일</th>
						<th class="text-center">조회수</th>
					</tr>
					<tr>
						<td align="center">1</td>
						<td align="center">0101 업데이트입니다.</td>
						<td align="center">관리자</td>
						<td align="center">2015년01월01일</td>
						<td align="center">1004</td>
					</tr>
					<tr>
						<td align="center">2</td>
						<td align="center">0103 정기정검입니다.</td>
						<td align="center">관리자</td>
						<td align="center">2015년01월03일</td>
						<td align="center">2115</td>
					</tr>
					<tr>
						<td align="center">3</td>
						<td align="center">0106 업데이트입니다.</td>
						<td align="center">관리자</td>
						<td align="center">2015년01월06일</td>
						<td align="center">1565</td>
					</tr>
				</table>	
					<div class="row">
						<div class="col-md-10 col-md-push-10">
							<button type="button" class="btn btn-default">글쓰기 </button>
							
				</div>
			</div>
</div>
			<div class="tab-pane fade" id="customer">
				<table class="table table-condensed">
					<tr>
						<h3>고객게시판</h3>
						<th class="text-center">번호</th>
						<th class="text-center">제목</th>
						<th class="text-center">작성자</th>
						<th class="text-center">작성일</th>
						<th class="text-center">조회수</th>
					</tr>
					<tr>
						<td align="center">1</td>
						<td align="center">불만사항입니다</td>
						<td align="center">줴훈줴훈</td>
						<td align="center">2015년01월02일</td>
						<td align="center">111</td>
					</tr>
					<tr>
						<td align="center">2</td>
						<td align="center">마음의소리</td>
						<td align="center">Jessi</td>
						<td align="center">2015년01월08일</td>
						<td align="center">121</td>
					</tr>
					<tr>
						<td align="center">3</td>
						<td align="center">고객의소리</td>
						<td align="center">치타</td>
						<td align="center">2015년01월11일</td>
						<td align="center">141</td>
					</tr>
					<tr>
						<td align="center">4</td>
						<td align="center">컴플레인</td>
						<td align="center">낙타</td>
						<td align="center">2015년01월23일</td>
						<td align="center">181</td>
					</tr>
				</table>
				<div class="row">
						<div class="col-md-10 col-md-push-10">
							<button type="button" class="btn btn-default">글쓰기 </button>
							
				
			</div>
			</div>
		</div>

		<!-- jquery bootstrap .js file -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="./js/bootstrap.min.js"></script>
		<script type="text/javascript"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->  
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="index.scv"><img src="./imgs/logo.png"> </a>
  </div>
 
  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li><a href="recipe_Ranking.scv">Top 메뉴 </a></li>
      <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">전체메뉴 <b class="caret"></b></a>
			<input type="hidden" id="etsCus" value="밥">
			<ul class="dropdown-menu">
				<li><a id="recipeKategorie1">밥</a></li>
				<li><a id="recipeKategorie2">국</a></li>
				<li><a id="recipeKategorie3">찌개</a></li>
				<li><a id="recipeKategorie4">볶음요리</a></li>
				<li><a id="recipeKategorie5">면</a></li>
				<li><a id="recipeKategorie6">비빔요리</a></li>
				<li><a id="recipeKategorie7">구이요리</a></li>
				<li><a id="recipeKategorie8">김치요리</a></li>
				<li><a id="recipeKategorie9">찜요리</a></li>
				<li><a id="recipeKategorie10">튀김</a></li>
				<li><a id="recipeKategorie11">전</a></li>
				<li><a id="recipeKategorie12">베이커리</a></li>
				<li><a id="recipeKategorie13">스프</a></li>
				<li><a id="recipeKategorie14">소스 & 양념</a></li>
				<li><a id="recipeKategorie15">샐러드</a></li>
			</ul>	
		</li>
	  <c:if test="${ loginSession == null}">
      	<li><a href="#" data-toggle="modal" data-target="#myModal">나의 레시피</a></li>
      </c:if>
	  <c:if test="${ loginSession != null}">
      	<li><a href="recipe_MyRecipe.scv?user_id=${loginSession.user_id }">나의 레시피</a></li>
      </c:if>
      
      <li><a href="recipe_CustomerCenter.scv">고객센터</a></li>
      
      <c:if test="${ loginSession == null}">
      	<li><a href="#" data-toggle="modal" data-target="#myModal">로그인</a></li>
      </c:if>
      <c:if test="${ loginSession != null}">
      	<li class="dropdown">
      		<a href="" class="dropdown-toggle" data-toggle="dropdown">${ loginSession.user_name }<b class="caret"></b></a>
	      	<ul class="dropdown-menu">
	        	<li><a href="recipe_userModify.scv">마이 페이지</a></li>
	       		<li><a href="recipe_logout.scv">로그아웃</a></li>
	      </ul>
	    </li>
      </c:if>
    </ul>
    <form class="navbar-form navbar-right" role="search">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="검색">
      </div>
      <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
    </form>

  </div><!-- /.navbar-collapse -->
</nav>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" 
               aria-hidden="true">×
            </button>
            <h4 class="modal-title" id="myModalLabel">
               Cook Community에 오신걸 환영합니다.
            </h4>
         </div>
         <div class="modal-body">
         	<form action="recipe_login.scv" method="post" role="form"> 
	         	<div class="row">
	         		<div class="col-md-6">
	         			<div align="center">
					    <div class="form-group">   
					        <input type="text" name="user_id" class="form-control" placeholder="아이디"> 
					    </div>       
					    <div class="form-group">  
					        <input type="password" name="pwd" class="form-control" placeholder="패스워드"> 
					    </div> 
					    
					    <p/>
					    </div>
	  					<div class="container">
	  						<a href="recipe_CustomerCenter.scv"><small>도움이 필요하신가요?</small></a>
	  						<p/>
	  					</div>
  					</div>
  					<div class="col-md-6">
		  				<button type="submit" class="btn btn-primary btn-lg">
			               	로그인
			            </button>
		            </div>
	           	</div>
           	</form> 
         </div>
         
         <div class="modal-footer">
         	<a href="recipe_join.scv" class="btn btn-default">
               	회원가입
            </a>
            <button type="button" class="btn btn-default" data-dismiss="modal">
               Close
            </button> 
         </div>
        
      </div><!-- /.modal-content -->
   </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

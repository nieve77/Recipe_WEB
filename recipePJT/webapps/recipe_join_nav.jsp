<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="recipeNav recipeNav_inverse recipeNav-fixed-top" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="container3">  
  <div>    
    <a class="recipeNav-brand" href="index.scv"><img src="./imgs/logo.png"> </a>
  </div>
 
  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="navline_Cus">
    <ul class=" navCus recipe_nav ">
      <c:if test="${ loginSession == null}">
      	<li><a href="#" data-toggle="modal" data-target="#myModal">로그인</a></li>
      </c:if>
      <c:if test="${ loginSession != null}">
      	<li class="dropdown">
      		<a href="" class="dropdown-toggle" data-toggle="dropdown">${ loginSession.name }<b class="caret"></b></a>
	      	<ul class="dropdown-menu">
	        	<li><a href="recipe_memberModify.scv">회원정보</a></li>
	        	<li><a href="#">서브메뉴 2</a></li>
	       		<li><a href="recipe_logout.scv">로그아웃</a></li>
	      </ul>
	    </li>
      </c:if>
     
    </ul>
  </div><!-- /.navbar-collapse -->
  </div>
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
	  						<a href=""><small>도움이 필요하신가요?</small></a>
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
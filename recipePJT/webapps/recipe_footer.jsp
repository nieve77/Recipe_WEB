<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="backColor">
	<div class="col-md-12">
		<div class="footerfontCus">
			<a href="index.scv"><img alt="" src="./imgs/logo.png"></a>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>&nbsp;&nbsp;&nbsp;<a href="recipe_join.scv">계정ID 만들기</a>
			&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>&nbsp;&nbsp;&nbsp;
			<c:if test="${ loginSession == null}">
				<a href="" data-toggle="modal" data-target="#myModal">마이 페이지</a>
			</c:if>
			<c:if test="${ loginSession != null}">
				<a href="recipe_userModify.scv">마이 페이지</a>
			</c:if>
		</div>
	</div>
</div>
<div id="maia-footer-global">
	<div class="maia-aux">
		<div class="maia-locales">
		<img alt="" src="./imgs/flag_large.png">
			All contents copyright &#169; 2015 CookCommunity.com 
		</div>
	</div>
</div>
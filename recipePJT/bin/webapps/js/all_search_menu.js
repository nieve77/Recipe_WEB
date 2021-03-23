var recipeKategorie = ["밥","국","찌개","볶음","면","비빔","구이","김치","찜","튀김","전","베이커리","스프","소스","샐러드"];

$(document).ready(function(){
	  $("#recipeKategorie1").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[0])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie2").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[1])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie3").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[2])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie4").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[3])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie5").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[4])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie6").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[5])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie7").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[6])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie8").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[7])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie9").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[8])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie10").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[9])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie11").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[10])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie12").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[11])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie13").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[12])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie14").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[13])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
	  $("#recipeKategorie15").on("click",function() {
		  $.ajax({
			  url : "recipe_All_menuSearch.scv?recipe_category="+escape(encodeURIComponent(recipeKategorie[14])),
				type : "post",
				dataType : "json",
				success : function(data) {
					/* alert("테스트"); */
					var txt="";
					var count;
					$(".menuPage").empty();
					/* txt += "<div class='row'>"; */
			        $.each(data,function(index,obj) {
			        	/* alert(this.value + "-" + this.checked);  */
			    	    /* count = 0; */
			    	   /*  while(count<3) { */
			    		  txt += "<div class='col-md-4 div-test'>"+
			    		        "<img class='img-rounded img-responsive' src='./upload/"+obj.recipe_path+"'>"+
			    		        "<p>"+obj.recipe_name+"</p>"+
			    		        "<a class='btn btn-info btn-block' href='recipe_cookView.scv?recipe_board_num="+obj.recipe_board_num+"' >"+
			    		        "레시피 보기"+"</a>"+
			    		        "</div>";
			        }); 
			        /* alert("처리"); */
					txt += "<c:if test='${ loginSession != null}'>"+
						   "<div class='col-md-12 div-test'>"+
					       "<a href='recipe_writeForm.scv' class='btn btn-info btn-block'>"+
					       "글쓰기"+"</a>"+
					       "</c:if>";
					$('body').css('background-color','#fff');
			        $(".menuPage").append(txt);
		       }
		  });
	  });
});

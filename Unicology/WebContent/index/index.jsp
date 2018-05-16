<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Archivo+Black|Roboto+Slab');
@import url(http://api.mobilis.co.kr/webfonts/css/?fontface=NanumGothicWeb);
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
      /* Main */
      #box{}
      #Main_img_box{
            background-image:url(image/index_Img/Main-img.jpg);
            background-repeat: no-repeat;
            background-position: center;
            background-size: 100%;
            opacity: 0.9;
      }
      #Main_img{
            width: 100%;
            height: 600px;
      }
      #Main_subject_box{
            text-align: center;
            padding: 15px 0 15px 0;
            line-height:60px;
            width: 100%;
            background-color: #353535;
      }
      .Main_subject{
            color: white;
            display: inline-block;
      }
      #Main_subject1{
            font-size: 35px;
            font-family: 'Archivo Black', sans-serif;
      }
      #Main_subject2{
            font-size: 29px;
            font-family: 'Roboto Slab', serif;
            font-family: 'Archivo Black', sans-serif;
            margin-left: 50px;
      }
      .Main_rhom{
            width: 100%;
            height:180px;
            text-align: center;
            padding-top: 17px;
      }
      #Main_rhom2{
      		padding-bottom: 143px;
      }
      .Main_rhom > a > img{
            width: 310px;
            margin: -7px 30px;
      }
      a{
            cursor: pointer;
      }
      #point_subject{
            color:#27C7C6;
            font-size: 25px;
            text-align: center;  
            font-weight: 700;   
      }
      #Index_function_info_wrap{
      		width: 100%;
      		background-color: #f6f6f6;
      		height: 600px;
      }
      #Index_function_info1{
      		width: 70%;
      		margin: 0 auto;
      		height: 600px;
      		position: relative;
      }
      #info1_img{
      	line-height: 500px;
      	position: absolute;
      	right: 0;
      	top: 120px;
      	height: 360px;
      }
      #info1_content{
      	height: 450px;
      	width: 600px;
      	position: absolute;
      	bottom: 75px;
      	box-shadow: 4px 4px 5px gray;
      }
      #info1_title{
      	height: 80px;
      	width: 600px;
      	background-color: #8CAF51;
      	color: white;
      	text-align: center;
      	line-height: 80px;
      	font-size: 30px;
      	font-family: 'Nanum Gothic', sans-serif;
      	font-weight: 900;
      }
      #info1_text{
      	background-color: #FEFEFE;
      	height: 370px;
      	padding:0 50px;
      	word-wrap: normal;
      }
      #Index_function_info_wrap2{
      		width: 100%;
      		height: 600px;
      }
      #Index_function_info2{
      		width: 70%;
      		margin: 0 auto;
      		height: 600px;
      		position: relative;
      }
      #info2_img{
      	line-height: 500px;
      	position: absolute;
      	right: 0;
      	top: 120px;
      	height: 360px;
      }
      #info2_content{
      	height: 450px;
      	width: 600px;
      	position: absolute;
      	bottom: 75px;
      	box-shadow: 4px 4px 5px gray;
      }
      #info2_title{
      	height: 80px;
      	width: 600px;
      	background-color: #4EA3AF;
      	color: white;
      	text-align: center;
      	line-height: 80px;
      	font-size: 30px;
      	font-family: 'Nanum Gothic', sans-serif;
      	font-weight: 900;
      }
      #info2_text{
      	background-color: #FEFEFE;
      	height: 370px;
      	padding:0 50px;
      	word-wrap: normal;
      }
      #Index_function_info_wrap3{
      		width: 100%;
      		background-color: #f6f6f6;
      		height: 600px;
      }
      #Index_function_info3{
      		width: 70%;
      		margin: 0 auto;
      		height: 600px;
      		position: relative;
      }
      #info3_img{
      	line-height: 500px;
      	position: absolute;
      	right: 0;
      	top: 120px;
      	height: 360px;
      }
      #info3_content{
      	height: 450px;
      	width: 600px;
      	position: absolute;
      	bottom: 75px;
      	box-shadow: 4px 4px 5px gray;
      }
      #info3_title{
      	height: 80px;
      	width: 600px;
      	background-color: #AF4E5E;
      	color: white;
      	text-align: center;
      	line-height: 80px;
      	font-size: 30px;
      	font-family: 'Nanum Gothic', sans-serif;
      	font-weight: 900;
      }
      #info3_text{
      	background-color: #FEFEFE;
      	height: 370px;
      	padding:0 50px;
      	word-wrap: normal;
      }
      
      #scroll_top{
      	width: 80px;
      	height: 80px;
      	position: fixed;
      	right: 0;
      	bottom: 0;
      	z-index: 9999;
      }
      #top_btn{
      	width: 80px;
      	height: 80px;
      }
      #keyword_box_title{
      	width: 100%;
      	height: 100px;
      	background-color: #F0C133;
      	color: white;
      	line-height: 100px;
      	text-align: center;
      	font-family: 'Nanum Gothic', sans-serif;
      	font-weight: 600;
      	font-size: 17px;
      }
      #keyword_box{
      	width: 100%;
      	height: 650px;
      	background-color: #fff9e4;
      }
      #keyword_title{
      	width: 80%;
      	margin: 0 auto;
      }
      #company_keyword_title{
      	color: #3e4b60;
      	font-size: 18px;
      	line-height: 70px;
      	width: 50px;
      	padding: 0 15px;
      }
      #company_keyword_content{
      	color: #888;
      	font-size: 14px;
      }
      #keyword_wrap{
      	width: 80%;
      	margin: 0 auto;
      }
      .groups{
      	width: 220px;
      	border-radius: 4px;
      	border: 1px solid #ddd;
      	box-sizing:border-box; 
      	display: inline-block;
      }
      .group{
      	background: white;
      	height: 40px;
      	line-height: 40px;
      	border-top: 1px solid #ddd;
      	color: #999;
      }
      #group_total{
      	border-top: 0;
      }
      .keyword_view{
      	display: inline-block;
      	background-color: white;
      	height: 491px;
      	width: 80%;
      	float: right;
      	border-radius: 20px;
      	text-align: center;
      	line-height: 491px;
      }
      .group_in{
      	color: #999;
      	margin-left: 25px;
      }
      .keyword_box_tag{
      	background-color: white;
      	width: 5px;
      	height: 18px;
      	display: inline-block;
      }
      /* 모달 끝 */
      #go_write{
      	background-color: #8CAF51;
      	color: white;
      	width: 240px;
      	height: 45px;
      	display: block;
      	font-size: 18px;
      	font-weight: bold;
      	line-height: 45px;
      	border-radius: 8px;
      	margin: 0 auto;
      	text-align: center;
      	margin-top: 250px;
      }
      #go_keyword{
      	background-color: #4EA3AF;
      	color: white;
      	width: 300px;
      	height: 45px;
      	display: block;
      	font-size: 18px;
      	font-weight: bold;
      	line-height: 45px;
      	border-radius: 8px;
      	margin: 0 auto;
      	text-align: center;
      	margin-top: 250px;
      }
      #go_resume{
      	background-color: #AF4E5E;
      	color: white;
      	width: 210px;
      	height: 45px;
      	display: block;
      	font-size: 18px;
      	font-weight: bold;
      	line-height: 45px;
      	border-radius: 8px;
      	margin: 0 auto;
      	text-align: center;
      	margin-top: 250px;
      }
      #example_keyword{
      	height: 480px;
      	width: 910px;
      }
      #group_total2{
      	color: #ff6813;
      }
      #keyword_box_tag1{
      	background-color: #ff6813;
      }
      #keyword_view1 img, #keyword_view1{
      	height: 491px;
      	width: 972px;
      	border-radius: 20px;
      	display: none;
      }
      #keyword_view2 img, #keyword_view2{
      	width: 973px;
      	height: 490px;
      	border-radius: 20px;
      	display: none;
      }
       #keyword_view3 img, #keyword_view3{
      	width: 972px;
      	height: 491px;
      	border-radius: 20px;
      	display: none;
      }
      #keyword_view4, #keyword_view6,#keyword_view7,#keyword_view8,#keyword_view9
      ,#keyword_view12,#keyword_view13{
      	display: none;
      }
       #keyword_view5 img, #keyword_view5{
      	width: 972px;
      	height: 491px;
      	border-radius: 20px;
      	display: none;
      }
       #keyword_view10 img, #keyword_view10{
      	width: 972px;
      	height: 491px;
      	border-radius: 20px;
      	display: none;
      }
       #keyword_view11 img, #keyword_view11{
      	width: 972px;
      	height: 491px;
      	border-radius: 20px;
      	display: none;
      }
       #keyword_view14 img, #keyword_view14{
      	width: 972px;
      	height: 491px;
      	border-radius: 20px;
      	display: none;
      }
</style>
</head>
<body>
      <%@include file="../include/header.jsp"%>
      <div id="box">
	  <input type="hidden" id="loginsession" value="${sessionScope.loginUser.mid}">    
	      <!-- Main_img -->
	      <div id="Main_img_box">
	            
	            <div class="Main_rhom">
	                  <a href="#" id="write"><img alt="rhombus"src="image/index_Img/main1_1.png"id="main1"></a>
	                  <a href="#" id="keyword"><img alt="rhombus"src="image/index_Img/main2_1.png"id="main2"></a>
	                  <a href="#" id="resume"><img alt="rhombus"src="image/index_Img/main3_1.png"id="main3"></a>
	            </div>
	            <div class="Main_rhom" id="Main_rhom2">
	                  <a href="#" id="mypage"><img alt="rhombus"src="image/index_Img/main4_1.png"id="main4"></a>
	                  <a href="joblist.unicol" id="careers"><img alt="rhombus"src="image/index_Img/main5_1.png"id="main5"></a>
	            </div>
	      </div>
	      
	      <!-- Main-img-bottom -->
	      <div id="Main_subject_box">
	            <div>
	                  <div id="point_subject">3가지의 핵심기능</div>
	            </div>
	            <div class="Main_subject" id="Main_subject1">핵심 KEYWORD ,</div>
	            <div class="Main_subject" id="Main_subject2">자소서도 Smart하게</div>
	      </div>
	      
	      <!-- Main_info -->
	      <div id="Index_function_info_wrap">
	            <div id="Index_function_info1">
	            	<img alt="info1" src="image/index_Img/info1.png" id="info1_img">
	            	<div id="info1_content">
	            		<div id="info1_title">
	            			자기소개서 작성
	            		</div>
	            		<div id="info1_text">
	            			원하는 기업을 선택하면 기업에 맞는 자소서 작성가능 + 
	            			합격자소서  문구 랜덤 선택~ (설명)
	            			<a href="jasowrite.unicol" id="go_write">자기소개서 작성페이지로 이동</a>
	            		</div>
	            	</div>
	            </div>
	      </div>
	       <div id="Index_function_info_wrap2">
	            <div id="Index_function_info2">
	            	<img alt="info2" src="image/index_Img/keyword.jpg" id="info2_img">
	            	<div id="info2_content">
	            		<div id="info2_title">
	            			직무별 합격자소서의 핵심키워드 분석
	            		</div>
	            		<div id="info2_text">
	            			빅데이터를 이용하여 자주나오는 키워드 분석 한눈에 보기쉽게~(설명)
	            			<a href="#" id="go_keyword">자기소개서 핵심 키워드페이지로 이동</a>
	            		</div>
	            	</div>
	            </div>
	      </div>
	       <div id="Index_function_info_wrap3">
	            <div id="Index_function_info3">
	            	<img alt="info3" src="image/index_Img/resume.jpg" id="info3_img">
	            	<div id="info3_content">
	            		<div id="info3_title">
	            			이력서관리
	            		</div>
	            		<div id="info3_text">
	            			빅데이터를 이용하여 자주나오는 키워드 분석 한눈에 보기쉽게~(설명)
	            			<a href="resumeInsert.unicol" id="go_resume">이력서관리페이지로 이동</a>
	            		</div>
	            	</div>
	            </div>
	      </div>
	      <div id="keyword_box_title">
	      	개인의 장점과 맞는 키워드를 찾아서 자기소개서를 작성해보세요.
	      </div>
	      <div id="keyword_box">
	      	<div id="keyword_title">
	      		<span id="company_keyword_title">기업핵심 키워드</span>
	      		<span id="company_keyword_content">합격자소서에 많이 포함된 핵심 키워드입니다.</span>
	      	</div>
	      	<div id="keyword_wrap">
		      	<div class="groups">
		      		<div class="group" id="group_total"><div class="keyword_box_tag" id="keyword_box_tag1"></div><label class="group_in" id="group_total2">전체</label></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag2"></div><a href="#keyword_box_title" class="group_in" id="group_manage_office">경영/사무</a></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag3"></div><a href="#keyword_box_title" class="group_in" id="group_market_trade_circulation">마케팅/무역/유통</a></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag4"></div><a href="#keyword_box_title" class="group_in" id="group_sales_consulation">영업/고객상담</a></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag5"></div><a href="#keyword_box_title" class="group_in" id="group_it_internet">IT/인터넷</a></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag6"></div><a href="#keyword_box_title" class="group_in" id="group_research_design">연구개발/설계</a></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag7"></div><a href="#keyword_box_title" class="group_in" id="group_production_manufacturing">생산/제조</a></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag8"></div><a href="#keyword_box_title" class="group_in" id="group_specialty_special">전문/특수직</a></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag9"></div><a href="#keyword_box_title" class="group_in" id="group_design">디자인</a></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag10"></div><a href="#keyword_box_title" class="group_in" id="group_media">미디어</a></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag11"></div><a href="#keyword_box_title" class="group_in" id="group_service">서비스</a></div>
		      		<div class="group"><div class="keyword_box_tag" id="keyword_box_tag12"></div><a href="#keyword_box_title" class="group_in" id="group_build">건설</a></div>
		      	</div>
		      	<div class="keyword_view" id="keyword_view"><img alt="example_keyword" src="image/index_Img/main_keyword_all.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view1"><img alt="example_keyword" src="image/index_Img/main_keyword1.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view2"><img alt="example_keyword" src="image/index_Img/main_keyword2.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view3"><img alt="example_keyword" src="image/index_Img/main_keyword3.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view4"><img alt="example_keyword" src="image/index_Img/main_keyword4.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view5"><img alt="example_keyword" src="image/index_Img/main_keyword5.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view6"><img alt="example_keyword" src="image/index_Img/main_keyword6.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view7"><img alt="example_keyword" src="image/index_Img/main_keyword7.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view8"><img alt="example_keyword" src="image/index_Img/main_keyword8.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view9"><img alt="example_keyword" src="image/index_Img/main_keyword9.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view10"><img alt="example_keyword" src="image/index_Img/main_keyword10.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view11"><img alt="example_keyword" src="image/index_Img/main_keyword11.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view12"><img alt="example_keyword" src="image/index_Img/main_keyword12.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view13"><img alt="example_keyword" src="image/index_Img/main_keyword13.png" id="example_keyword"></div>
		      	<div class="keyword_view" id="keyword_view14"><img alt="example_keyword" src="image/index_Img/main_keyword14.png" id="example_keyword"></div>
		      	
	      	</div>
	      </div>
	      
	      <!-- scroll_top -->
		  <div id="scroll_top">
			  <a href="#">
			  	<img alt="top_button" src="image/index_Img/side-triangle.png" id="top_btn">
			  </a>
		  </div>	
      </div>
      
      <%@include file="../include/footer.jsp"%>
</body>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
            
            // 자소서핵심키워드 위치이동
           $("#keyword").click(function(){
            	var scrollPosition = $("#Index_function_info_wrap").offset().top;
                 $('html, body').animate({
                 	scrollTop: 1400
                 }, 500);
      	  	});
            
            // 자소서핵심키워드 hover
            $("#keyword").hover(function(){
            	$("#main2").attr("src","image/index_Img/main2_2.png");
            },function(){
            	$("#main2").attr("src","image/index_Img/main2_1.png");
            });
            
            // 자기소개서작성 위치이동
            $("#write").click(function(){
            	var scrollPosition = $("#Index_function_info_wrap").offset().top;
                 $('html, body').animate({
                 	scrollTop: 800
                 }, 500);
      	  	});
            
            // 자기소개서 hover
            $("#write").hover(function(){
            	$("#main1").attr("src","image/index_Img/main1_2.png");
            },function(){
            	$("#main1").attr("src","image/index_Img/main1_1.png");
            });
            
         	// 마이페이지 hover
            $("#mypage").hover(function(){
            	$("#main4").attr("src","image/index_Img/main4_2.png");
            },function(){
            	$("#main4").attr("src","image/index_Img/main4_1.png");
            });
            
            // 이력서관리 이동
            $("#resume").click(function(){
            	var scrollPosition = $("#Index_function_info_wrap").offset().top;
                 $('html, body').animate({
                 	scrollTop: 2000
                 }, 500);
      	  	});
            
         	// 이력서관리 hover
            $("#resume").hover(function(){
            	$("#main3").attr("src","image/index_Img/main3_2.png");
            },function(){
            	$("#main3").attr("src","image/index_Img/main3_1.png");
            });
         	
         	// 채용공고 hover
            $("#careers").hover(function(){
            	$("#main5").attr("src","image/index_Img/main5_2.png");
            },function(){
            	$("#main5").attr("src","image/index_Img/main5_1.png");
            });
         	
        	// top버튼 이동
            window.onscroll = function(){scrollFunction()};
            
            function scrollFunction(){
                  if(document.body.scrollTop > 20 || document.documentElement.scrollTop > 20){
                       document.getElementById("top_btn").style.display="block";
                  }else{
                       document.getElementById("top_btn").style.display="none";
                  }
            }
        	
            $("#top_btn").click(function(){
                 $('html, body').animate({scrollTop: 0}, 300);
      	  	});
            
            // 직업분류
            $(".group_in").click(function() {
            	  $(".group_in").css("color","#999");
            	  $(".group_in").siblings().css("background-color","white");
            	  var id= $(this).attr("id");
            	  $(this).css("color","#ff6813");
            	  $(this).siblings().css("background-color","#ff6813");
            	  
            	  if(id=="group_total2"){
  					$("#keyword_view").css("display","block");  
  					$("#keyword_view img").css("display","block");  
  					$(".keyword_view").not("#keyword_view").css("display","none");
              	  }else if(id=="group_manage_office"){
					$("#keyword_view1").css("display","block");  
					$("#keyword_view1 img").css("display","block");  
					$(".keyword_view").not("#keyword_view1").css("display","none");
            	  }else if(id=="group_market_trade_circulation"){
					$("#keyword_view2").css("display","block");  
					$("#keyword_view2 img").css("display","block");  
					$(".keyword_view").not("#keyword_view2").css("display","none");
            	  }else if(id=="group_sales_consulation"){
					$("#keyword_view3").css("display","block");  
					$("#keyword_view3 img").css("display","block");  
					$(".keyword_view").not("#keyword_view3").css("display","none");
            	  }else if(id=="group_it_internet"){
					$("#keyword_view4").css("display","block");  
					$("#keyword_view4 img").css("display","block");  
					$(".keyword_view").not("#keyword_view4").css("display","none");
            	  }else if(id=="group_research_design"){
					$("#keyword_view5").css("display","block");  
					$("#keyword_view5 img").css("display","block");  
					$(".keyword_view").not("#keyword_view5").css("display","none");
            	  }else if(id=="group_production_manufacturing"){
					$("#keyword_view6").css("display","block");  
					$("#keyword_view6 img").css("display","block");  
					$(".keyword_view").not("#keyword_view6").css("display","none");
            	  }else if(id=="group_specialty_special"){
					$("#keyword_view7").css("display","block");  
					$("#keyword_view7 img").css("display","block");  
					$(".keyword_view").not("#keyword_view7").css("display","none");
            	  }else if(id=="group_research_design"){
					$("#keyword_view8").css("display","block");  
					$("#keyword_view8 img").css("display","block");  
					$(".keyword_view").not("#keyword_view8").css("display","none");
            	  }else if(id=="group_design"){
					$("#keyword_view9").css("display","block");  
					$("#keyword_view9 img").css("display","block");  
					$(".keyword_view").not("#keyword_view9").css("display","none");
            	  }else if(id=="group_media"){
					$("#keyword_view10").css("display","block");  
					$("#keyword_view10 img").css("display","block");  
					$(".keyword_view").not("#keyword_view10").css("display","none");
            	  }else if(id=="group_service"){
					$("#keyword_view11").css("display","block");  
					$("#keyword_view11 img").css("display","block");  
					$(".keyword_view").not("#keyword_view11").css("display","none");
            	  }else if(id=="group_build"){
					$("#keyword_view12").css("display","block");  
					$("#keyword_view12 img").css("display","block");  
					$(".keyword_view").not("#keyword_view12").css("display","none");
            	  }
            });
            
            // 2018.05.15 박아영 추가
            // 마이페이지 클릭시 로그인 유무 판단하여 페이지 이동
            $("#mypage").click(function() {
            	var loginYn = $("#loginsession").val();
            	
            	if(loginYn == "") {
            		$(".loginMsg").css("display","block");
            		$("#myModal").css("display","block");
            	} else {
            		location.href = "mypage.unicol";
            	}
            });
            
            $(".close").click(function(){
            	$(".loginMsg").css("display","none");	
            });
            
            $("#header_menu_mypage").click(function() {
				var loginYn = $("#loginsession").val();
            	
            	if(loginYn == "") {
            		$(".loginMsg").css("display","block");
            		$("#myModal").css("display","block");
            	} else {
            		location.href = "mypage.unicol";
            	}	
            });
      });
</script>
</html>
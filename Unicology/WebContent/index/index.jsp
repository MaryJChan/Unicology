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
            background-image:url(../image/index_Img/Main-img.jpg);
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
            margin: 0 30px;
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
      	line-height:280px;
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
      	line-height:280px;
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
      	line-height:280px;
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
      	padding-left: 25px;
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
      }
      .keyword_box_tag{
      	back
      }
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
            
            
            /* hover기능 추가하기 !! */
            
            // 기업자소서 이동
            $("#coverletter").on("click",function(){
                  alert("기업자소서페이지로 이동할예정"); 
            });
            
            // 자소서핵심키워드 이동
            $("#keyword").on("click",function(){
                  alert("자소서핵심키워드로 이동할예정"); 
            });
            
            // 자기소개서작성 이동
            $("#write").on("click",function(){
                  alert("자기소개서작성으로 이동할예정"); 
            });
            
            // 마이페이지 이동
            $("#mypage").on("click",function(){
                  alert("마이페이지로 이동할예정");
            });
            
            // 이력서관리 이동
            $("#resume").on("click",function(){
                  alert("이력서관리로 이동할예정");
            });
            
            $("#group_total2").on("click",function(){
            	$("#group_total2").css("color","#ff6813");
            });
      });
</script>
</head>
<body>
      <%@include file="../include/header.jsp"%>
      <div id="box">
	      
	      <!-- Main_img -->
	      <div id="Main_img_box">
	            
	            <div class="Main_rhom">
	                  <a href="#" id="coverletter"><img alt="rhombus"src="../image/index_Img/rhombus1.png"></a>
	                  <a href="#" id="write"><img alt="rhombus"src="../image/index_Img/rhombus3.png"></a>
	                  <a href="#" id="resume"><img alt="rhombus"src="../image/index_Img/rhombus5.png"></a>
	            </div>
	            <div class="Main_rhom" id="Main_rhom2">
	                  <a href="#" id="keyword"><img alt="rhombus"src="../image/index_Img/rhombus2.png"></a>
	                  <a href="../mypage/mypage.jsp" id="mypage"><img alt="rhombus"src="../image/index_Img/rhombus4.png"></a>
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
	            	<img alt="info1" src="../image/index_Img/info1.png" id="info1_img">
	            	<div id="info1_content">
	            		<div id="info1_title">
	            			자기소개서 작성
	            		</div>
	            		<div id="info1_text">
	            			원하는 기업을 선택하면 기업에 맞는 자소서 작성가능 + 
	            			합격자소서  문구 랜덤 선택~ (설명)
	            		</div>
	            	</div>
	            </div>
	      </div>
	       <div id="Index_function_info_wrap2">
	            <div id="Index_function_info2">
	            	<img alt="info2" src="../image/index_Img/keyword.jpg" id="info2_img">
	            	<div id="info2_content">
	            		<div id="info2_title">
	            			직무별 합격자소서의 핵심키워드 분석
	            		</div>
	            		<div id="info2_text">
	            			빅데이터를 이용하여 자주나오는 키워드 분석 한눈에 보기쉽게~(설명)
	            		</div>
	            	</div>
	            </div>
	      </div>
	       <div id="Index_function_info_wrap3">
	            <div id="Index_function_info3">
	            	<img alt="info3" src="../image/index_Img/resume.jpg" id="info3_img">
	            	<div id="info3_content">
	            		<div id="info3_title">
	            			직무별 합격자소서의 핵심키워드 분석
	            		</div>
	            		<div id="info3_text">
	            			빅데이터를 이용하여 자주나오는 키워드 분석 한눈에 보기쉽게~(설명)
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
		      		<div class="group" id="group_total"><div class="keyword_box_tag" id="keyword_box_tag1"></div><a href="#keyword_box_title" class="group_in" id="group_total2">전체</a></div>
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
		      	<div class="keyword_view">!키워드 시각화해서 보여줄 공간!</div>
	      	</div>
	      </div>
	      
	      <!-- scroll_top -->
		  <div id="scroll_top">
			  <a href="#">
			  	<img alt="top_button" src="../image/index_Img/side-triangle.png" id="top_btn">
			  </a>
		  </div>	
      </div>
      
      <%@include file="../include/footer.jsp"%>
</body>
</html>
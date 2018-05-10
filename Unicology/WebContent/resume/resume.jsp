<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
    	   /* ----------------------------------------수상추가---------------------------------------- */
            $("#award_plus_btn1").on("click",function(){
            	$("#award_plus_btn2").css("display","block");
   				$("#award_plus_btn1").css("display","none");
            	$("#award_container").appendChild($("#award_container2").css("display","block"));
   				
            });
            $("#award_plus_btn2").on("click",function(){
   				$("#award_plus_btn2").css("display","none");
   				$("#award_plus_btn3").css("display","block");
   				$("#award_container2").appendChild($("#award_container3").css("display","block"));
       		});
            
            /* !!!!!!!!!------------------------------수상제거--------------------------------!!!!!!!!! */
            $("#award_x").on("click",function(){
            	$("#award_container").remove();
            	$("#award_plus_btn1").remove();
            });
            $("#award_x2").on("click",function(){
            	$("#award_container2").remove();
            	$("#award_plus_btn2").remove();
            });
            
            /* ----------------------------------------해외경험추가---------------------------------------- */
            $("#abroad_plus_btn").on("click",function(){
            	$("#abroad_plus_btn").css("display","none");
   				$("#abroad_plus_btn2").css("display","block");
            	$("#abroad_container").appendChild($("#abroad_container2").css("display","block"));
            	
            });
            $("#abroad_plus_btn2").on("click",function(){
            	$("#abroad_plus_btn2").css("display","none");
   				$("#abroad_plus_btn3").css("display","block");
            	$("#abroad_container2").appendChild($("#abroad_container3").css("display","block"));
            });
            
            /* !!!!!!!!!------------------------------해외경험제거--------------------------------!!!!!!!!! */
            $("#abroad_x").on("click",function(){
            	$("#abroad_container").remove();
            	$("#abroad_plus_btn1").remove();
            });
            $("#abroad_x2").on("click",function(){
            	$("#abroad_container2").remove();
            	$("#abroad_plus_btn1").remove();
            });
            
            /* ----------------------------------------어학추가---------------------------------------- */
            $("#language_plus_btn").on("click",function(){
            	$("#language_plus_btn").css("display","none");
   				$("#language_plus_btn2").css("display","block");
            	$("#language_container").appendChild($("#language_container2").css("display","block"));
            	
            });
            
            /* =======================================수상메뉴 추가/제거 =======================================*/
            $("#resume_plus_btn_award").on("click",function(){
            	$(".award_box").css("display","block");
            	$("#resume_plus_btn_award").css("color","#3599FD");
            	$("#trophy").attr("src","../image/resume_img/trophy2.png");
            	$("#award_plus").attr("src","../image/resume_img/minus2.png");
	            });
      
		      /* =======================================해외경험 추가/제거 =======================================*/
		      $("#resume_plus_btn_abroad").on("click",function(){
		      	$(".abroad_box").css("display","block");
		      	$("#resume_plus_btn_abroad").css("color","#3599FD");
		      	$("#air-transport").attr("src","../image/resume_img/air-transport2.png");
		      	$("#abroad_plus").attr("src","../image/resume_img/minus2.png");
		      	});
		      
		      /* =======================================어학 추가/제거 =======================================*/
		      $("#resume_plus_btn_language").on("click",function(){
		      	$(".language_box").css("display","block");
		      	$("#resume_plus_btn_language").css("color","#3599FD");
		      	$("#earth").attr("src","../image/resume_img/earth2.png");
		      	$("#language_plus").attr("src","../image/resume_img/minus2.png");
		      	});
		      
		      /* =======================================포트폴리오 추가/제거 =======================================*/
		      $("#resume_plus_btn_portfolio").on("click",function(){
		      	$(".portfolio_box").css("display","block");
		      	$("#resume_plus_btn_portfolio").css("color","#3599FD");
		      	$("#portfolio").attr("src","../image/resume_img/portfolio2.png");
		      	$("#portfolio_plus").attr("src","../image/resume_img/minus2.png");
		      	});
		      
		      /* =======================================취업우대 추가/제거 =======================================*/
		      $("#resume_plus_btn_bottom").on("click",function(){
		      	$(".protect_box").css("display","block");
		      	$("#resume_plus_btn_bottom").css("color","#3599FD");
		      	$("#hand-shake").attr("src","../image/resume_img/hand-shake2.png");
		      	$("#protect_plus").attr("src","../image/resume_img/minus2.png");
		      	});
		      
		      
		 });
</script>
<style type="text/css">
      body,ul{
            margin: 0;
            padding: 0;
      }
      button{
            cursor: pointer;
      }
      textarea{
      		resize: none;
      }
      select{
      		outline: none;
      }
      .resume_page{
            background-color: #ececec;
            width: 100%;
            padding-bottom: 50px;
      }
      .resume_inner_page{
            width: 80%;
            margin: 0 auto;
      }
      .resume_title{
            width: 78%;
            height: 80px;
            border: 0;
            margin-bottom: 20px;
      }
      #resume_title{
            width: 98%;
            height:80px;
            font-size: 30px;        
            border: 0;
            padding-left: 20px;
      }
      
      /* 수상 */
      .award_box{
      		display: none;
      }
      .award_title{
            margin-bottom: 14px;
            color: #333;
            font-weight: bold;
            font-size: 20px;
            width: 75%;
      }
      #award_container{
            width: 78%;
            background-color: #fff;
            border:1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
      }
      #award_container2{
      		width: 78%;
            background-color: #fff;
            border:1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
            display: none;
      }
       #award_container3{
      		width: 78%;
            background-color: #fff;
            border:1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
            display: none;
      }
      .award{
            height: 62px;
            margin-left: 10px;
            border: 1px solid #ddd;
            box-sizing: border-box;
            text-align: left;
            display: inline-block;
            outline: none;
            font-size: 16px;
            padding: 0 15px;
      }
      .award_div{
            display: inline-block;
      }
      #award_title{
            width: 380px;
            margin-bottom: 10px;
      }
      #award_inst{
            width: 254px;
      }
      #award_year{
            width: 115px;
      }
      .test_div, #test{
            width: 80%;
            height: 100px;
            border:1px solid red;
      }
      .test_div{
            position: relative;
      }
      #test_label{
            position: absolute;
            left: 35px;
            top: 50px;
            transition:all 1s ease .1s;
      }
      .x_btn{
            width: 35px;
            height: 35px;
            background-color: #BABABA;
            color: white;
            font-size: 30px;
            text-align: center;
            line-height: 35px;
            border: none;
            position: absolute;
            right: 0;
            top: -1px;
      }
      #award_content_div{
            border: 1px solid #dbe0e9;
            width: 100%;
            margin-left: 10px;
            padding: 10px 0;
      }
      #award_content{
            box-sizing: border-box;
            display: block;
            width: 100%;
            height: 56px;
            padding: 10px 15px;
            border: 0;
            color: #333;
            outline: none;
            font-size: 16px;
      }
      #award_content_label{
            color: #999;
            transition: all 0.2s ease-out;
            font-size: 11px;
            padding: 5px 15px;
      }
      #award_title_label{
            position: absolute;
            top:28px;
            left:50px;
            color: #999;
            font-size: 11px;
      }
      #award_inst_label{
            position: absolute;
            top:28px;
            left:445px;
            color: #999;
            font-size: 11px;
      }
      #award_year_label{
            position: absolute;
            top:28px;
            left:710px;
            color: #999;
            font-size: 11px;
      }
      #award_btn{
            width: 20px;
            height: 20px;
            vertical-align: middle;
            padding: 0 8px;
      }
      .plus_btn{
            margin-bottom: 34px;
            width: 78%;
            height: 50px;
            text-align: center;
            line-height: 50px;
            border-top: 1px solid #eee;
            box-sizing: border-box;
            background-color: #fff;
            border: none;
            font-size: 16px;
      }
      #award_plus_btn1{
      		display: block;
      }
      #award_plus_btn2{
      		display:none;
      }
      #award_plus_btn3{
      		display:none;
      		outline: none;
      }
      #abroad_container{
            width: 78%;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
      }
      #abroad_container2{
            width: 78%;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
            display: none;
      }
      #abroad_container3{
            width: 78%;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
            display: none;
      }
      #abroad_btn{
            width: 20px;
            height: 20px;
            vertical-align: middle;
            padding: 0 8px;
      }
      
      /* 해외경험 */
      .abroad_box{
      		display: none;
      }
      .abroad_title{
            margin-bottom: 14px;
            color: #333;
            font-weight: bold;
            font-size: 20px;
            width: 75%;
      }
      #country_name_label{
            position: absolute;
            top: 40px;
            left: 50px;
            color: gray;
            font-size: 14px;
      }
      #country_name{
            width:50%;
            height: 60px;
            color: #333;
            outline: none;
            padding: 0 30px 0 15px;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ddd;
            background-color: #fff;
            margin-left: 10px;
            display: inline-block;
            margin-bottom: 10px;
      }
      #country_start_label{
            position: absolute;
            top: 40px;
            left: 515px;
            color: gray;
            font-size: 14px;
      }
      #country_start{
            width:20%;
            height: 60px;
            color: #333;
            outline: none;
            padding: 0 30px 0 15px;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ddd;
            background-color: #fff;
            margin-left: 10px;
            display: inline-block;
      }
      #country_end_label{
            position: absolute;
            top: 40px;
            left: 710px;
            color: gray;
            font-size: 14px;
      }
      #country_end{
            width:20%;
            height: 60px;
            color: #333;
            outline: none;
            padding: 0 30px 0 15px;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ddd;
            background-color: #fff;
            margin-left: 10px;
            display: inline-block;
      }
      #abroad_content_label{
            color: #999;
            font-size: 11px;
            padding: 5px 15px;
      }
      #abroad_content{
            box-sizing: border-box;
            display: block;
            width: 100%;
            height: 56px;
            padding: 10px 15px;
            border: 0;
            color: #333;
            outline: none;
            font-size: 16px;
      }
      #abroad_content_div{
            border: 1px solid #dbe0e9;
            width: 100%;
            margin-left: 10px;
            padding: 10px 0;
      }
      #abroad_plus_btn{
      		display: block;
      }
      #abroad_plus_btn2{
      		display: none;
      }
      #abroad_plus_btn3{
      		display: none;
      }
      
      /* 어학 */
      .language_box{
      		display: none;
      }
      #language_container{
            width: 78%;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
            display: block;
      }
      #language_container2{
            width: 78%;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
            display: none;
      }
      .select{
            padding: 17px 15px;
            color: #a8a8a8;
            white-space: nowrap;
            text-overflow: ellipsis;
            font-size: 15px;
            text-align: left;
            height: 100%;
            margin: -2px;
      }
      #language_plus_btn2{
      		display: none;
      }
      
      /* 포트폴리오 */
      .portfolio_box{
      		display: none;
      }
      #portfolio_title{
            display: inline-block;
            width: 70.4%;
      }
      #portfolio_container{
            width: 78%;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
            margin-bottom: 34px;
      }
      #my_file{
            width:82px;
            height: 32px;;
            margin-left:5px;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            font-size: 12px;
            text-align: center;
            color: #888;
      }
      .file_btn{
            margin-left: 0;
            width: 49.5%;
            height:62px;
            background-color: #f9fcff;
            display: inline-block;
            border: 1px solid #ddd;
            padding: 17px 0;
            margin-bottom: 13px;
            font-size: 16px;
            color: #999;
            text-align: center;
      }
      
      /* 취업우대 */
      .protect_box{
      		display: none;
      }
      #protect_container{
      		width: 78%;
            background-color: #fff;
            border: 1px solid #dbe0e9;
            box-sizing: border-box;
            padding: 20px;
            position: relative;
            margin-bottom: 34px;
      }
      .select2{
            padding: 17px 15px;
            color: #a8a8a8;
            white-space: nowrap;
            text-overflow: ellipsis;
            font-size: 15px;
            text-align: left;
            height: 100%;
            width:20%;
            margin: 2px;
      }
      
      /* 우측 메뉴바 */
      .menu_bar{
            width: 16%;
            height: 535px;
            position: fixed;
            right: 152px;
            top: 50px;
            background-color: #fff;
      }
      .resume_header{
            font-size: 14px;
            color: #999;
            padding: 16px 14px 0 14px;
            text-align: left;
            height: 32px;
      }
      .resume_plus_btn{
            width:100%;
            height: 48px;
            font-size: 14px;
            color: #999;
            box-sizing: border-box;
            background-color: #fff;
            border: none;
            text-align: left;
            padding: 0 14px;
            outline: none;
      }
      .resume_plus_btn:hover {
      		background-color: #eaeaea;
      }
      #resume_plus_btn_top{
            border-top: 1px solid #eee;
      }
      .plus{
            width: 20px;
            height: 20px;
            float: right;
      }
      .menu_middle_bar{
            width: 16%;
            height: 50px;
            position: fixed;
            right: 152px;
            top: 590px;
            background-color: #fff;
            text-align: center;
            line-height: 50px;
            font-size: 16px;
            font-weight: bold;
      }
      .menu_bottom_bar{
            width: 16%;
            height: 50px;
            position: fixed;
            right: 152px;
            top: 640px;
            background-color: #3599FD;
            text-align: center;
            line-height: 50px;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
      }
      #graduatioin_cap{
      		width: 18px;
      		height: 18px;
      		margin-right: 10px;
      }
      #info_card{
      		width: 18px;
      		height: 18px;
      		margin-right: 10px;
      }
      #business_bag{
      		width: 18px;
      		height: 18px;
      		margin-right: 10px;
      }
      #book{
      		width: 18px;
      		height: 18px;
      		margin-right: 10px;
      }
      #license{
     		width: 18px;
      		height: 18px;
      		margin-right: 10px;
      }
      #trophy{
      		width: 18px;
      		height: 18px;
      		margin-right: 10px;
      }
      #air-transport{
      		width: 18px;
      		height: 18px;
      		margin-right: 10px;
      }
      #earth{
      		width: 18px;
      		height: 18px;
      		margin-right: 10px;
      }
      #portfolio{
      		width: 18px;
      		height: 18px;
      		margin-right: 10px;
      }
      #hand-shake{
      		width: 18px;
      		height: 18px;
      		margin-right: 10px;
      }
</style>
</head>
<body>
      <!-- .unicology로 임의로 정함 -->
      <div class="resume_page">
            <div class="resume_inner_page">
                  <form action="" method="post">
                        
                        <!-- 수상 --------------------------------------------------------------------------------------------------------------->
                        <div class="award_box">
	                        <!-- 수상1 -->
	                        <div class="award_title">수상</div>
	                        <div class="container" id="award_container">
	                              <div class="award_div">
	                                    <label for="award_title" id="award_title_label">수상명</label>
	                                    <input type="text" name="award_title" id="award_title" class="award" maxlength="50">
	                              </div>
	                              <div class="award_div">
	                                    <label for="award_inst" id="award_inst_label">수여기관</label>
	                                    <input type="text" name="award_inst" id="award_inst" class="award">
	                              </div>
	                              <div class="award_div">
	                                    <label for="award_year" id="award_year_label">연도</label>
	                                    <input type="text" name="award_year" id="award_year" class="award">
	                              </div>
	                              <button class="x_btn" type="button" id="award_x">&times;</button>
	                              <div class="award_div" id="award_content_div">
	                                    <label id="award_content_label" for="award_content">
	                                        	  수여내용
	                                          <textarea name="award_content" id="award_content" cols="30" rows="10" placeholder="수여 내용 및 결과를 자세히 입력해주세요."></textarea>
	                                    </label>
	                              </div>
	                        </div>
	                        <button type="button" class="plus_btn" id="award_plus_btn1"><img alt="plus" src="../image/resume_img/plus_btn.png" id="award_btn">수상추가</button>
	                        <!-- 수상2 -->
	                        <div class="container" id="award_container2">
	                              <div class="award_div">
	                                    <label for="award_title" id="award_title_label">수상명</label>
	                                    <input type="text" name="award_title2" id="award_title" class="award" maxlength="50">
	                              </div>
	                              <div class="award_div">
	                                    <label for="award_inst" id="award_inst_label">수여기관</label>
	                                    <input type="text" name="award_inst2" id="award_inst" class="award">
	                              </div>
	                              <div class="award_div">
	                                    <label for="award_year" id="award_year_label">연도</label>
	                                    <input type="text" name="award_year2" id="award_year" class="award">
	                              </div>
	                              <button class="x_btn" type="button" id="award_x2">&times;</button>
	                              <div class="award_div" id="award_content_div">
	                                    <label id="award_content_label" for="award_content">
	                                        	  수여내용
	                                          <textarea name="award_content2" id="award_content" cols="30" rows="10" placeholder="수여 내용 및 결과를 자세히 입력해주세요."></textarea>
	                                    </label>
	                              </div>
	                        </div>
	                        <button type="button" class="plus_btn" id="award_plus_btn2"><img alt="plus" src="../image/resume_img/plus_btn.png" id="award_btn">수상추가</button>
	                        <!-- 수상3 -->
	                        <div class="container" id="award_container3">
	                              <div class="award_div">
	                                    <label for="award_title" id="award_title_label">수상명</label>
	                                    <input type="text" name="award_title3" id="award_title" class="award" maxlength="50">
	                              </div>
	                              <div class="award_div">
	                                    <label for="award_inst" id="award_inst_label">수여기관</label>
	                                    <input type="text" name="award_inst3" id="award_inst" class="award">
	                              </div>
	                              <div class="award_div">
	                                    <label for="award_year" id="award_year_label">연도</label>
	                                    <input type="text" name="award_year3" id="award_year" class="award">
	                              </div>
	                              <button class="x_btn" type="button" id="award_x3">&times;</button>
	                              <div class="award_div" id="award_content_div">
	                                    <label id="award_content_label" for="award_content">
	                                        	  수여내용
	                                          <textarea name="award_content3" id="award_content" cols="30" rows="10" placeholder="수여 내용 및 결과를 자세히 입력해주세요."></textarea>
	                                    </label>
	                              </div>
	                        </div>
	                        <button type="button" class="plus_btn" id="award_plus_btn3"><img alt="plus" src="../image/resume_img/plus_btn.png" id="award_btn">수상추가</button>
                        </div>
                        
                        <!-- 해외경험 ------------------------------------------------------------------------------------------------------------>
                        <div class="abroad_box">
	                        <div class="abroad_title">해외경험</div>
	                        <!-- 해외경험1 -->
	                        <div class="container" id="abroad_container">
	                              <label for="country_name" id="country_name_label">국가명</label>
	                              <input type="text" id="country_name" name="country_name">
	                              <label for="country_start" id="country_start_label">시작년월</label>
	                              <input type="text" id="country_start" name="country_start">
	                              <label for="country_end" id="country_end_label">종료년월</label>
	                              <input type="text" id="country_end" name="country_end">
	                              <button class="x_btn" type="button" id="abroad_x">&times;</button>
	                              <div class="abroad_div" id="abroad_content_div">
	                                    <label id="abroad_content_label" for="abroad_content">
	                                        	내용
	                                          <textarea name="abroad_content" id="abroad_content" cols="30" rows="10" placeholder="해외에서 어떤 경험을 했는지 자세히 적어주세요.(ex.어학연수, 워킹홀리데이, 교한학생, 해외근무)"></textarea>
	                                    </label>
	                              </div>
	                        </div>
	                        <button type="button"class="plus_btn" id="abroad_plus_btn"><img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn">해외경험 추가</button>
	                         <!-- 해외경험2 -->
	                        <div class="container" id="abroad_container2">
	                              <label for="country_name" id="country_name_label">국가명</label>
	                              <input type="text" id="country_name" name="country_name2">
	                              <label for="country_start" id="country_start_label">시작년월</label>
	                              <input type="text" id="country_start" name="country_start2">
	                              <label for="country_end" id="country_end_label">종료년월</label>
	                              <input type="text" id="country_end" name="country_end2">
	                              <button class="x_btn" type="button" id="abroad_x2">&times;</button>
	                              <div class="abroad_div" id="abroad_content_div">
	                                    <label id="abroad_content_label" for="abroad_content">
	                                        	내용
	                                          <textarea name="abroad_content2" id="abroad_content" cols="30" rows="10" placeholder="해외에서 어떤 경험을 했는지 자세히 적어주세요.(ex.어학연수, 워킹홀리데이, 교한학생, 해외근무)"></textarea>
	                                    </label>
	                              </div>
	                        </div>
	                        <button type="button"class="plus_btn" id="abroad_plus_btn2"><img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn">해외경험 추가</button>
	                        <!-- 해외경험3 -->
	                        <div class="container" id="abroad_container3">
	                              <label for="country_name" id="country_name_label">국가명</label>
	                              <input type="text" id="country_name" name="country_name3">
	                              <label for="country_start" id="country_start_label">시작년월</label>
	                              <input type="text" id="country_start" name="country_start3">
	                              <label for="country_end" id="country_end_label">종료년월</label>
	                              <input type="text" id="country_end" name="country_end3">
	                              <button class="x_btn" type="button" id="abroad_x3">&times;</button>
	                              <div class="abroad_div" id="abroad_content_div">
	                                    <label id="abroad_content_label" for="abroad_content">
	                                        	내용
	                                          <textarea name="abroad_content3" id="abroad_content" cols="30" rows="10" placeholder="해외에서 어떤 경험을 했는지 자세히 적어주세요.(ex.어학연수, 워킹홀리데이, 교한학생, 해외근무)"></textarea>
	                                    </label>
	                              </div>
	                        </div>
	                        <button type="button" class="plus_btn" id="abroad_plus_btn3"><img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn">해외경험 추가</button>
                        </div>
                        
                        <!-- 어학 ---------------------------------------------------------------------------------------------------------------->
                        <div class="language_box">
	                        <div class="abroad_title">어학</div>
	                        <div class="container" id="language_container">
	                              <select name="kind" id="kind" class="select">
	                                    <option value="">구분</option>
	                                    <option value="회화능력">회화능력</option>
	                                    <option value="공인시험">공인시험</option>
	                              </select>
	                              <select name="language_kind" id="language_kind" class="select" class="select">
	                                    <option value="">외국어명</option>
	                                    <option value="영어">영어</option>
	                                    <option value="일본어">일본어</option>
	                                    <option value="중국어">중국어</option>
	                                    <option value="독일어">독일어</option>
	                                    <option value="프랑스어">프랑스어</option>
	                                    <option value="스페인어">스페인어</option>
	                                    <option value="러시아어">러시아어</option>
	                                    <option value="이탈리아어">이탈리아어</option>
	                                    <option value="아랍어">아랍어</option>
	                                    <option value="태국어">태국어</option>
	                                    <option value="마인어">마인어</option>
	                                    <option value="그리스어">그리스어</option>
	                                    <option value="포르투갈어">포르투갈어</option>
	                                    <option value="힌디어">힌디어</option>
	                                    <option value="노르웨이어">노르웨이어</option>
	                                    <option value="유고어">유고어</option>
	                                    <option value="히브리어">히브리어</option>
	                                    <option value="이란(페르시아어)">이란(페르시아어)</option>
	                                    <option value="터키어">터키어</option>
	                                    <option value="체코어">체코어</option>
	                                    <option value="루마니아어">루마니아어</option>
	                                    <option value="몽골어">몽골어</option>
	                                    <option value="스웨덴어">스웨덴어</option>
	                                    <option value="헝가리어">헝가리어</option>
	                                    <option value="폴란드어">폴란드어</option>
	                                    <option value="미얀마어">미얀마어</option>
	                                    <option value="슬로바키아어">슬로바키아어</option>
	                                    <option value="세르비아어">세르비아어</option>
	                              </select>
	                              <select name="language_level" id="language_level" class="select">
	                                    <option value="">회화능력</option>
	                                    <option value="일상회화 가능">일상회화 가능</option>
	                                    <option value="비즈니스 회화가능">비즈니스 회화가능</option>
	                                    <option value="원어민 수준">원어민 수준</option>
	                              </select>
	                              <button class="x_btn"type="button"  id="language_x">&times;</button>
	                        </div>
	                        <button type="button" class="plus_btn" id="language_plus_btn"><img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn">어학 추가</button>
	                        <!-- 어학2 -->
	                        <div class="container" id="language_container2">
	                              <select name="kind" id="kind" class="select">
	                                    <option value="">구분</option>
	                                    <option value="회화능력">회화능력</option>
	                                    <option value="공인시험">공인시험</option>
	                              </select>
	                              <select name="language_kind" id="language_kind" class="select" class="select">
	                                    <option value="">외국어명</option>
	                                    <option value="영어">영어</option>
	                                    <option value="일본어">일본어</option>
	                                    <option value="중국어">중국어</option>
	                                    <option value="독일어">독일어</option>
	                                    <option value="프랑스어">프랑스어</option>
	                                    <option value="스페인어">스페인어</option>
	                                    <option value="러시아어">러시아어</option>
	                                    <option value="이탈리아어">이탈리아어</option>
	                                    <option value="아랍어">아랍어</option>
	                                    <option value="태국어">태국어</option>
	                                    <option value="마인어">마인어</option>
	                                    <option value="그리스어">그리스어</option>
	                                    <option value="포르투갈어">포르투갈어</option>
	                                    <option value="힌디어">힌디어</option>
	                                    <option value="노르웨이어">노르웨이어</option>
	                                    <option value="유고어">유고어</option>
	                                    <option value="히브리어">히브리어</option>
	                                    <option value="이란(페르시아어)">이란(페르시아어)</option>
	                                    <option value="터키어">터키어</option>
	                                    <option value="체코어">체코어</option>
	                                    <option value="루마니아어">루마니아어</option>
	                                    <option value="몽골어">몽골어</option>
	                                    <option value="스웨덴어">스웨덴어</option>
	                                    <option value="헝가리어">헝가리어</option>
	                                    <option value="폴란드어">폴란드어</option>
	                                    <option value="미얀마어">미얀마어</option>
	                                    <option value="슬로바키아어">슬로바키아어</option>
	                                    <option value="세르비아어">세르비아어</option>
	                              </select>
	                              <select name="language_level" id="language_level" class="select">
	                                    <option value="">회화능력</option>
	                                    <option value="일상회화 가능">일상회화 가능</option>
	                                    <option value="비즈니스 회화가능">비즈니스 회화가능</option>
	                                    <option value="원어민 수준">원어민 수준</option>
	                              </select>
	                              <button type="button" class="x_btn" id="language_x2">&times;</button>
	                        </div>
	                        <button type="button"class="plus_btn" id="language_plus_btn2"><img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn">어학 추가</button>
                        </div>
                        
                        <!-- 포트폴리오 --------------------------------------------------------------------------------------------------------------------->
                        <div class="portfolio_box">
	                        <div class="abroad_title" id="portfolio_title">포트폴리오</div>
	                        <button id="my_file">내 파일함</button>
	                        <div class="container" id="portfolio_container">
	                              <button type="button" class="file_btn" id="urlplus_btn">URL 추가<img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn"></button>
	                              <button type="button" class="file_btn" id="urlplus_btn">파일 추가<img alt="plus" src="../image/resume_img/plus_btn.png" id="abroad_btn"></button>
	                        </div>
                        </div>
                        
                        <!-- 취업우대 -->
                        <div class="protect_box">
	                        <div class="abroad_title">취업우대</div>
	                        <div class="container" id="protect_container">
	                              <select name="bohun" id="bohun" class="select2">
	                                    <option value="">보훈대상</option>
	                                    <option value="대상">대상</option>
	                                    <option value="비대상">비대상</option>
	                              </select>
	                              <select name="job_protection" id="Job_protection" class="select2">
	                                    <option value="">취업보호대상</option>
	                                    <option value="대상">대상</option>
	                                    <option value="비대상">비대상</option>
	                              </select>
	                              <select name="subsidy" id="subsidy" class="select2">
	                                    <option value="">고용지원금 대상</option>
	                                    <option value="대상">대상</option>
	                                    <option value="비대상">비대상</option>
	                              </select>
	                              <select name="obstacle" id="obstacle" class="select2">
	                                    <option value="">장애여부</option>
	                                    <option value="대상">대상</option>
	                                    <option value="비대상">비대상</option>
	                              </select>
	                              <select name="obstacle" id="obstacle" class="select2">
	                                    <option value="">병역</option>
	                                    <option value="군필">군필</option>
	                                    <option value="미필">미필</option>
	                                    <option value="면제">면제</option>
	                                    <option value="해당없음">해당없음</option>
	                              </select>
	                        </div>
                        </div>
                        
                        <!-- 우측menu bar -->
                        <div class="menu_bar">
                              <div class="resume_header">이력서 항목</div>
                              <div>
                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_top"><img alt="graduation" src="../image/resume_img/graduation_cap.png" id="graduatioin_cap">학력<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn"><img alt="graduation" src="../image/resume_img/info_card.png" id="info_card">경력<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn"><img alt="graduation" src="../image/resume_img/business_bag.png" id="business_bag">인턴/대외활동<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn"><img alt="graduation" src="../image/resume_img/book.png" id="book">교육<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn"><img alt="graduation" src="../image/resume_img/license.png" id="license">자격증<img alt="plus" src="../image/resume_img/plus.png" class="plus"></button>
                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_award"><img alt="graduation" src="../image/resume_img/trophy.png" id="trophy">수상<img alt="plus" src="../image/resume_img/plus.png" class="plus" id="award_plus"></button>
                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_abroad"><img alt="graduation" src="../image/resume_img/air-transport.png" id="air-transport">해외경험<img alt="plus" src="../image/resume_img/plus.png" class="plus" id="abroad_plus"></button>
                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_language"><img alt="graduation" src="../image/resume_img/earth.png" id="earth">어학<img alt="plus" src="../image/resume_img/plus.png" class="plus" id="language_plus"></button>
                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_portfolio"><img alt="graduation" src="../image/resume_img/portfolio.png" id="portfolio">포트폴리오<img alt="plus" src="../image/resume_img/plus.png" class="plus" id="portfolio_plus"></button>
                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_bottom"><img alt="graduation" src="../image/resume_img/hand-shake.png" id="hand-shake">취업우대<img alt="plus" src="../image/resume_img/plus.png" class="plus" id="protect_plus"></button>
                              </div>
                        </div>
                        <div class="menu_middle_bar">임시저장</div>
                        <div class="menu_bottom_bar">작성완료</div>
                  </form>
            </div>
      </div>
</body>
</html>
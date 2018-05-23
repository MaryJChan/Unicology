<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
//==========================================================성민resume(script시작)===========================================
	
//==========================================================성민resume(script끝)===========================================	
//==========================================================다슬resume(script시작)===========================================
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
            
            /* ======================================= 학력 추가/제거 =======================================*/
            $("#resume_plus_btn_top").on("click",function(){
            	var src=$("#graduatioin_plus").attr("src");
            	
            	if(src=="image/resume_img/minus2.png"){
            			//$("#school_box").css("display","none");
            			//$("#resume_plus_btn_top").css("color","#999");
	                	//$("#graduatioin_cap").attr("src","image/resume_img/info_card.png");
	                	//$("#graduatioin_plus").attr("src","image/resume_img/plus.png");
            	}else{
            			$("#school_box").css("display","block");
		            	$("#resume_plus_btn_top").css("color","#3599FD");
		            	$("#graduatioin_cap").attr("src","image/resume_img/info_card2.png");
		            	$("#graduatioin_plus").attr("src","image/resume_img/minus2.png");
	            }
            });
            
            /* ======================================= 경력 추가/제거 =======================================*/
            $("#resume_plus_btn_career").on("click",function(){
            	var src=$("#career_plus").attr("src");
            	
            	if(src=="image/resume_img/minus2.png"){
            			$("#career_box").css("display","none");
            			$("#resume_plus_btn_career").css("color","#999");
	                	$("#info_card").attr("src","image/resume_img/info_card.png");
	                	$("#career_plus").attr("src","image/resume_img/plus.png");
            	}else{
            			$("#career_box").css("display","block");
		            	$("#resume_plus_btn_career").css("color","#3599FD");
		            	$("#info_card").attr("src","image/resume_img/info_card2.png");
		            	$("#career_plus").attr("src","image/resume_img/minus2.png");
	            }
            });
      
            /* ======================================= 인턴/대외활동 추가/제거 =======================================*/
            $("#resume_plus_btn_business").on("click",function(){
            	var src=$("#business_plus").attr("src");
            	
            	if(src=="image/resume_img/minus2.png"){
            		$("#intern_box").css("display","none");
                	$("#resume_plus_btn_business").css("color","#999");
                	$("#business_bag").attr("src","image/resume_img/business_bag.png");
                	$("#business_plus").attr("src","image/resume_img/plus.png");
            	}else{
            		$("#intern_box").css("display","block");
                	$("#resume_plus_btn_business").css("color","#3599FD");
                	$("#business_bag").attr("src","image/resume_img/business_bag2.png");
                	$("#business_plus").attr("src","image/resume_img/minus2.png");
	            }
	         });
            
            /* ======================================= 교육 추가/제거 =======================================*/
            $("#resume_plus_btn_education").on("click",function(){
            	var src=$("#education_plus").attr("src");
            	
            	if(src=="image/resume_img/minus2.png"){
            		$("#education_box").css("display","none");
                	$("#resume_plus_btn_education").css("color","#999");
                	$("#book").attr("src","image/resume_img/book.png");
                	$("#education_plus").attr("src","image/resume_img/plus.png");
            	}else{
            		$("#education_box").css("display","block");
                	$("#resume_plus_btn_education").css("color","#3599FD");
                	$("#book").attr("src","image/resume_img/book2.png");
                	$("#education_plus").attr("src","image/resume_img/minus2.png");
	            }
	          });
            
            /* ======================================= 자격증 추가/제거 =======================================*/
            $("#resume_plus_btn_license").on("click",function(){
            	var src=$("#license_plus").attr("src");
            	
            	if(src=="image/resume_img/minus2.png"){
            		$("#license_box").css("display","none");
                	$("#resume_plus_btn_license").css("color","#999");
                	$("#license").attr("src","image/resume_img/license.png");
                	$("#license_plus").attr("src","image/resume_img/plus.png");
            	}else{
            		$("#license_box").css("display","block");
                	$("#resume_plus_btn_license").css("color","#3599FD");
                	$("#license").attr("src","image/resume_img/license2.png");
                	$("#license_plus").attr("src","image/resume_img/minus2.png");
	            }
	        });
            
            /* =======================================수상메뉴 추가/제거 =======================================*/
            $("#resume_plus_btn_award").on("click",function(){
            	var src=$("#award_plus").attr("src");
            	
            	if(src=="image/resume_img/minus2.png"){
            		$(".award_box").css("display","none");
                	$("#resume_plus_btn_award").css("color","#999");
                	$("#trophy").attr("src","image/resume_img/trophy.png");
                	$("#award_plus").attr("src","image/resume_img/plus.png");
            	}else{
            		$(".award_box").css("display","block");
                	$("#resume_plus_btn_award").css("color","#3599FD");
                	$("#trophy").attr("src","image/resume_img/trophy2.png");
                	$("#award_plus").attr("src","image/resume_img/minus2.png");
	            }
            	
	            });
      
		      /* =======================================해외경험 추가/제거 =======================================*/
		      $("#resume_plus_btn_abroad").on("click",function(){
		    	  var src=$("#abroad_plus").attr("src");
	            	
	            	if(src=="image/resume_img/minus2.png"){
            		 	$(".abroad_box").css("display","none");
	     		      	$("#resume_plus_btn_abroad").css("color","#999");
	     		      	$("#air-transport").attr("src","image/resume_img/air-transport.png");
	     		      	$("#abroad_plus").attr("src","image/resume_img/plus.png");
	            	}else{
	            		$(".abroad_box").css("display","block");
	     		      	$("#resume_plus_btn_abroad").css("color","#3599FD");
	     		      	$("#air-transport").attr("src","image/resume_img/air-transport2.png");
	     		      	$("#abroad_plus").attr("src","image/resume_img/minus2.png");
		            }
		      	});
		      
		      /* =======================================어학 추가/제거 =======================================*/
		      $("#resume_plus_btn_language").on("click",function(){
		    	  var src=$("#language_plus").attr("src");
	            	
	            	if(src=="image/resume_img/minus2.png"){
	            		$(".language_box").css("display","none");
	     		      	$("#resume_plus_btn_language").css("color","#999");
	     		      	$("#earth").attr("src","image/resume_img/earth.png");
	     		      	$("#language_plus").attr("src","image/resume_img/plus.png");
	            	}else{
	            		$(".language_box").css("display","block");
	     		      	$("#resume_plus_btn_language").css("color","#3599FD");
	     		      	$("#earth").attr("src","image/resume_img/earth2.png");
	     		      	$("#language_plus").attr("src","image/resume_img/minus2.png");
		            }
		      	});
		      
		      /* =======================================포트폴리오 추가/제거 =======================================*/
		      $("#resume_plus_btn_portfolio").on("click",function(){
		    	  var src=$("#portfolio_plus").attr("src");
	            	
	            	if(src=="image/resume_img/minus2.png"){
	            		$(".portfolio_box").css("display","none");
	     		      	$("#resume_plus_btn_portfolio").css("color","#999");
	     		      	$("#portfolio").attr("src","image/resume_img/portfolio.png");
	     		      	$("#portfolio_plus").attr("src","image/resume_img/plus.png");
	            	}else{
	            		$(".portfolio_box").css("display","block");
	     		      	$("#resume_plus_btn_portfolio").css("color","#3599FD");
	     		      	$("#portfolio").attr("src","image/resume_img/portfolio2.png");
	     		      	$("#portfolio_plus").attr("src","image/resume_img/minus2.png");
		            }
		      	});
		      
		      /* =======================================취업우대 추가/제거 =======================================*/
		      $("#resume_plus_btn_bottom").on("click",function(){
		    	  var src=$("#protect_plus").attr("src");
	            	
	            	if(src=="image/resume_img/minus2.png"){
	            		$(".protect_box").css("display","none");
	    		      	$("#resume_plus_btn_bottom").css("color","#999");
	    		      	$("#hand-shake").attr("src","image/resume_img/hand-shake.png");
	    		      	$("#protect_plus").attr("src","image/resume_img/plus.png");
	            	}else{
	            		$(".protect_box").css("display","block");
	    		      	$("#resume_plus_btn_bottom").css("color","#3599FD");
	    		      	$("#hand-shake").attr("src","image/resume_img/hand-shake2.png");
	    		      	$("#protect_plus").attr("src","image/resume_img/minus2.png");
		            }
		      	});
		      
		      $("#fileplus_btn").on("click",function(){
		    	 $("#plusfile").click();
		      });

		      $(".menu_middle_bar").click(function(){
		    	 $("#frm_resume").submit(); 
		      });
		      
		      $("#urlplus_btn").click(function(){
		    	 $("#url_addr").css("display","block");
		    	 $("#url_remove").css("display","block");
		      });
		      
		      $("#url_remove").click(function(){
		    	 $("#url_addr").remove();
		    	 $("#url_remove").remove();
		      });
		    
		 });
      
	      	$(window).scroll(function() {
	    	  var menu = $('.menu_wrap');
	    	  if($(this).scrollTop() >= 100) {
		    	  $(".menu_wrap").css("position","fixed");
				  $(".menu_wrap").css("top","50px");
				  $(".menu_wrap").css("right","152px");
	    	  }else{
	    		  $(".menu_wrap").css("position","absolute");
	    		  $(".menu_wrap").css("top","155px");
	    	  }
	     });
//==========================================================다슬resume(script끝)===========================================      
</script>
<style type="text/css">
/* //==========================================================성민resume(css시작)=========================================== */
	.resume_page1{
            background-color: #ececec;
            width: 100%;
      }
      .resume_inner_page1{
            padding-top:50px;
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
      /* 추가한 부분 */
      /* info_title */
      .profile,.school{
            color: #333;
            font-weight: bold;
            font-size: 20px;
      }
      .formWrap {
      	width: 100%;
      	position: relative;
      }
      .formheader {
      	margin-bottom: 14px;
      	color: #333;
      	font-weight: bold;
      	font-size: 20px;
      }
      .form .row:nth-child(1){
      	z-index: 190;
      }
      .form .row:nth-child(2){
      	z-index: 180;
      }
      .form {
		    position: relative;
		    width: 950px;
		    padding: 20px 20px 10px;
		    background-color: #fff;
		    border: 1px solid #dbe0e9;
		    box-sizing: border-box;
	  }
      .form .row {
	    position: relative;
	    margin-bottom: 10px;
	    font-size: 0;
	  }
	  .input.value {
	  	z-index: 10;
	  	padding-top: 19px;
	  }
	  .input.value label,.selectbox label,.textarea label{
	  	top: 9px;
	  	font-size: 11px;
	  	color: #a8a8a8;
	  }
	  .input.value input {
	  	height: 41px;
	  }
	  .input {
	  	position: relative;
	  	display: inline-block;
	  	zoom: 1;
	  	width: 160px;
	  	height: 62px;
	  	margin-left: 10px;
	  	border: 1px solid #ddd;
	  	box-sizing: border-box;
	  	vertical-align: top;
	  	text-align: left;
	  	background-color: #fff;
	  }
	  .input label {
	  	visibility: visible;
	  	z-index: 100;
	  	position: absolute;
	  	left: 15px;
	  	top: 18px;
	  	color: #999;
	  	font-size: 16px;
	  }
	  .input input {
	  	display: block;
	  	width: 100%;
	  	height: 60px;
	  	padding: 0 15px;
	  	border: 0;
	  	color: #333;
	  	outline: none;
	  	box-sizing: border-box;
	  	background-color: transparent;
	  	font-size: 16px;
	  }
	  label {
	  	cursor: pointer;
	  	vertical-align: middle;
	  }
	  .profile_name,.profile_birth,.profile_tel,.profile_phone {
	  	width: 182px;
	  }
	  .selectbox {
	  	position: relative;
	  	display: inline-block;
	  	zoom: 1;
	  	width: 160px;
	  	height: 62px;
	  	margin-right: 10px;
	  	box-sizing: border-box;
	  	vertical-align: top;
	  	text-align: left;
	  }
	  .profile_sex,.school_grade {
	  	width: 115px;
	  }
	  .selectbox label {
	  	position: absolute;
	  	left: 25px;
	  }
	  .textarea label {
	  	position: absolute;
	  	left: 15px;
	  }
	  .selectbox select {
	  	width: 115px;
	  	height: 62px;
	  	margin:0 10px;
	  	padding-top: 15px;
	  	padding-left: 20px;
	  	font-size: 16px;
	  	color: #333;
	  	border: 1px solid #ddd;
	  	outline: none;
	  }
	  .profile_email {
	  	width: 276px;
	  }
	  .profile_adress {
	  	width: 401px;
	  }
	  .school_name {
	  	width: 350px;
	  }
	  .entrance_year,.graduation_year,.graduation_status{
	  	width: 115px;
	  }
	  .textarea {
	    position: relative;
	    display: inline-block;
	    zoom: 1;
	    width: 100%;
	    margin-right: 10px;
	    padding: 28px 0 0;
	    border: 1px solid #ddd;
	    -webkit-box-sizing: border-box;
	    box-sizing: border-box;
	    vertical-align: top;
	    text-align: left;
	    margin-left: 10px;
	}
	.textarea textarea {
	    display: block;
	    width: 100%;
	    height: 90px;
	    padding: 0 15px;
	    border: 0;
	    color: #333;
	    outline: none;
	    -webkit-box-sizing: border-box;
	    box-sizing: border-box;
	    -webkit-transition: all 0.2s ease-out;
	    -moz-transition: all 0.2s ease-out;
	    -o-transition: all 0.2s ease-out;
	    transition: all 0.2s ease-out;
	    font-size: 16px;
	    resize: none;
	}
	  /* 다슬이거 추가 내용 */
	  .plus_btn_front {
	  	margin-bottom: 34px;
	    width: 78.15%;
	    height: 50px;
	    text-align: center;
	    line-height: 50px;
	    border-top: 1px solid #eee;
	    box-sizing: border-box;
	    background-color: #fff;
	    border: none;
	    font-size: 16px;
	    border: 1px solid #dbe0e9;
	    border-top: 0;
		}
		button {
		    cursor: pointer;
		}
		.x_btn {
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
		#award_btn {
		    width: 20px;
		    height: 20px;
		    vertical-align: middle;
		    padding: 0 8px;
		}
/* //==========================================================성민resume(css끝)============================================ */

		#career_box{
			display: none;
		}
		#intern_box{
			display: none;
		}
		#education_box{
			display: none;
		}
		#license_box{
			display: none;
		}
		#plusimg{
		    position: absolute;
		    right: 42px;
		    top: 21px;
		    width: 82px;
		    height: 133px;
		    display: none;
		}
		#plus_img_btn{
			position: absolute;
		    right: 42px;
		    top: 21px;
		    width: 82px;
		    height: 133px;
		    background: white;
		    border: 1px solid #ddd;
		    background-color: white;
		    outline: none;
		}
		#imgplus_img{
			height: 21px;
		}
		

/* //==========================================================다슬resume(css시작)=========================================== */
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
            padding-bottom: 5px;
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
            padding:15px 15px 0 15px;
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
            top: 28px;
            left: 50px;
            color: gray;
            font-size: 11px;
      }
      #country_name{
            width:50%;
            height: 60px;
            color: #333;
            outline: none;
            padding: 15px 30px 0 15px;
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
            top: 28px;
            left: 515px;
            color: gray;
            font-size: 11px;
      }
      #country_start{
            width:20%;
            height: 60px;
            color: #333;
            outline: none;
            padding: 15px 30px 0 15px;
            box-sizing: border-box;
            font-size: 16px;
            border: 1px solid #ddd;
            background-color: #fff;
            margin-left: 10px;
            display: inline-block;
      }
      #country_end_label{
            position: absolute;
            top: 28px;
            left: 710px;
            color: gray;
            font-size: 11px;
      }
      #country_end{
            width:20%;
            height: 60px;
            color: #333;
            outline: none;
            padding: 15px 30px 0 15px;
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
      #url_addr{
      	    height: 60px;
  	 		 width: 95%;
    		border: 1px solid #ddd;
   	 		padding: 0 20px;
    		outline: none;
    		display: none;
      }
      #url_remove{
      		top: 95px;
    		height: 62px;
    		right: 23px;
    		display: none;
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
            width: 100%;
            height: 535px;
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
            color:#3599FD;
      }
      .plus{
            width: 20px;
            height: 20px;
            float: right;
      }
      .menu_middle_bar{
            width: 100%;
            height: 50px;
            position: absolute;
            top: 541px;
            background-color: #fff;
            text-align: center;
            line-height: 50px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
      }
      .menu_bottom_bar{
            width: 100%;
            height: 50px;
            position: absolute;
            top: 591px;
            background-color: #3599FD;
            text-align: center;
            line-height: 50px;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
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
      .menu_wrap{
      		display: inline-block;
      		position: absolute;
      		right: 152px;
      		top: 155px;
      		width: 16%;
      }
      #plusfile{
      		display: none;
      }
/* //==========================================================다슬resume(css끝)=========================================== */
</style>
</head>
<body>
<%@include file="../include/header.jsp" %>
<!-- //==========================================================성민resume(body시작)=========================================== -->
<form action="resumeInsert.unicol" method="post" name="frm_resume" id="frm_resume" enctype="multipart/form-data">
      <div class="resume_page">
            <c:forEach items="${resumeSearch}" var="resumeSearch">
            <div class="resume_inner_page1">
                 
                        <div class="resume_title">
                              <input id="resume_title" name="resume_title" type="text" value="${resumeSearch.resume_title}" placeholder="기업에게 나에대해 알려보세요. 강점,목표,관심분야도 좋아요" maxlength="100">
                        </div>
                        <!-- 추가및 수정한 부분  -->
                        <!-- 인적사항 -->
                        <div class="formWrap profile">
                        	<h2 class="formheader">인적사항</h2> 
                        	<div class="form formprofile">
                        		<div class="row">
                        			<div class="input value profile_name">
                        				<label for="UserName">이름</label>
                        				<input type="text" name="UserName" id="UserName" value="${resumeSearch.userName}">
                        			</div>
                        			<div class="input value profile_birth">
                        				<label for="UserBirth">생년월일</label>
                        				<input type="text" id="UserBirth" name="UserBirth" value="${resumeSearch.userBirth}">
                        			</div>
                        			<div class="selectbox profile_sex">
                        				<label>성별</label>
                        				<select name="UserSex">
                        					<c:choose>
                        						<c:when test="${resumeSearch.userSex=='man'}">
		                        					<select name="UserSex">
		                        					<option value="남자">남자</option>
		                        					<option value="여자">여자</option>
		                        					</select>
	                        					</c:when>
	                        					<c:when test="${resumeSearch.userSex=='woman'}">
		                        					<option value="여자">여자</option>
		                        					<option value="남자">남자</option>
	                        					</c:when>
                        					</c:choose>
                        				</select>
                        			</div>
                        			<div class="input value profile_email">
                        				<label for="UserEmail">Email</label>
                        				<input type="text" id="UserEmail" name="UserEmail" value="${resumeSearch.userEmail}">
                        			</div>
                        		</div>
                        		<button type="button" class="x_btn" id="award_x">&times;</button>
                        		<div class="row">
                        			<div class="input value profile_tel">
                        				<label for="UserTel">전화번호</label>
                        				<input type="text" name="UserTel" id="UserTel"  value="${resumeSearch.userTel}">
                        			</div>
                        			<div class="input value profile_phone">
                        				<label for="UserPhone">휴대폰번호</label>
                        				<input type="text" name="UserPhone" id="UserPhone"  value="${resumeSearch.userPhone}">
                        			</div>
                        			<div class="input value profile_adress">
                        				<label for="UserAdress">주소</label>
                        				<input type="text" name="UserAdress" id="UserAdress"  value="${resumeSearch.userAdress}">
                        			</div>
                        		</div>
<!--                         		<button type="button" id="plus_img_btn">증명사진 <img alt="" id="imgplus_img" src="image/resume_img/plus.png"></button> -->
<!--                         		<input type="file" name="plusimg" id="plusimg"> -->
                        	</div>
                        </div>
                        <!-- 학력 -->
                        <div class="formWrap school" id="school_box">
                        <h2 class="formheader">학력</h2> 
                        	<div class="form formschool">
                        		<div class="row">
	                        		<div class="selectbox school_grade" >
	                        				<label>학교구분</label>
	                        				<select name="SchoolGrade" style="letter-spacing: -1px; padding-left: 15px;">
	                        					<c:choose>
	                        						<c:when test="${resumeSearch.schoolGrade=='고등학교'}">
			                        					<option value="고등학교" >고등학교</option>
														<option value="대학(2,3년)">대학(2,3년)</option>
														<option value="대학교">대학교</option>
														<option value="대학원">대학원</option>
													</c:when>
													<c:when test="${resumeSearch.schoolGrade=='대학(2,3년)'}">
														<option value="대학(2,3년)">대학(2,3년)</option>
														<option value="고등학교" >고등학교</option>
														<option value="대학교">대학교</option>
														<option value="대학원">대학원</option>
													</c:when>	
													<c:when test="${resumeSearch.schoolGrade=='대학교'}">
														<option value="대학교">대학교</option>
														<option value="대학(2,3년)">대학(2,3년)</option>
														<option value="고등학교" >고등학교</option>
														<option value="대학원">대학원</option>
													</c:when>
													<c:when test="${resumeSearch.schoolGrade=='대학원'}">
														<option value="대학원">대학원</option>
														<option value="대학교">대학교</option>
														<option value="대학(2,3년)">대학(2,3년)</option>
														<option value="고등학교" >고등학교</option>
													</c:when>	
												</c:choose>
	                        				</select>
	                       			</div>
	                       			<div class="input value school_name" style="margin: 0;  border-left: 0;">
	                        				<label for="SchoolName">학교명</label>
	                        				<input type="text" name="SchoolName" id="SchoolName" value="${resumeSearch.schoolName}">
	                       			</div>
	                       			<div class="graduation_college" style="display: inline-block;">
		                       			<div class="input value entrance_year">
		                       				<label for="entranceYear">입학년도</label>
		                       				<input type="text" name="entranceYear" id="entranceYear" value="${resumeSearch.entranceYear}">
		                       			</div>
		                       			<div class="input value graduation_year" style="margin-left: -10px;">
		                       				<label for="graduationYear">졸업년도</label>
		                       				<input type="text" name="graduationYear" id="graduationYear" value="${resumeSearch.graduationYear}">
		                       			</div>
		                       			<div class="selectbox graduation_status univ" style="margin: 0;">
		                        				<label style="margin-left: -10px;">졸업상태</label>
		                        				<select name="GraduationStatus" style="letter-spacing: -1px; padding-left: 15px; margin-left: 0; border-left: 0;">
		                        					<c:choose>
		                        						<c:when test="${resumeSearch.graduationStatus=='졸업'}">
				                        					<option value="졸업">졸업</option>
															<option value="졸업예정">졸업예정</option>
														</c:when>
														<c:when test="${resumeSearch.graduationStatus=='졸업예정'}">
				                        					<option value="졸업예정">졸업예정</option>
				                        					<option value="졸업">졸업</option>
														</c:when>
													</c:choose>
		                        				</select>
		                       			</div>
	                       			</div>
	                       		</div>
	                       		<button type="button" class="x_btn" id="award_x">&times;</button>
	                        	<div class="row non_high" style="display: inline-block;">
	                        		<div class="input value major" style="width: 465px;">
			                       				<label for="major">전공명</label>
			                       				<input type="text" name="major" id="major" value="${resumeSearch.major}">
	                       			</div>
	                       			<div class="input value major_grade" style="width: 105px;">
		                       				<label for="majorGrade">학점</label>
		                       				<input type="text" name="majorGrade" id="majorGrade" value="${resumeSearch.majorGrade}">
	                       			</div>
	                       			<div class="selectbox major_totalgrade">
		                        				<label style="margin-left: -10px; ">총점</label>
		                        				<select name="MajorTotalgrade" style="letter-spacing: -1px; padding-left: 15px; margin-left: 0; border-left: 0;">
		                        					<c:choose>
				                        				<c:when test="${resumeSearch.majorTotalgrade=='4.5'}">
				                        					<option value="4.5">4.5</option>
				                        					<option value="4.3">4.3</option>
				                        					<option value="4.0">4.0</option>
				                        					<option value="100">100</option>
		                        						</c:when>
		                        						<c:when test="${resumeSearch.majorTotalgrade=='4.3'}">
				                        					<option value="4.3">4.3</option>
				                        					<option value="4.5">4.5</option>
				                        					<option value="4.0">4.0</option>
				                        					<option value="100">100</option>
		                        						</c:when>
		                        						<c:when test="${resumeSearch.majorTotalgrade=='4.0'}">
				                        					<option value="4.0">4.0</option>
				                        					<option value="4.3">4.3</option>
				                        					<option value="4.5">4.5</option>
				                        					<option value="100">100</option>
		                        						</c:when>
		                        						<c:when test="${resumeSearch.majorTotalgrade=='100'}">
				                        					<option value="100">100</option>
				                        					<option value="4.0">4.0</option>
				                        					<option value="4.3">4.3</option>
				                        					<option value="4.5">4.5</option>
		                        						</c:when>
		                        					</c:choose>
		                        				</select>
	                       			</div>
	                        	</div>
                        	</div>
                        	<button type="button" class="plus_btn_front"><img alt="plus" src="image/resume_img/plus_btn.png" id="award_btn">추가</button>
                        </div>
                        <!-- 경력 -->
                         <div class="formWrap career" id="career_box">
                        	<h2 class="formheader">경력</h2> 
                        	<div class="form formcareer">
                        		<div class="row">
                        			<div class="input value company" style="width: 278px;">
			                       				<label for="company">회사명</label>
			                       				<input type="text" name="company" id="company" value="${resumeSearch.company}">
	                       			</div>
                        			<div class="input value division" style="width: 278px; margin-left: 0; border-left: 0;">
			                       				<label for="division">부서명</label>
			                       				<input type="text" name="division" id="division" value="${resumeSearch.division}">
	                       			</div>
                        			<div class="input value joincom" style="width: 115px;">
			                       				<label for="joincom">입사년월</label>
			                       				<input type="text" name="joincom" id="joincom" placeholder="2016.03" value="${resumeSearch.joincom}">
	                       			</div>
                        			<div class="input value resigncom" style="width: 115px; margin-left: 0; border-left: 0;">
			                       				<label for="resigncom">퇴사년월</label>
			                       				<input type="text" name="resigncom" id="resigncom" placeholder="2016.06" value="${resumeSearch.resigncom}">
	                       			</div>
                        		</div>
                        		<button class="x_btn" id="award_x">&times;</button>
                        		<div class="row">
                        			<div class="input value position" style="width: 278px;">
			                       				<label for="position">직급/직책</label>
			                       				<input type="text" name="position" id="position" value="${resumeSearch.position}">
	                       			</div>
	                       			<div class="input value duty" style="width: 278px; margin-left: 0; border-left: 0;">
			                       				<label for="duty">직무</label>
			                       				<input type="text" name="duty" id="duty" value="${resumeSearch.duty}">
	                       			</div>
	                       			<div class="input value sal" style="width: 115px;">
			                       				<label for="joincom">연봉</label>
			                       				<input type="text" name="sal" id="sal" placeholder="" value="${resumeSearch.sal}">
	                       			</div>
                        		</div>
                        		<div class="row">
	                       			<div class="textarea value businesswork" style="width: 898px; height: 122px;">
			                       				<label for="businesswork">담당업무</label>
			                       				<textarea rows="30" cols="10" name="businesswork" id="businesswork" placeholder="담당하신 업무와 성과에 대해 간단명료하게 적어주세요.">${resumeSearch.businesswork}</textarea>
	                       			</div>
                        		</div>
                        	</div>
                        	<button type="button" class="plus_btn_front"><img alt="plus" src="image/resume_img/plus_btn.png" id="award_btn">추가</button>
                        </div>
                        <!-- 인턴 대외활동 -->
                        <div class="formWrap intern" id="intern_box">
                        	<h2 class="formheader">인턴·대외활동</h2> 
                        	<div class="form formintern">
                        		<div class="row">
                        			<div class="selectbox intern_activity" style="width: 115px; margin: 0;">
		                        				<label style="margin-left: 0;">활동구분</label>
		                        				<select name="InternActivity" style="letter-spacing: -1px; padding-left: 15px;">
		                        					<c:choose>
		                        						<c:when test="${resumeSearch.internActivity=='인턴'}">
				                        					<option value="인턴">인턴</option>
				                        					<option value="아르바이트">아르바이트</option>
				                        					<option value="동아리">동아리</option>
				                        					<option value="자원봉사">자원봉사</option>
				                        					<option value="사회활동">사회활동</option>
				                        					<option value="교내활동">교내활동</option>
		                        						</c:when>
		                        						<c:when test="${resumeSearch.internActivity=='아르바이트'}">
				                        					<option value="아르바이트">아르바이트</option>
				                        					<option value="인턴">인턴</option>
				                        					<option value="동아리">동아리</option>
				                        					<option value="자원봉사">자원봉사</option>
				                        					<option value="사회활동">사회활동</option>
				                        					<option value="교내활동">교내활동</option>
		                        						</c:when>
		                        						<c:when test="${resumeSearch.internActivity=='동아리'}">
				                        					<option value="동아리">동아리</option>
				                        					<option value="아르바이트">아르바이트</option>
				                        					<option value="인턴">인턴</option>
				                        					<option value="자원봉사">자원봉사</option>
				                        					<option value="사회활동">사회활동</option>
				                        					<option value="교내활동">교내활동</option>
		                        						</c:when>
		                        						<c:when test="${resumeSearch.internActivity=='자원봉사'}">
				                        					<option value="자원봉사">자원봉사</option>
				                        					<option value="아르바이트">아르바이트</option>
				                        					<option value="인턴">인턴</option>
				                        					<option value="동아리">동아리</option>
				                        					<option value="사회활동">사회활동</option>
				                        					<option value="교내활동">교내활동</option>
		                        						</c:when>
		                        						<c:when test="${resumeSearch.internActivity=='사회활동'}">
				                        					<option value="사회활동">사회활동</option>
				                        					<option value="자원봉사">자원봉사</option>
				                        					<option value="아르바이트">아르바이트</option>
				                        					<option value="인턴">인턴</option>
				                        					<option value="동아리">동아리</option>
				                        					<option value="교내활동">교내활동</option>
		                        						</c:when>
		                        						<c:when test="${resumeSearch.internActivity=='교내활동'}">
				                        					<option value="교내활동">교내활동</option>
				                        					<option value="사회활동">사회활동</option>
				                        					<option value="자원봉사">자원봉사</option>
				                        					<option value="아르바이트">아르바이트</option>
				                        					<option value="인턴">인턴</option>
				                        					<option value="동아리">동아리</option>
		                        						</c:when>
		                        					</c:choose>
		                        				</select>
	                       			</div>
                        			<div class="input value interncompany" style="width: 514px; border-left: 0;">
			                       				<label for="interncompany">회사/기관/단체명</label>
			                       				<input type="text" name="interncompany" id="interncompany" value="${resumeSearch.interncompany}">
	                       			</div>
	                       			<div class="input value startintern" style="width: 115px;">
			                       				<label for="startintern">시작년월</label>
			                       				<input type="text" name="startintern" id="startintern" placeholder="2016.03" value="${resumeSearch.startintern}">
	                       			</div>
                        			<div class="input value endintern" style="width: 115px; margin-left: 0; border-left: 0;">
			                       				<label for="endintern">종료년월</label>
			                       				<input type="text" name="endintern" id="endintern" placeholder="2016.06" value="${resumeSearch.endintern}">
	                       			</div>
                        		</div>
                        		<button type="button" class="x_btn" id="award_x">&times;</button>
                        		<div class="row">
	                       			<div class="textarea value interncontent" style="width: 898px; height: 122px;">
			                       				<label for="interncontent">활동내용</label>
			                       				<textarea rows="30" cols="10" name="interncontent" id="interncontent" placeholder="직무와 관련된 경험에 대해 (상황 - 노력 - 결과)순으로 작성하는 것이 좋습니다.">${resumeSearch.interncontent}</textarea>
	                       			</div>
                        		</div>
                        	</div>
                        	<button type="button" type="button" class="plus_btn_front"><img alt="plus" src="image/resume_img/plus_btn.png" id="award_btn">인턴·대외활동 추가</button>
                        </div>
                        <!-- 교육 -->
                        <div class="formWrap learning" id="education_box">
                        	<h2 class="formheader">교육</h2> 
                        	<div class="form formlearning">
                        		<div class="row">
                        			<div class="input value learningname" style="width: 310px;">
			                       				<label for="learningname">교육명</label>
			                       				<input type="text" name="learningname" id="learningname" value="${resumeSearch.learningname}">
	                       			</div>
                        			<div class="input value learningorgan" style="width: 310px;">
			                       				<label for="learningorgan">교육기관</label>
			                       				<input type="text" name="learningorgan" id="learningorgan" value="${resumeSearch.learningorgan}">
	                       			</div>
	                       			<div class="input value startlearning" style="width: 115px;">
			                       				<label for="startlearning">시작년월</label>
			                       				<input type="text" name="startlearning" id="startlearning" placeholder="2016.03" value="${resumeSearch.startlearning}">
	                       			</div>
                        			<div class="input value endlearning" style="width: 115px; margin-left: 0; border-left: 0;">
			                       				<label for="endlearning">종료년월</label>
			                       				<input type="text" name="endlearning" id="endlearning" placeholder="2016.06" value="${resumeSearch.endlearning}">
	                       			</div>
                        		</div>
                        		<button type="button" class="x_btn" id="award_x">&times;</button>
                        		<div class="row">
                        			<div class="textarea value learningcontent" style="width: 898px; height: 122px;">
			                       				<label for="learningcontent">교육내용</label>
			                       				<textarea rows="30" cols="10" name="learningcontent" id="learningcontent" placeholder="이수하신 교육과정에 대해 적어주세요.">${resumeSearch.learningcontent}</textarea>
	                       			</div>
                        		</div>
                        	</div>
                    	    <button type="button" class="plus_btn_front"><img alt="plus" src="image/resume_img/plus_btn.png" id="award_btn">교육 추가</button>
                        </div>
                        <!-- 자격증 -->
                        <div class="formWrap license" id="license_box">
                        	<h2 class="formheader">자격증</h2> 
                        	<div class="form formlicense">
                        		<div class="row">
                        			<div class="input value licensename" style="width: 450px;">
			                       				<label for="licensename">자격증명</label>
			                       				<input type="text" name="licensename" id="licensename" value="${resumeSearch.licensename}">
	                       			</div>
                        			<div class="input value licensepublish" style="width: 284px;">
			                       				<label for="licensepublish">발행처</label>
			                       				<input type="text" name="licensepublish" id="licensepublish" value="${resumeSearch.licensepublish}">
	                       			</div>
	                       			<div class="input value startlearning" style="width: 115px;">
			                       				<label for="startlearning">시작년월</label>
			                       				<input type="text" name="startlicense" id="startlearning" placeholder="2016.03" value="${resumeSearch.startlicense}">
	                       			</div>
                        		</div>
                        		<button type="button" class="x_btn" id="award_x">&times;</button>
                        	</div>
                        	<button type="button" class="plus_btn_front"><img alt="plus" src="image/resume_img/plus_btn.png" id="award_btn">자격증 추가</button>
                        </div>
            	</div>
            	</c:forEach>
      	</div>
<!-- //==========================================================성민resume(body끝)=========================================== -->

<!-- //==========================================================성민resume(body시작)=========================================== -->
      <!-- .unicology로 임의로 정함 -->
      <div class="resume_page">
      <c:forEach items="${resumeSearch}" var="resumeSearch">
            <div class="resume_inner_page">
                       
                        <!-- 수상 --------------------------------------------------------------------------------------------------------------->
                        <div class="award_box">
	                        <!-- 수상1 -->
	                        <div class="award_title">수상</div>
	                        <div class="container" id="award_container">
	                              <div class="award_div">
	                                    <label for="award_title" id="award_title_label">수상명</label>
	                                    <input type="text" name="award_title" id="award_title" class="award" maxlength="50" value="${resumeSearch.award_title}">
	                              </div>
	                              <div class="award_div">
	                                    <label for="award_inst" id="award_inst_label">수여기관</label>
	                                    <input type="text" name="award_inst" id="award_inst" class="award" value="${resumeSearch.award_inst}">
	                              </div>
	                              <div class="award_div">
	                                    <label for="award_year" id="award_year_label">연도</label>
	                                    <input type="text" name="award_year" id="award_year" class="award" placeholder="2016.03" value="${resumeSearch.award_year}">
	                              </div>
	                              <button class="x_btn" type="button" id="award_x">&times;</button>
	                              <div class="award_div" id="award_content_div">
	                                    <label id="award_content_label" for="award_content">
	                                        	  수여내용
	                                          <textarea name="award_content" id="award_content" cols="30" rows="10" placeholder="수여 내용 및 결과를 자세히 입력해주세요.">${resumeSearch.award_content}</textarea>
	                                    </label>
	                              </div>
	                        </div>
	                        <button type="button" class="plus_btn" id="award_plus_btn1"><img alt="plus" src="image/resume_img/plus_btn.png" id="award_btn">수상추가</button>
	                      <!--   수상2 -->
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
	                        <button type="button" class="plus_btn" id="award_plus_btn2"><img alt="plus" src="image/resume_img/plus_btn.png" id="award_btn">수상추가</button>
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
	                        <button type="button" class="plus_btn" id="award_plus_btn3"><img alt="plus" src="image/resume_img/plus_btn.png" id="award_btn">수상추가</button>
                        </div>
                        
                        <!-- 해외경험 ------------------------------------------------------------------------------------------------------------>
                        <div class="abroad_box">
	                        <div class="abroad_title">해외경험</div>
	                        <!-- 해외경험1 -->
	                        <div class="container" id="abroad_container">
	                              <label for="country_name" id="country_name_label">국가명</label>
	                              <input type="text" id="country_name" name="country_name" value="${resumeSearch.country_name}">
	                              <label for="country_start" id="country_start_label">시작년월</label>
	                              <input type="text" id="country_start" name="country_start" placeholder="2016.03" value="${resumeSearch.country_start}">
	                              <label for="country_end" id="country_end_label">종료년월</label>
	                              <input type="text" id="country_end" name="country_end"placeholder="2016.03" value="${resumeSearch.country_end}">
	                              <button class="x_btn" type="button" id="abroad_x">&times;</button>
	                              <div class="abroad_div" id="abroad_content_div">
	                                    <label id="abroad_content_label" for="abroad_content">
	                                        	내용
	                                          <textarea name="abroad_content" id="abroad_content" cols="30" rows="10" placeholder="해외에서 어떤 경험을 했는지 자세히 적어주세요.(ex.어학연수, 워킹홀리데이, 교한학생, 해외근무)">${resumeSearch.abroad_content}</textarea>
	                                    </label>
	                              </div>
	                        </div>
	                        <button type="button"class="plus_btn" id="abroad_plus_btn"><img alt="plus" src="image/resume_img/plus_btn.png" id="abroad_btn">해외경험 추가</button>
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
	                        <button type="button"class="plus_btn" id="abroad_plus_btn2"><img alt="plus" src="image/resume_img/plus_btn.png" id="abroad_btn">해외경험 추가</button>
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
	                        <button type="button" class="plus_btn" id="abroad_plus_btn3"><img alt="plus" src="image/resume_img/plus_btn.png" id="abroad_btn">해외경험 추가</button>
                        </div>
                        
                        <!-- 어학 ---------------------------------------------------------------------------------------------------------------->
                        <div class="language_box">
	                        <div class="abroad_title">어학</div>
	                        <div class="container" id="language_container">
	                              <select name="kind" id="kind" class="select">
	                              	<c:choose>
	                              		<c:when test="${resumeSearch.kind=='회화능력'}">
			                                    <option value="회화능력">회화능력</option>
			                                    <option value="공인시험">공인시험</option>
			                            </c:when> 
			                            <c:when test="${resumeSearch.kind=='공인시험'}">
			                           			 <option value="공인시험">공인시험</option>
			                                     <option value="회화능력">회화능력</option>
			                            </c:when>  
	                              	</c:choose>
	                              </select>
	                              <select name="language_kind" id="language_kind" class="select" class="select">
	                              		<option value="${resumeSearch.language_kind}">${resumeSearch.language_kind}</option>
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
	                              	<c:choose>
	                              		<c:when test="${resumeSearch.language_level=='일상회화 가능'}">
			                                    <option value="일상회화 가능">일상회화 가능</option>
			                                    <option value="비즈니스 회화가능">비즈니스 회화가능</option>
			                                    <option value="원어민 수준">원어민 수준</option>
			                              </c:when>
			                              <c:when test="${resumeSearch.language_level=='비즈니스 회화가능'}">
			                                    <option value="비즈니스 회화가능">비즈니스 회화가능</option>
			                                    <option value="일상회화 가능">일상회화 가능</option>
			                                    <option value="원어민 수준">원어민 수준</option>
			                              </c:when>
			                              <c:when test="${resumeSearch.language_level=='원어민 수준'}">
			                              		<option value="원어민 수준">원어민 수준</option>
			                                    <option value="일상회화 가능">일상회화 가능</option>
			                                    <option value="비즈니스 회화가능">비즈니스 회화가능</option>
			                              </c:when>
	                              	</c:choose>
	                              </select>
	                              <button class="x_btn"type="button"  id="language_x">&times;</button>
	                        </div>
	                        <button type="button" class="plus_btn" id="language_plus_btn"><img alt="plus" src="image/resume_img/plus_btn.png" id="abroad_btn">어학 추가</button>
	                        <!-- 어학2 -->
	                        <div class="container" id="language_container2">
	                              <select name="kind1" id="kind" class="select">
	                                    <option value="">구분</option>
	                                    <option value="회화능력">회화능력</option>
	                                    <option value="공인시험">공인시험</option>
	                              </select>
	                              <select name="language_kind1" id="language_kind" class="select" class="select">
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
	                              <select name="language_level1" id="language_level" class="select">
	                                    <option value="">회화능력</option>
	                                    <option value="일상회화 가능">일상회화 가능</option>
	                                    <option value="비즈니스 회화가능">비즈니스 회화가능</option>
	                                    <option value="원어민 수준">원어민 수준</option>
	                              </select>
	                              <button type="button" class="x_btn" id="language_x2">&times;</button>
	                        </div>
	                        <button type="button"class="plus_btn" id="language_plus_btn2"><img alt="plus" src="image/resume_img/plus_btn.png" id="abroad_btn">어학 추가</button>
                        </div>
                        
                        <!-- 포트폴리오 --------------------------------------------------------------------------------------------------------------------->
                        <div class="portfolio_box">
	                        <div class="abroad_title" id="portfolio_title">포트폴리오</div>
	                        <button id="my_file">내 파일함</button>
	                        <div class="container" id="portfolio_container">
	                              <button type="button" class="file_btn" id="urlplus_btn">URL 추가<img alt="plus" src="image/resume_img/plus_btn.png" id="abroad_btn"></button>
	                              <button type="button" class="file_btn" id="fileplus_btn">파일 추가<img alt="plus" src="image/resume_img/plus_btn.png" id="abroad_btn"></button>
	                              <input type="file" name="plusfile" id="plusfile">
	                              <input type="text" name="url_addr" id="url_addr">
	                              <button type="button" class="x_btn" id="url_remove">&times;</button>
	                        </div>
                        </div>
                        
                        <!-- 취업우대 ----------------------------------------------------------------------------------------------------------------------->
                        <div class="protect_box">
	                        <div class="abroad_title">취업우대</div>
	                        <div class="container" id="protect_container">
	                              <select name="bohun" id="bohun" class="select2">
	                              		<c:choose>
	                              			<c:when test="${resumeSearch.bohun=='대상'}">
			                                    <option value="대상">대상</option>
			                                    <option value="비대상">비대상</option>
	                                    	</c:when>
	                                    	<c:when test="${resumeSearch.bohun=='비대상'}">
			                                    <option value="비대상">비대상</option>
			                                    <option value="대상">대상</option>
	                                    	</c:when>
	                              		</c:choose>      
	                              </select>
	                              <select name="job_protection" id="Job_protection" class="select2">
	                                    <c:choose>	
	                                    	<c:when test="${resumeSearch.job_protection=='대상'}">
			                                    <option value="대상">대상</option>
			                                    <option value="비대상">비대상</option>
	                                    	</c:when>
	                                    	<c:when test="${resumeSearch.job_protection=='비대상'}">
			                                    <option value="비대상">비대상</option>
			                                    <option value="대상">대상</option>
	                                    	</c:when>
	                                    </c:choose>	
	                              </select>
	                              <select name="subsidy" id="subsidy" class="select2">
	                                   <c:choose>	
	                                    	<c:when test="${resumeSearch.subsidy=='대상'}">
			                                    <option value="대상">대상</option>
			                                    <option value="비대상">비대상</option>
	                                    	</c:when>
	                                    	<c:when test="${resumeSearch.subsidy=='비대상'}">
			                                    <option value="비대상">비대상</option>
			                                    <option value="대상">대상</option>
	                                    	</c:when>
	                                    </c:choose>	
	                              </select>
	                              <select name="obstacle" id="obstacle" class="select2">
	                                     <c:choose>	
	                                    	<c:when test="${resumeSearch.obstacle=='대상'}">
			                                    <option value="대상">대상</option>
			                                    <option value="비대상">비대상</option>
	                                    	</c:when>
	                                    	<c:when test="${resumeSearch.obstacle=='비대상'}">
			                                    <option value="비대상">비대상</option>
			                                    <option value="대상">대상</option>
	                                    	</c:when>
	                                    </c:choose>	
	                              </select>
	                              <select name="MilitaryService" id="obstacle" class="select2">
	                                   <c:choose>	
	                                    	<c:when test="${resumeSearch.militaryService=='군필'}">
			                                    <option value="군필">군필</option>
			                                    <option value="미필">미필</option>
			                                    <option value="면제">면제</option>
			                                    <option value="해당없음">해당없음</option>
	                                    	</c:when>
	                                    	<c:when test="${resumeSearch.militaryService=='미필'}">
			                                   	<option value="미필">미필</option>
			                                    <option value="군필">군필</option>
			                                    <option value="면제">면제</option>
			                                    <option value="해당없음">해당없음</option>
	                                    	</c:when>
	                                   		<c:when test="${resumeSearch.militaryService=='면제'}">
			                                    <option value="면제">면제</option>
			                                    <option value="군필">군필</option>
			                                    <option value="미필">미필</option>
			                                    <option value="해당없음">해당없음</option>
	                                    	</c:when>
	                                    	<c:when test="${resumeSearch.militaryService=='해당없음'}">
			                                    <option value="해당없음">해당없음</option>
			                                    <option value="군필">군필</option>
			                                    <option value="미필">미필</option>
			                                    <option value="면제">면제</option>
	                                    	</c:when>
	                                    </c:choose>		
	                              </select>
	                        </div>
                        </div>
                        
                        <!-- 우측menu bar -->
                        <div class="menu_wrap">
	                        <div class="menu_bar">
	                              <div class="resume_header">이력서 항목</div>
	                              <div>
	                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_top"><img alt="graduation" src="image/resume_img/graduation_cap2.png" id="graduatioin_cap">학력<img id="graduatioin_plus" alt="plus" src="image/resume_img/minus2.png" class="plus"></button>
	                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_career"><img alt="graduation" src="image/resume_img/info_card.png" id="info_card">경력<img id="career_plus" alt="plus" src="image/resume_img/plus.png" class="plus"></button>
	                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_business"><img alt="graduation" src="image/resume_img/business_bag.png" id="business_bag">인턴/대외활동<img id="business_plus" alt="plus" src="image/resume_img/plus.png" class="plus"></button>
	                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_education"><img alt="graduation" src="image/resume_img/book.png" id="book">교육<img id="education_plus" alt="plus" src="image/resume_img/plus.png" class="plus"></button>
	                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_license"><img alt="graduation" src="image/resume_img/license.png" id="license">자격증<img id="license_plus" alt="plus" src="image/resume_img/plus.png" class="plus"></button>
	                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_award"><img alt="graduation" src="image/resume_img/trophy.png" id="trophy">수상<img alt="plus" src="image/resume_img/plus.png" class="plus" id="award_plus"></button>
	                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_abroad"><img alt="graduation" src="image/resume_img/air-transport.png" id="air-transport">해외경험<img alt="plus" src="image/resume_img/plus.png" class="plus" id="abroad_plus"></button>
	                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_language"><img alt="graduation" src="image/resume_img/earth.png" id="earth">어학<img alt="plus" src="image/resume_img/plus.png" class="plus" id="language_plus"></button>
	                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_portfolio"><img alt="graduation" src="image/resume_img/portfolio.png" id="portfolio">포트폴리오<img alt="plus" src="image/resume_img/plus.png" class="plus" id="portfolio_plus"></button>
	                                    <button type="button" class="resume_plus_btn" id="resume_plus_btn_bottom"><img alt="graduation" src="image/resume_img/hand-shake.png" id="hand-shake">취업우대<img alt="plus" src="image/resume_img/plus.png" class="plus" id="protect_plus"></button>
	                              </div>
	                        </div>
	                        <div class="menu_middle_bar">임시저장</div>
	                        <div class="menu_bottom_bar">작성완료</div>
                        </div>
                 
            </div>
            </c:forEach>
      </div>
</form>
<!-- //==========================================================다슬resume(body끝)================================================================= -->
</body>
</html>
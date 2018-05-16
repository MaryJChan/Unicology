<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body,ul {
		margin: 0;
		padding: 0;
	}
	ul,li {
		list-style: none;
	}
	a {
		text-decoration: none;
	}
	a:active,a:visited {
		color: inherit;
	}
	#wrap {
		
	}
	#header_div{
        margin: 62px auto;
     	text-align: center;
     	font-weight: bold;
     	font-size: 30px;
     	color: #6495ED;
     	letter-spacing: 3px;
     	
     }
	#container {
		width: 768px;
		margin: 0 auto;
	}
	.content {
		width: 660px;
		height: 100%;
		margin: 0 auto;
	}
	.row_group {
		zoom: 1;
		margin-bottom: 10px;
		border: solid 2px #dadada;
		background: #fff;
	}
	.join_row:last-child {
    	border-bottom: 1px solid #dadada;
	}
	.join_row {
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	    padding: 9px;
	    background: #fff;
	    border-bottom: 2px solid #dadada;
    }
    input {
    	border: 0;
    }
	.member_bar {
		width: 630px;
		height: 20px;
		outline: none;
		background-color: inherit;
	}
	.emailmember_bar {
		width: 200px;
		height: 20px;
		background-color: inherit;
	}
	#emailselect {
		background-color: inherit;
		width: 150px;
		height: 30px;
		line-height: 30px;
	}
	.emailmember_bar,#emailselect {
		outline: none;
	}
	.essential{
		color: red;
		font-size: small;
		display: none;
		float: left;
	}
	.info {
		height: 20px;
		width: 20px;
		border: 1px;
		display: inline-block;
		
	}
	/* 주소 */
    #jusobutton {
          color: white;
          font-weight: bold;
          cursor: pointer;
          margin-left: 50px;
          width: 100px;
    	  height: 30px;
    	  border-radius: 5px;
    }
    .addr_bar:first-child {
          width: 40%;
    }
    .addr_bar {
          border: 1px solid #ddd;
          width: 100%;
          margin: 5px 0; 
          height: 30px;
    }
    #addr_logo {
         width: 63px;
         height: 11px;
    }
    #address {
         margin: 0px auto;
         text-align: center;
    }
    /* 생일 */
	#birthDiv {
		padding: 0;
		height: 38px;
		line-height: 38px;
	}
	#birth1 {
		background-color: #dadada;
		display: inline-block;
		width: 10%;
		text-align: center;
		height: 100%;
		color: #fff;
		font-size: 15px;
		font-weight: bold;
	}
	.birth {
		height: 28px;
		margin: 0 5px 5px;
	}
	#birthmonth  {
		font-weight: bold;
		height: 30px;
		width: 50px;
		border: 1px solid #dadada;
		margin: 0 5px 5px;
	}
	/* 성별 */ 
	.sexDiv1 {
		width: 200px;
		height: 31px;
		display: inline-block;
		position: relative;
	}
	#man {
		margin-left: 70px;
	}
	#woman {
		margin-left: 150px;
	}
	.sexlabel {
		width: 200px;
		height: 31px;
		display: block;
		position: absolute;
		left:0;
		top: 0;
		z-index: 1;
		border: 1px solid #dcdcdc;
		line-height: 31px;
		text-align: center;
		color: #dcdcdc;
		background-color: #fff; 
		margin-left: 65px;
	}
	#womanlabel {
		margin-left: 150px;
	}
	/* 관심직무 */
	#duty_select {
		border: 1px solid #6495ED;
		color: #6495ED;
		cursor: pointer;
		display: inline-block;
		padding: 2px 5px;
		border-radius: 5px;
	}
	.duty_modal {
	   	display: none; /* Hidden by default */
	    position: fixed; /* Stay in place */
	    z-index: 10; /* Sit on top */
	    padding-top: 100px; /* Location of the box */
	    left: 0;
	    top: 0;
	    width: 100%; /* Full width */
	    height: 100%; /* Full height */
	    overflow: auto; /* Enable scroll if needed */
	    background-color: rgb(0,0,0); /* Fallback color */
	    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	.duty_modal_content {
	    width: 75%;
	    height: 450px;
		padding: 16px;
		background-color: #fefefe;
		width: 560px;
		margin: 0 auto;
		border-radius: 5px;
	}
	#dutygroup {
		width: 100%;
		height: 100%;
	}
	.group_list {
		width: 150px;
		border-radius: 4px;
		box-sizing: border-box;
		display: inline-block;
	}
	.group_list li {
	    background-color: #dadada;
	    height: 40px;
	    line-height: 40px;
	    color: #fff;
	    padding-left: 5px;
	    border-bottom: 2px solid #fff;
	    font-weight: bold;
    }
    .on{
    	background-color: #fff!important;
    	color: #dadada!important;
    }
    .group_items_area {
    	display: inline-block;
	    background-color: #fff;
	    float: right;
	    border-radius: 20px;
	    text-align: center;
	    margin-left: 10px;
	    width: 400px;
	    height: 100%;
    }
    #group_title {
    	color: #6495ED;
    	font-weight: bold;
    }
    #group_content {
    	display: inline-block;
    	height: 70%;
    	width: 100%;
    	border-bottom: 2px solid #dadada;
    }
    .group_business,.group_marketing {
    	display: none;
    }
    .group_content_explain {
    	font-size: 13px;
	    color: #333;
	    float: left;
	    width: 50%;
	    margin: 4px 0;
	    font-weight: normal;
	    text-align: left;
    }
    #group_result {
    	display:inline-block;
    	text-align: center;
    	width: 100%;
    	height: 30%;
    }
	.close,.close1,.close2 {
	    float: right;
		font-weight: bold;
		font-size: 15px;
		background-color: #999;
		color: white;
		display: inline-block;
		width: 30px;
		height: 30px;
		text-align: center;
		line-height: 30px;
	}
	.close:hover,.close:focus,.close1:hover,.close1:focus,.close2:hover,.close2:focus {
	    color: #000;
	    text-decoration: none;
	    cursor: pointer;
	}
	/* 학력 */ 
	#gradeselect {
		font-weight: bold;
		height: 30px;
		width: 100px;
		border: 1px solid #dadada;
		margin: 0 5px 5px;
	}
	/* 학교 */
	#school_search_btn,#major_search_btn {
		border: 1px solid #6495ED;
		color: #6495ED;
		cursor: pointer;
		display: inline-block;
		padding: 2px 5px;
		border-radius: 5px;
	}
	.school_modal {
	   	display: none; /* Hidden by default */
	    position: fixed; /* Stay in place */
	    z-index: 10; /* Sit on top */
	    padding-top: 100px; /* Location of the box */
	    left: 0;
	    top: 0;
	    width: 100%; /* Full width */
	    height: 100%; /* Full height */
	    overflow: auto; /* Enable scroll if needed */
	    background-color: rgb(0,0,0); /* Fallback color */
	    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	.school_modal_content {
	    width: 75%;
	    height: 350px;
		padding: 16px;
		background-color: #f0f0f0;
		width: 250px;
		margin: 0 auto;
		border-radius: 5px;
	}
	
	/* 입학~졸업년도 */
	.school_ {
		font-weight: bold;
		height: 30px;
		border: 1px solid #dadada;
		margin: 0 5px 5px;
	}
	.year {
		width: 100px;
	}
	.mon {
		width: 50px;
	}
	#btnDiv {
		margin: 100px auto;
	}
	.agree {
		width: 190px;
		height: 60px;
		background-color: #6495ED;
		color: white;
		weight: bold;
		line-height: 60px;
		font-size: 15px;
		text-align: center;
		cursor: pointer;
		display: inline-block;
	}
	.plus.agree {
		background-color: #dadada;
	}
	.dis.agree {
		float: left;
		background-color: #dadada;
	}
	.plus.agree {
		float: right;
	}
	.btn.agree {
		margin-left: 45px;
	}
	.disagree_a {
		display: inline-block;
		color: #fff;
		text-decoration: none;
	}
	.agree_a {
		display: inline-block;
		color: #fff;
		text-decoration: none;
	}
</style>
<script type="text/javascript">
	$(document).ready(function () {
		
		
		$(document).on("click",".agree_a",function (){

		var id = $.trim($("#get_id").val());
		var pw = $.trim($("#get_pw").val());
		var repw = $.trim($("#get_repw").val());
		var name = $.trim($("#get_name").val());
		var phone = $.trim($("#get_phone").val());
		/* 이메일 셀렉트문과 응용해서 넘기는 방법 */
		var email = $("#email").val()+"@"+$("#email_adress").val();
		
		
		if (id == "") {
			$("#alert_id").text("필수 정보입니다.").css("display","block");
			$("#get_id").focus();
			$("#idDiv").css("background-color","#fef3f3").css("border","1px solid red");
			return false;
			}
			else if (id != ""){
				$(".essential").css("display","none");
				$("#get_pw").focus();
			}
		
		
		/* 비밀번호 정규식 */
		var regPass = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/; // 6~20 자 이내 숫자 + 영문
		
		if (pw == "") {
			$("#alert_pw").text("필수 정보입니다.").css("display","block");
			$("#get_pw").focus();
			$("#pwDiv").css("background-color","#fef3f3").css("border","1px solid red");
			return false;
		}
			else if(!regPass.test(pw)){
				$("#alert_pw").text("6~20자 이내 숫자와 영문을 포함하여 입력해주세요.").css("display","block");
				$("#pwDiv").css("background-color","#fef3f3").css("border","1px solid red");
				$("#get_pw").select();
				return false;
			}
			else if (pw != ""){
				$(".essential").css("display","none");
				$("#get_repw").focus();
			}
		if (repw == "") {
			$("#alert_repw").css("display","block");
			$("#get_repw").text("필수 정보입니다.").focus();
			$("#repwDiv").css("background-color","#fef3f3").css("border","1px solid red");
			return false;
		}
			else if (pw != repw) {
				$("#alert_repw").text("비밀번호와 일치 하지 않습니다.").css("display","block");
				$("#repwDiv").css("background-color","#fef3f3").css("border","1px solid red");
				$("#get_repw").select();
				return false;
			} 
		if (name == "") {
			$("#alert_name").text("필수 정보입니다.").css("display","block");
			$("#get_name").focus();
			$("#nameDiv").css("background-color","#fef3f3").css("border","1px solid red");
			return false;
		}
		else if (name != ""){
			$(".essential").css("display","none");
			$("#get_phone").focus();
		}
		var regPhone = /^(?:(010\d{4})|(01[1|6|7|8|9]\d{3,4}))(\d{4})$/;
		if (phone == "") {
			$("#get_phone").focus();
			$("#alert_phone").text("필수 정보입니다.").css("display","block");
			$("#phoneDiv").css("background-color","#fef3f3").css("border","1px solid red");
			return false;
			}else if($.isNumeric(phone)==false){
				$("#get_phone").focus();
				$("#get_phone").val("");
				$("#alert_phone").text("숫자만 입력해주세요.").css("display","block");
				return false;
			}else if(!regPhone.test(phone)){
				$("#get_phone").focus();
				$("#alert_phone").text("정확한 정보만 입력해주세요.").css("display","block");
				return false;
			}	
		var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if ($("#email").val() == "") {
			$("#alert_email").text("필수 정보입니다.").css("display","block");
			$("#email").focus();
			$("#emailDiv").css("background-color","#fef3f3").css("border","1px solid red");
			return false;
			}
			else if($("#emailselect").val() == ""){
				$("#alert_email").text("필수 정보입니다.").css("display","block");
				$("#emailselect").focus();
				return false;
			}
			else if (!regEmail.test(email)) {
				$("#email").focus();
				$("#alert_email").text("정확한 정보만 입력해주세요.").css("display","block");
				return false;
			}
			else if (email != ""){
				$(".essential").css("display","none");
				$("#get_phone").focus();
			}
		
		//필수정보만 가입 테스트
		$("#frm_member").submit();
	});
		
			/* 입학년도/입학월/		졸업년도/졸업월 */	
			var value = "";
			$("#ent_year").on("change",function (){
				var eyselect = $(this).val();
				value = $("#atten_ey");
				value.val(eyselect);
			});
			$("#ent_month").on("change",function (){
				var emselect = $(this).val();
				value = $("#atten_em");
				value.val(emselect);
			});
				
			$("#gradu_year").on("change",function (){
				var gyselect = $(this).val();
				value = $("#atten_gy");
				value.val(gyselect);
			});
			$("#gradu_month").on("change",function (){
				var gmselect = $(this).val();
				value = $("#atten_gm");
				value.val(gmselect);
			});

	
		/* e mail 도메인 사이트 바뀌는 방법 */
	$("#emailselect").on("change",function () {
		var emailselect = $("#emailselect").val();
		var email_address = $("#email_address");
		if (emailselect == "직접입력") {
			email_address.attr("readonly",false);
			email_address.focus();
			email_address.val("");
		}else {
			email_address.val(emailselect);
			email_address.attr("readonly",true);
			}
		
	});
	// 남여 선택시 색변화
	$(document).on("click", "#manlabel" ,function (){
		$("#manlabel").css("color","#6495ED");
		$("#manlabel").css("border","1px solid #6495ED");
		
		$("#womanlabel").css("color","#dcdcdc");
		$("#womanlabel").css("border","1px solid #dcdcdc");
	});
	$(document).on("click", "#womanlabel" ,function (){
		$("#womanlabel").css("color","#6495ED");
		$("#womanlabel").css("border","1px solid #6495ED");
		
		$("#manlabel").css("color","#dcdcdc");
		$("#manlabel").css("border","1px solid #dcdcdc");
	});
	//최종학력
	$("#gradeselect").on("change",function (){
		var gradeselect = $(this).val();
		var grade = $("#get_grade");
		
		grade.val(gradeselect);
		
	});
	
	
	
	// 직무 상위 카테고리 눌렀을때 하위 카테고리 나열
	$(".group").css("display","none");
	$(".group_list li").on("click", function(){
		$(".group_list li").removeClass('on');
		var test = $(this).attr("class","on");	
		if (test.text() == "경영/사무"){
			$("#group_title").text("경영/사무");
			
			$(".group").not(".business").css("display","none");
			$(".group.business").css("display","block");
		}
		else if(test.text() == "마케팅/무역/유통") {
			$("#group_title").text("마케팅/무역/유통");
			
			$(".group").not(".marketing").css("display","none");
			$(".group.marketing").css("display","block");
		}
		else if(test.text() == "영업/고객상담") {
			$("#group_title").text("영업/고객상담");
			
			$(".group").not(".GRO").css("display","none");
			$(".group.GRO").css("display","block");
		}
		else if(test.text() == "IT/인터넷") {
			$("#group_title").text("IT/인터넷");
			
			$(".group").not(".IT").css("display","none");
			$(".group.IT").css("display","block");
		}
		else if(test.text() == "연구개발/설계") {
			$("#group_title").text("연구개발/설계");
			
			$(".group").not(".develop").css("display","none");
			$(".group.develop").css("display","block");
		}
		else if(test.text() == "생산/제조") {
			$("#group_title").text("생산/제조");
			
			$(".group").not(".production").css("display","none");
			$(".group.production").css("display","block");
		}
		else if(test.text() == "전문/특수직") {
			$("#group_title").text("전문/특수직");
			
			$(".group").not(".profession").css("display","none");
			$(".group.profession").css("display","block");
		}
		else if(test.text() == "디자인") {
			$("#group_title").text("디자인");
			
			$(".group").not(".design").css("display","none");
			$(".group.design").css("display","block");
		}
		else if(test.text() == "미디어") {
			$("#group_title").text("미디어");
			
			$(".group").not(".media").css("display","none");
			$(".group.media").css("display","block");
		}
		else if(test.text() == "서비스") {
			$("#group_title").text("서비스");
			
			$(".group").not(".service").css("display","none");
			$(".group.service").css("display","block");
		}
		else if(test.text() == "건설") {
			$("#group_title").text("건설");
			
			$(".group").not(".build").css("display","none");
			$(".group.build").css("display","block");
		}
		
	});	
	//체크 버튼을 누르면 체크박스의 값들을 
	
	var modal_duty = $(".list");
	$("input:checkbox").click(function(){
        
        $("input:checkbox:checked").each(function() {
           
            var duty = $("input:checkbox:checked");
	    	var result = "";
	    	for (var i = 0; i < duty.length; i++) {
	    	   
	    		   result += $(duty[i]).val()+" & ";
				
	    	}
           		modal_duty.text(result);
           		$("#get_duty").val(result);
	    	
        });
	});
	
	//추가정보 입력하기 버튼 누를 시에 추가정보 입력창 아래에 뜨기
	$(".plus.agree").click(function(){
		
		$(".plus.agree").css("background-color","#6495ED");
		$("#plusmember").css("display","block");
	});
	
	//$(document).on(ready) 끝
});
		
	
	/* A-jax 활용한 아이디에서 초점 된 것이 끝날때 ID 중복체크 검사 후 판단 */
	$(document).on("blur","#get_id",function (){
		var id = $(this).val();
		if(id == ""){
			$(this).select();
			$("#alert_id").text("ID를 입력해주세요.").css("display","block").css("color","red");
			$("#idDiv").css("background-color","#fef3f3").css("border","1px solid red");
		}else if (id != ""){
			$("#alert_id").css("display","none");
			$("#idDiv").css("background-color","#fff").css("border","1px solid #dadada");
			$.ajax({
				url: "memajax.unicol",
				type: "POST",
				dataType: "json",
				data: "id="+ id,
				success: function(data){
					if (data.flag == "1") {
						$("#alert_id").text("중복된 ID 입니다.").css("display","block").css("color","red");
						$("#get_id").focus();
					}else {
						$("#alert_id").text("멋진 ID 입니다.").css("display","block").css("color","#6495ED");
					}
				},
				error: function () {
					alert("System Error!!!");
				}
			});
		}
	});
	
	$(document).on("blur","#get_pw",function(){
		var val = $(this).val();	
		if (val != "") {
			$("#pwDiv").css("background-color","#fff").css("border","1px solid #dadada");
		}
	});
	$(document).on("blur","#get_repw",function(){
		var val = $(this).val();	
		if (val != "") {
			$("#repwDiv").css("background-color","#fff").css("border","1px solid #dadada");
		}
	});
	$(document).on("blur","#get_name",function(){
		var val = $(this).val();	
		if (val != "") {
			$("#nameDiv").css("background-color","#fff").css("border","1px solid #dadada");
		}
	});
	$(document).on("blur","#get_phone",function(){
		var val = $(this).val();	
		if (val != "") {
			$("#phoneDiv").css("background-color","#fff").css("border","1px solid #dadada");
		}
	});
	$(document).on("blur","#email",function(){
		var val = $(this).val();
		if (val != "") {
			$("#emailDiv").css("background-color","#fff").css("border","1px solid #dadada");
		}
	});
	
	//학교 이름 검색기능
	$(document).on("click","#schoolSearch_btn",function(){
		var schoolName = $("#schoolName").val();
		$.ajax({
			url: "univajax.unicol",
			type: "POST",
			data: "schoolName="+ schoolName,
			success: function(result){
					$("#schoolResult").html(result);
			},
			error: function () {
				alert("System Error!!!");
			}
	});
	//선택한 학교 인풋창에 담기
	$(document).on("click",".univ_name",function(){
		var val = $(this).attr("data_num");
		$("#get_school").val(val);
		$(".school_modal").css("display","none");
	});
	
	
});
</script>

</head>
<body>
	<div id="wrap">
         <div id="header_div">
         	<p>회원가입</p>
         </div>
		<div id="container">
			<div class="content">
				<form id="frm_member" name="frm_member" action="memberInsert.unicol" method="POST">
				<div id="member">
				<div class="row_group">
					<div id="idDiv" class="join_row">
						<input class="member_bar" id="get_id" name="get_id" type="text" placeholder="아이디">
						<span class="essential" id="alert_id"></span>
					</div>
					
					<div id="pwDiv" class="join_row">
						<input class="member_bar" id="get_pw" name="get_pw" type="password" placeholder="비밀번호">
						<span class="essential" id="alert_pw"></span>
					</div>
					<div id="repwDiv" class="join_row">
						<input class="member_bar" id="get_repw" name="get_repw" type="password" placeholder="비밀번호 재확인">
						<span class="essential" id="alert_repw"></span>
					</div>
				</div>
				<div class="row_group">
					<div id="nameDiv" class="join_row">
						<input class="member_bar" id="get_name" name="get_name" type="text" maxlength="4" placeholder="이름">
						<span class="essential" id="alert_name"></span>
					</div>
					<div id="phoneDiv" class="join_row">
						<input class="member_bar" id="get_phone" name="get_phone" maxlength="11" type="text" placeholder="전화번호">
						<span class="essential" id="alert_phone"></span>
					</div>
					<div id="emailDiv" class="join_row">
						<input class="emailmember_bar" id="email" name="email" type="text" name="" placeholder="e-mail">@
						<input class="emailmember_bar" id="email_address" name="email_address" type="text">
						<select id="emailselect">
							<option value="직접입력" selected="selected">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
							<option value="hotmail.com">hotmail.com</option>
							<option value="yahoo.com">yahoo.com</option>
							<option value="korea.com">korea.com</option>
							<option value="dreamwiz.com">dreamwiz.com</option>
						</select>
						<span class="essential" id="alert_email"></span>
					</div>
					
				</div>
				
				</div>
				
				<!-- 추가정보 입력창 -->
				<div id="plusmember" style="display: none;">
				
				<h2 style="text-align: center; color: #6495ED;"> 추가 정보 입력창(선택)</h2>
				<div class="row_group">
					<!-- 주소 -->
					<div id="addrDiv" class="join_row">
						<input type="text" id="sample6_postcode" name="sample6_postcode" class="addr_bar" placeholder="우편번호">
						<input type="button" onclick="sample6_execDaumPostcode()" id="jusobutton" value="우편번호 찾기"><br>
						<input type="text" id="sample6_address" name="sample6_address" class="addr_bar" placeholder="주소">
						<input type="text" id="sample6_address2" name="sample6_address2" class="addr_bar" placeholder="상세주소">
                    </div>
                    <!-- 성별  -->
					<div id="sexDiv" class="join_row">
						<span id="sexDiv_man" class="sexDiv1">
						<input type="radio" id="man" name="get_sex" value="M">남
						<label class="sexlabel" id="manlabel" for ="man">남자</label>
						</span>
						<span id="sexDiv_woman" class="sexDiv1">
						<input type="radio" id="woman" name="get_sex" value="F">여
						<label class="sexlabel" id="womanlabel" for ="woman">여자</label>
						</span>
					</div>
					<!-- 생일 -->
					<div id="birthDiv" class="join_row">
						<div id="birth1">생일</div>
						<input type="text" id="birthyear" name="birthyear" class="birth" maxlength="2" placeholder="년19(2자)">
						<select id="birthmonth" name="birthmonth" >
						  <option value="월" selected="selected">월</option>
						  <option value="01">1</option>
						  <option value="02">2</option>
						  <option value="03">3</option>
						  <option value="04">4</option>
						  <option value="05">5</option>
						  <option value="06">6</option>
						  <option value="07">7</option>
						  <option value="08">8</option>
						  <option value="09">9</option>
						  <option value="10">10</option>
						  <option value="11">11</option>
						  <option value="12">12</option>
						</select>
						<input type="text" id="birthday" name="birthday" class="birth" maxlength="2" placeholder="일">
					</div>					
				</div>
				<div class="row_group">
					<!-- 관심직무 -->
					<div id="dutyDiv" class="join_row">
						<input type="text" id="get_duty" name="get_duty" value="" placeholder="관심직무" style="height: 30px;">
						 <div id="duty_select">선택하기</div>
						 <!-- 직무 모달창 -->
						  <div id="dutyModal" class="duty_modal">
						    <div class="duty_modal_content">
						      <div id="dutygroup">
							      <ul class="group_list">
						      		<li id="group_business">경영/사무</li>
						      		<li id="group_marketing">마케팅/무역/유통</li>
						      		<li id="group_GRO">영업/고객상담</li>
						      		<li id="group_IT">IT/인터넷</li>
						      		<li id="group_develop">연구개발/설계</li>
						      		<li id="group_production">생산/제조</li>
						      		<li id="group_profession">전문/특수직</li>
						      		<li id="group_design">디자인</li>
						      		<li id="group_media">미디어</li>
						      		<li id="group_service">서비스</li>
						      		<li id="group_build">건설</li>	
							      </ul>
							      <div class="group_items_area">
								      <span class="close1">&times;</span>
								      <div id="group_title">
								      		직무를 선택해주세요
								      </div>
								      <div id="group_content">
								      	<div class="group business">
									      		<label for="business1" class="group_content_explain"><input type="checkbox" id="business1" name="group_business_result"  value="기획/전략/경영">기획/전략/경영</label>
									      		<label for="business2" class="group_content_explain"><input type="checkbox" id="business2" name="group_business_result"   value="인사/노무/교육">인사/노무/교육</label>
									      		<label for="business3" class="group_content_explain"><input type="checkbox" id="business3" name="group_business_result"   value="재무/세무/IR">재무/세무/IR</label>
									      		<label for="business4" class="group_content_explain"><input type="checkbox" id="business4" name="group_business_result"   value="일반사무/총무/법무">일반사무/총무/법무</label>
									      		<label for="business5" class="group_content_explain"><input type="checkbox" id="business5" name="group_business_result"   value="경리/회계/결산">경리/회계/결산</label>
									      		<label for="business6" class="group_content_explain"><input type="checkbox" id="business6" name="group_business_result"   value="비서/사무보조">비서/사무보조</label>
								      	</div>
								      	
								      	<div class="group marketing">
									      		<label for="marketing1" class="group_content_explain"><input type="checkbox" id="marketing1" name="group_marketing_result"   value="마케팅/광고">마케팅/광고</label>
									      		<label for="marketing2" class="group_content_explain"><input type="checkbox" id="marketing2" name="group_marketing_result"   value="유통/물류/재고">유통/물류/재고</label>
									      		<label for="marketing3" class="group_content_explain"><input type="checkbox" id="marketing3" name="group_marketing_result"   value="홍보/PR">홍보/PR</label>
									      		<label for="marketing4" class="group_content_explain"><input type="checkbox" id="marketing4" name="group_marketing_result"   value="무역/해외영업">무역/해외영업</label>
									      		<label for="marketing5" class="group_content_explain"><input type="checkbox" id="marketing5" name="group_marketing_result"   value="구매/자재">구매/자재</label>
									      		<label for="marketing6" class="group_content_explain"><input type="checkbox" id="marketing6" name="group_marketing_result"   value="운전/운송">운전/운송</label>
									      		<label for="marketing7" class="group_content_explain"><input type="checkbox" id="marketing7" name="group_marketing_result"   value="상품기획/MD">상품기획/MD</label>
								      	</div>
								      	
								      	<div class="group GRO">
									      		<label for="GRO1" class="group_content_explain"><input type="checkbox" id="GRO1" name="group_GRO_result" value="제품/서비스영업">제품/서비스영업</label>
									      		<label for="GRO2" class="group_content_explain"><input type="checkbox" id="GRO2" name="group_GRO_result" value="금융/보험영업">금융/보험영업</label>
									      		<label for="GRO3" class="group_content_explain"><input type="checkbox" id="GRO3" name="group_GRO_result" value="광고영업">광고영업</label>
									      		<label for="GRO4" class="group_content_explain"><input type="checkbox" id="GRO4" name="group_GRO_result" value="기술영업">기술영업</label>
									      		<label for="GRO5" class="group_content_explain"><input type="checkbox" id="GRO5" name="group_GRO_result" value="영업관리/영업지원">영업관리/영업지원</label>
									      		<label for="GRO6" class="group_content_explain"><input type="checkbox" id="GRO6" name="group_GRO_result" value="채권/심사">채권/심사</label>
									      		<label for="GRO7" class="group_content_explain"><input type="checkbox" id="GRO7" name="group_GRO_result" value="아웃바운드/TM">아웃바운드/TM</label>
									      		<label for="GRO8" class="group_content_explain"><input type="checkbox" id="GRO8" name="group_GRO_result" value="고객센터/인바운드/CS">고객센터/인바운드/CS</label>
								      	</div>
								      	
								      	<div class="group IT">
									      		<label for="IT1" class="group_content_explain"><input type="checkbox" id="IT1" name="group_IT_result" value="QA/테스터/검증">QA/테스터/검증</label>
									      		<label for="IT2" class="group_content_explain"><input type="checkbox" id="IT2" name="group_IT_result" value="네트워크/서버/보안/DBA">네트워크/서버/보안/DBA</label>
									      		<label for="IT3" class="group_content_explain"><input type="checkbox" id="IT3" name="group_IT_result" value="서비스기획/PM">서비스기획/PM</label>
									      		<label for="IT4" class="group_content_explain"><input type="checkbox" id="IT4" name="group_IT_result" value="웹/앱프로그래머">웹/앱프로그래머</label>
									      		<label for="IT5" class="group_content_explain"><input type="checkbox" id="IT5" name="group_IT_result" value="응용프로그래머">응용프로그래머</label>
									      		<label for="IT6" class="group_content_explain"><input type="checkbox" id="IT6" name="group_IT_result" value="시스템프로그래머">시스템프로그래머</label>
									      		<label for="IT7" class="group_content_explain"><input type="checkbox" id="IT7" name="group_IT_result" value="SE/시스템분석/설계">SE/시스템분석/설계</label>
									      		<label for="IT8" class="group_content_explain"><input type="checkbox" id="IT8" name="group_IT_result" value="IT/컴퓨터 교육">IT/컴퓨터 교육</label>
								      	</div>
								      	
								      	<div class="group develop">
									      		<label for="develop1" class="group_content_explain"><input type="checkbox" id="develop1" name="group_develop_result" value="자동차/조선/기계">자동차/조선/기계</label>
									      		<label for="develop2" class="group_content_explain"><input type="checkbox" id="develop2" name="group_develop_result" value="반도체/디스플레이">반도체/디스플레이</label>
									      		<label for="develop3" class="group_content_explain"><input type="checkbox" id="develop3" name="group_develop_result" value="화학/에너지/환경">화학/에너지/환경</label>
									      		<label for="develop4" class="group_content_explain"><input type="checkbox" id="develop4" name="group_develop_result" value="전기/전자/제어">전기/전자/제어</label>
									      		<label for="develop5" class="group_content_explain"><input type="checkbox" id="develop5" name="group_develop_result" value="기계설계/CAD/CAM">기계설계/CAD/CAM</label>
									      		<label for="develop6" class="group_content_explain"><input type="checkbox" id="develop6" name="group_develop_result" value="통신기술/네트워크 구축">통신기술/네트워크 구축</label>
									      		<label for="develop7" class="group_content_explain"><input type="checkbox" id="develop7" name="group_develop_result" value="건설/설계/인테리어">건설/설계/인테리어</label>
									      		<label for="develop8" class="group_content_explain"><input type="checkbox" id="develop8" name="group_develop_result" value="인문/사회과학">인문/사회과학</label>
									      		<label for="develop9" class="group_content_explain"><input type="checkbox" id="develop9" name="group_develop_result" value="바이오/제약/식품">바이오/제약/식품</label>
								      	</div>
								      	
								      	<div class="group production">
									      		<label for="production1" class="group_content_explain"><input type="checkbox" id="production1" name="group_production_result" value="생산관리/공정관리/품질관리">생산관리/공정관리/품질관리</label>
									      		<label for="production2" class="group_content_explain"><input type="checkbox" id="production2" name="group_production_result" value="생산/제조/설비/조립">생산/제조/설비/조립</label>
									      		<label for="production3" class="group_content_explain"><input type="checkbox" id="production3" name="group_production_result" value="설치/정비/AS/시공/공무">설치/정비/AS/시공/공무</label>
								      	</div>
								      	
								      	<div class="group profession">
									      		<label for="profession1" class="group_content_explain"><input type="checkbox" id="profession1" name="group_profession_result" value="경영분석/컨설턴트">경영분석/컨설턴트</label>
									      		<label for="profession2" class="group_content_explain"><input type="checkbox" id="profession2" name="group_profession_result" value="리서치/통계/사서">리서치/통계/사서</label>
									      		<label for="profession3" class="group_content_explain"><input type="checkbox" id="profession3" name="group_profession_result" value="외국어/번역/통역">외국어/번역/통역</label>
									      		<label for="profession4" class="group_content_explain"><input type="checkbox" id="profession4" name="group_profession_result" value="법률/특허/상표">법률/특허/상표</label>
									      		<label for="profession5" class="group_content_explain"><input type="checkbox" id="profession5" name="group_profession_result" value="회계/세무">회계/세무</label>
									      		<label for="profession6" class="group_content_explain"><input type="checkbox" id="profession6" name="group_profession_result" value="보안/경비/경호">보안/경비/경호</label>
									      		<label for="profession7" class="group_content_explain"><input type="checkbox" id="profession7" name="group_profession_result" value="보건/의료">보건/의료</label>
									      		<label for="profession8" class="group_content_explain"><input type="checkbox" id="profession8" name="group_profession_result" value="중고등교사/학원강사">중고등교사/학원강사</label>
									      		<label for="profession9" class="group_content_explain"><input type="checkbox" id="profession9" name="group_profession_result" value="초등/유치원/보육교사">초등/유치원/보육교사</label>
									      		<label for="profession10" class="group_content_explain"><input type="checkbox" id="profession10" name="group_profession_result" value="외국어/자격증/기술강사">외국어/자격증/기술강사</label>
									      		<label for="profession11" class="group_content_explain"><input type="checkbox" id="profession11" name="group_profession_result" value="사회복지/요양보호/자원봉사">사회복지/요양보호/자원봉사</label>
									      		<label for="profession12" class="group_content_explain"><input type="checkbox" id="profession12" name="group_profession_result" value="교육개발/기획">교육개발/기획</label>
								      	</div>
								      	
								      	<div class="group design">
									      		<label for="design1" class="group_content_explain"><input type="checkbox" id="design1" name="group_design_result" value="그래픽디자인/CG">그래픽디자인/CG</label>
									      		<label for="design2" class="group_content_explain"><input type="checkbox" id="design2" name="group_design_result" value="출판/편집디자인">출판/편집디자인</label>
									      		<label for="design3" class="group_content_explain"><input type="checkbox" id="design3" name="group_design_result" value="제품/산업디자인">제품/산업디자인</label>
									      		<label for="design4" class="group_content_explain"><input type="checkbox" id="design4" name="group_design_result" value="캐릭터/애니메이션">캐릭터/애니메이션</label>
									      		<label for="design5" class="group_content_explain"><input type="checkbox" id="design5" name="group_design_result" value="광고/시각디자인">광고/시각디자인</label>
									      		<label for="design6" class="group_content_explain"><input type="checkbox" id="design6" name="group_design_result" value="건축/인테리어디자인">건축/인테리어디자인</label>
									      		<label for="design7" class="group_content_explain"><input type="checkbox" id="design7" name="group_design_result" value="의류/패션/잡화디자인">의류/패션/잡화디자인</label>
									      		<label for="design8" class="group_content_explain"><input type="checkbox" id="design8" name="group_design_result" value="웹/앱디자인">웹/앱디자인</label>
									      		<label for="design9" class="group_content_explain"><input type="checkbox" id="design9" name="group_design_result" value="문화컨텐츠/문화예술">문화컨텐츠/문화예술</label>
									      		<label for="design10" class="group_content_explain"><input type="checkbox" id="design10" name="group_design_result" value="디자인기타">디자인기타</label>
								      	</div>
								      	
								      	<div class="group media">
									      		<label for="media1" class="group_content_explain"><input type="checkbox" id="media1" name="group_media_result" value="연축/제작/PD">연축/제작/PD</label>
									      		<label for="media2" class="group_content_explain"><input type="checkbox" id="media2" name="group_media_result" value="아나운서/리포터/성우">아나운서/리포터/성우</label>
									      		<label for="media3" class="group_content_explain"><input type="checkbox" id="media3" name="group_media_result" value="영상/카메라/촬영">영상/카메라/촬영</label>
									      		<label for="media4" class="group_content_explain"><input type="checkbox" id="media4" name="group_media_result" value="기자">기자</label>
									      		<label for="media5" class="group_content_explain"><input type="checkbox" id="media5" name="group_media_result" value="음악/음향">음악/음향</label>
									      		<label for="media6" class="group_content_explain"><input type="checkbox" id="media6" name="group_media_result" value="광고제작/카피">광고제작/카피</label>
									      		<label for="media7" class="group_content_explain"><input type="checkbox" id="media7" name="group_media_result" value="무대/스탭/오퍼레이터">무대/스탭/오퍼레이터</label>
									      		<label for="media8" class="group_content_explain"><input type="checkbox" id="media8" name="group_media_result" value="연예/엔터테인먼트">연예/엔터테인먼트</label>
									      		<label for="media9" class="group_content_explain"><input type="checkbox" id="media9" name="group_media_result" value="인쇄/출판/편집">인쇄/출판/편집</label>
								      	</div>
								      	
								      	<div class="group service">
									      		<label for="serivce1" class="group_content_explain"><input type="checkbox" id="service1" name="group_service_result" value="승무원/숙박/여행">승무원/숙박/여행</label>
									      		<label for="service2" class="group_content_explain"><input type="checkbox" id="service2" name="group_service_result" value="음식서비스">음식서비스</label>
								      	</div>
								      	
								      	<div class="group build">
									      		<label for="build1" class="group_content_explain"><input type="checkbox" id="build1" name="group_build_result" value="현장/시공/감리/공무">현장/시공/감리/공무</label>
									      		<label for="build2" class="group_content_explain"><input type="checkbox" id="build2" name="group_build_result" value="안전/품잘/관리">안전/품잘/관리</label>
									      		<label for="build3" class="group_content_explain"><input type="checkbox" id="build3" name="group_build_result" value="토목/조경/도시">토목/조경/도시</label>
									      		<label for="build4" class="group_content_explain"><input type="checkbox" id="build4" name="group_build_result" value="건축/인테리어/설계">건축/인테리어/설계</label>
									      		<label for="build5" class="group_content_explain"><input type="checkbox" id="build5" name="group_build_result" value="환경/플랜트">환경/플랜트</label>
								      	</div>
								      </div>
								      <div id="group_result">
								      	선택한 직무
								      		<span class="list" style="display: block; text-align: left; font-size: 12px;"></span>
								      </div>
							      </div>
						      </div>
						    </div>
						
						  </div>
					</div>
					<!-- 학력 -->
					<div id="gradeDiv" class="join_row">
						<input type="text" id="get_grade" name ="get_grade" readonly="readonly" placeholder="최종학력(졸업예정포함)" value="">
						<select id="gradeselect">
							<option value="" selected="selected">학력선택</option>
							<option value="고등학교" >고등학교</option>
							<option value="대학(2,3년)">대학(2,3년)</option>
							<option value="대학교">대학교</option>
							<option value="대학원">대학원</option>
						</select>
					</div>
					<!-- 학교 오픈api -->
					<div id="schoolDiv" class="join_row">
						<input type="text" id="get_school" name="get_school" readonly="readonly" placeholder="학교명을 검색해주세요.">
						<div id="school_search_btn">검색</div>
						<div id="schoolModal" class="school_modal">
							<div class="school_modal_content">
									<h2 style="color:#6495ED; font-weight: bold; display: inline-block;">대학 검색 </h2>
									<span class="close2">&times;</span>
									<div id="schoolSearch">		
											<input type="text" id="schoolName" name="schoolName" style=" height: 35px; width: 155px; margin-right: 10px; font-size: 18px; border-radius: 5px;">
											<a href="#" id="schoolSearch_btn"><div style="border-radius: 5px; background-color: #6495ED; color: #fff; padding: 6px 15px 10px; display: inline-block;">검색</div></a> 
											<span style="font-size: 10px; display: block; margin-top: 5px;">학교의 이름만 검색해주세요. (한국대학교X 한국O)</span>
									</div>
									<div id="schoolResult" style=" margin-top: 10px; background-color: #fff; height: 220px; border-radius: 5px;">	
									</div>
							</div>
						</div>
					</div>
					<!-- 재학기간 -->
					<div id="attenDiv" class="join_row">
						<input type="hidden" id="atten_ey" name="atten_ey">
						<input type="hidden" id="atten_em" name="atten_em">
						<input type="hidden" id="atten_gy" name="atten_gy">
						<input type="hidden" id="atten_gm" name="atten_gm">
						<select id="ent_year" class="school_ year">
							<option value="입학년도" selected="selected">입학년도</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1976">1976</option>
							<option value="1975">1975</option>
							<option value="1974">1974</option>
							<option value="1973">1973</option>
							<option value="1972">1972</option>
							<option value="1971">1971</option>
							<option value="1970">1970</option>
							<option value="1969">1969</option>
							<option value="1968">1968</option>
							<option value="1967">1967</option>
							<option value="1966">1966</option>
							<option value="1965">1965</option>
							<option value="1964">1964</option>
							<option value="1963">1963</option>
							<option value="1962">1962</option>
							<option value="1961">1961</option>
							<option value="1960">1960</option>
							<option value="1959">1959</option>
							<option value="1958">1958</option>
							<option value="1957">1957</option>
							<option value="1956">1956</option>
							<option value="1955">1955</option>
							<option value="1954">1954</option>
							<option value="1953">1953</option>
							<option value="1952">1952</option>
							<option value="1951">1951</option>
							<option value="1950">1950</option>
						</select>
						<select id="ent_month" class="school_ mon">
							<option value="월" selected="selected">월</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
						~ 
						<select id="gradu_year" class="school_ year" >
							<option value="졸업년도" selected="selected">졸업년도</option>
							<option value="2028">2028</option>
							<option value="2027">2027</option>
							<option value="2026">2026</option>
							<option value="2025">2025</option>
							<option value="2024">2024</option>
							<option value="2023">2023</option>
							<option value="2022">2022</option>
							<option value="2021">2021</option>
							<option value="2020">2020</option>
							<option value="2019">2019</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1976">1976</option>
							<option value="1975">1975</option>
							<option value="1974">1974</option>
							<option value="1973">1973</option>
							<option value="1972">1972</option>
							<option value="1971">1971</option>
							<option value="1970">1970</option>
							<option value="1969">1969</option>
							<option value="1968">1968</option>
							<option value="1967">1967</option>
							<option value="1966">1966</option>
							<option value="1965">1965</option>
							<option value="1964">1964</option>
							<option value="1963">1963</option>
							<option value="1962">1962</option>
							<option value="1961">1961</option>
							<option value="1960">1960</option>
							<option value="1959">1959</option>
							<option value="1958">1958</option>
							<option value="1957">1957</option>
							<option value="1956">1956</option>
							<option value="1955">1955</option>
							<option value="1954">1954</option>
							<option value="1953">1953</option>
							<option value="1952">1952</option>
							<option value="1951">1951</option>
							<option value="1950">1950</option>
						</select>
						<select id="gradu_month" class="school_ mon" >
							<option value="월" selected="selected">월</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
					</div>
					<!-- 학과 오픈api -->
					<div id="majorlDiv" class="join_row">
						<input type="text" id="get_major" name="get_major" readonly="readonly" placeholder="학과명을 검색해주세요.">
						<div id="major_search_btn">검색</div>
					</div>
				</div>
				</div>
				
				<div id="btnDiv">
					 <div class="dis agree"><a href="index.unicol" class="disagree_a">메인화면으로 돌아가기</a></div> 
					 <div class="btn agree"><a href="#" class="agree_a">∨ 가입하기</a></div> 
					 <div class="plus agree"><a href="#" class="plusagree_a">∨ 추가 정보 입력하기</a></div> 
				</div>
			</form>
			</div>
		</div>
	</div>
<%@include file="../include/footer.jsp"%>
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
//Get the modal
var Dmodal = document.getElementById('dutyModal');
var Smodal = document.getElementById('schoolModal');


// Get the button that opens the modal
var Dbtn = document.getElementById("duty_select");
var Sbtn = document.getElementById("school_search_btn");

// Get the <span> element that closes the modal
var Dspan = document.getElementsByClassName("close1")[0];
var Sspan = document.getElementsByClassName("close2")[0];

// When the user clicks the button, open the modal 
Dbtn.onclick = function() {
    Dmodal.style.display = "block";
}
Sbtn.onclick = function() {
    Smodal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
Dspan.onclick = function() {
    Dmodal.style.display = "none";
}
Sspan.onclick = function() {
    Smodal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == Dmodal) {
        Dmodal.style.display = "none";
    }
    if (event.target == Smodal) {
        Smodal.style.display = "none";
    }
}
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>
</html>


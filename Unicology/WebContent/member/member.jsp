<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		margin: 0;
		padding: 0;
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
		height: 694px;
		margin: 0 auto;
	}
	#content {
		width: 460px;
		height: 100%;
		margin: 0 auto;
	}
	.row_group {
		zoom: 1;
		margin-bottom: 10px;
		border: solid 1px #dadada;
		background: #fff;
	}
	.join_row:first-child {
    border-top: none;
	}
	.join_row {
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	    padding: 9px;
	    background: #fff;
	    border-top: 1px solid #dadada;
    }
    input {
    	border: 0;
    }
	.member_bar {
		width: 440px;
		height: 20px;
		outline: none;
		background-color: inherit;
	}
	.emailmember_bar {
		width: 130px;
		height: 20px;
		background-color: inherit;
	}
	#emailselect {
		background-color: inherit;
	}
	#get_pw,#get_repw,#get_name {
		margin-right: 100px;
	}
	.essential{
		color: red;
		font-size: small;
		display: none;
	}
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
		height: 30px;
		margin: 0 5px 5px;
	}
	#birthmonth  {
		font-weight: bold;
		height: 30px;
		width: 50px;
		border: 1px solid #dadada;
		margin: 0 5px 5px;
	}
	.sexDiv1 {
		width: 200px;
		height: 31px;
		display: inline-block;
		position: relative;
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
	}
	#agree {
		margin: 100px auto;
		width: 460px;
		height: 60px;
		background-color: #6495ED;
		color: white;
		weight: bold;
		line-height: 60px;
		font-size: 25px;
		text-align: center;
		cursor: pointer;
	}
	#agree_a {
		display: inline-block;
		color: #fff;
		text-decoration: none;
	}
	/* footer */
	#footer * {
          font-size: 11px;
          line-height: normal;
          list-style: none;
          color: #333;
     }
     #footer > ul {
          margin: 0 auto 9px;
          text-align: center;
          padding-left: 0;
     }
     #footer > ul > li {
          display: inline;
          padding: 0 5px 0 7px;
          border-left: 1px solid #dadada;
     }
     #footer ul li:first-child {
          border-left: 0px!important;
     }
     #footer > ul > li a:hover {
          color: #6495ED;
          text-decoration: underline;
     }
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		
		
		$(document).on("click","#agree_a",function (){

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
		
		
		confirm("추가 입력하시겠습니까?(Y)"<br>"이대로 가입하기(N)");
		$("#frm_member").submit();

	});

	
		/* e mail 도메인 사이트 바뀌는 방법 */
	$(document).on("change","#emailselect",function () {
		var emailselect = $("#emailselect").val();
		var email_adress = $("#email_adress");
		if (emailselect =="직접입력") {
			email_adress.attr("readonly",false);
			email_adress.focus();
			email_adress.val("");
		}else {
			email_adress.val(emailselect);
			email_adress.attr("readonly",true);
			}
	});
		

		
});
		
	
	/* A-jax 활용법 */
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
				url: "memajax.sidedish",
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
	

</script>

</head>
<body>
	<div id="wrap">
         <div id="header_div">
         	<p>회원가입</p>
         </div>
		<div id="container">
			<div id="content">
				<form id="frm_member" name="frm_member" action="memberInsert.sidedish" method="POST">
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
						<input class="emailmember_bar" id="email_adress" name="email_adress" type="text" >
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
					 <div id="agree"><a href="#" id="agree_a">∨	가입하기</a></div> 
				</form>
				 <div id="footer">
			          <ul>
			              <li><a href="#">이용약관</a></li>
			              <li><strong><a href="#">개인정보처리방침</a></strong></li>
			              <li><a href="#">책임의 한계와 법적고지</a></li>
			              <li><a href="#">회원 정보 고객센터</a></li>
			          </ul>
	     		</div>
			</div>
		</div>
	</div>
</body>
</html>
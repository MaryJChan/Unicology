<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		margin: 0px;
		padding: 0px;
		font-family: 'Nanum Gothic', sans-serif;
	}
	a {
		text-decoration: none;
	}
	input, button, select, textarea{
		font-family: inherit;
		font-size: inherit;
		line-height: inherit;
	}
	#jasowrite_wrap{
		width: 700px;
		height: calc(100% - 20px);
		margin: 50px auto 100px auto;
		box-shadow: 0px 0px 5px #d8d8d8;
		position: relative;
	}
	#jasowrite_title_wrap{
		position:relative;
		width: 100%;
		height: 40px;
		background-color: #fff;
		border-bottom: dashed 1px #d8d8d8; 
	}
	#jasowrite_title_info{
		width: calc(100% - 300px - 20px - 65px);
		height: 20px;
		padding: 10px 20px;
		color: #999;
		float: left;
		
	}
	#jasowrite_title{
		font-weight: bold;
		font-size: 15px;
		padding-right: 5px;
		color: #6495ed;
		max-width: calc(100% - 95px);
	}
	#jasowrite_title_change{
		color: #999;
		margin: 1px 0 0 10px;
		display: inline-block;
		border: 1px solid #d8d8d8;
		border-radius: 2px;
		font-size: 12px;
		padding: 1px 3px;
	}
	#jasowrite_body_wrap{
		height: 100%;
		padding: 0 12px;
		background-color: #fff;
	}
	#jasowrite_question{
		overflow: hidden;
		resize: none;
		height: 38px;
		display: block;
		min-height: 60px;
		max-height: 118px;
		width: 100%;
		border: none;
		padding: 15px 5px 3px;
		outline: none;		
		font-size: 14px;
	}
	:placeholder-shown{
		color: #bbb;
	}
	#jasowrite_question_check{
		position: relative;
		height: 25px;
	}
	#jasowrite_answer_wrap{
		position: relative;
		border-top: 1px solid #d8d8d8;
		border-bottom: 1px solid #d8d8d8;
		overflow-y: auto;
		-webkit-box-flex: 1;
		flex: auto;
		height: 578px;
	}
	#jasowrite_answer{
		position: absolute;
		top: 0px;
		left: 0px;
		width: 666px;
		height: calc(100% - 40px);
		line-height: 21px;
		font-size: 14px;
		padding: 10px 5px;
		resize: none;
		border: none;
		outline: none;
	}	
	#jasowrite_answer_count_wrap{
		height: 50px;
	}
	#jasowrite_answer_count{
		float: left;
		width: 330px;
		font-size: 12px;
		color: #999;
		padding-top: 10px;
	}
	#jasowrite_answer_currentlycount, #jasowrite_answer_maxcount{
		font-size: 17px;
		color: #888;
		font-weight: bold;
	}
	#jasowrite_rimot_wrap {
		position: fixed;
		top: 200px;
		right: 200px;
		box-shadow: 0px 0px 5px #d8d8d8;
		padding-bottom: 10px;
	}
	#jasowrite_rimot_area {
		width: 100px;
	}
	#jasowrite_rimot_title {
		width: 100%;
		height: 40px;
		line-height: 40px;
		font-size: 15px;
		color: #6495ed;
		border-bottom: 1px solid #ccc;
		text-align: center;
	}
	.jasowirte_rimot_option {
		cursor: pointer;
		margin: 10px;
	}
	.jasowirte_rimot_option > img {
		width: 30px;
		height: 30px;
		padding: 10px;
		display: block;
		margin: 0 auto;
	}
	.jasowirte_rimot_option > div {
		font-size: 12px;
		text-align: center;
	}
	#select_jaso {
		position: absolute;
		left: -46px;
		top: 37px;
	}
	.select_jaso_num {
		display: inline-block;
		text-align: center;
		color: #6495ed;
		font-size: 14px;
		line-height: 30px;
		margin-top: 5px;
		box-shadow: 0px 0px 5px rgba(0,0,0,0.2);
		width: 38px;
		height: 30px;
		margin-left: 7px;
	}
	.select_jaso_pm {
		display: block;
		text-align: center;
		color: white;
		font-size: 14px;
		line-height: 30px;
		margin-top: 5px;
		box-shadow: 0px 0px 5px rgba(0,0,0,0.2);
		width: 38px;
		height: 30px;
		background-color: #999;
		margin-left: 7px;
	}
	
	/* 모달창 css */
	/* The jasowritemodal (background) */
	.jasowritemodal {
	    display: none; /* Hidden by default */
	    position: fixed; /* Stay in place */
	    z-index: 1; /* Sit on top */
	    padding-top: 250px; /* Location of the box */
	    left: 0;
	    top: 0;
	    width: 100%; /* Full width */
	    height: 100%; /* Full height */
	    overflow: auto; /* Enable scroll if needed */
	    background-color: rgb(0,0,0); /* Fallback color */
	    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	
	/* jasowritemodal Content */
	.jasowritemodal-content {
	    background-color: #fefefe;
		margin: auto;
		padding: 20px;
		border: 1px solid #888;
		width: 300px;
		height: 250px;
	}
	
	/* The Close Button */
	.close {
	    color: #aaaaaa;
	    float: right;
	    font-size: 28px;
	    font-weight: bold;
	}
	
	.close:hover,
	.close:focus {
	    color: #000;
	    text-decoration: none;
	    cursor: pointer;
	}
	
	
	
	
	.new_jasowrite {
		text-align: center;
		margin: 100px 0 70px;
		font-size: 18px;
		font-weight: bold;
	}
	.jasomodalYN {
		display: inline-block;
		width: 78px;
		height: 38px;
		line-height: 38px;
		text-align: center;
	}
	.modalY {
		border: 1px solid #6495ed;
		background-color: #6495ed;
		float: left;
		margin-left: 30px;
	}
	.jasomodalYN > a {
		display: inline-block;
		width: 78px;
		height: 38px;
	}
	.modalY >a {
		color: white;	
	}
	.modalN {
		border: 1px solid #ccc;
		float: right;
		margin-right: 30px;
	}
	
	.jaso_title_modalContent {
		box-shadow: 0 0 5px #d8d8d8;
	}
	.title-config {
		background-color: #fff;
		border: 2px solid #d8d8d8;
		border-radius: 4px;
		z-index: 100;
		padding: 10px 15px 15px;
	}
	.modal-dialog {
		position: absolute;
		top: 200px;
		left: calc(50% - (200px / 2));
		right: auto;
		bottom: auto;
		width: 240px;
		display: none;
	}
	.resume-title > p {
		margin: 0 0 10px 0;
		color: #6495ed;
		font-size: 15px;
		font-weight: bold;
	}
	.delete_jaso_num {
		display: inline-block;
		font-size: 10px;
		color: white;
		background-color: #999;
		border-radius: 100px;
		width: 14px;
		height: 14px;
		line-height: 14px;
		float: left;
		margin: 5px 0 0 5px;
		text-align: center;
		position: absolute;
		left: 2px;
		top: 2px;
		cursor: pointer;
		z-index: 100;
	}
	.hide {
		display: none;
	}
	.jaso_num_wrap {
		position: relative;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		// 리모컨 호버시 텍스트 색상 변경
		$(".jasowirte_rimot_option").hover(
			function () {
				$(this).children("div").css("color", "#6495ed");
			},
			function () { 
				$(this).children("div").css("color", "black");
			}		
		);
		var sessionUser = "${sessionScope.loginUser.mid}";
		// 세션 아이디값 인풋태그에 담기
		if(sessionUser==""){
			$("#jaso_writer").val(sessionUser);
		}
	
		// 자소서작성 페이지 접속시
		$(".jasowrite_title_write").val($("#jasowrite_title").text());
		$("#jaso_title").val($("#jasowrite_title").text());	
		$("a[data_num=1]").css("width", "50px").css("background-color", "#6495ed").css("color", "white").css("margin-left", "0");
	
		// 자소서 제목 모달창 인풋태그 작성시 제목란 text값 Update 코드
		$(".jasowrite_title_write").keyup(function(){
			var val = $(".jasowrite_title_write").val();
			$("#jasowrite_title").text(val);
		});
		
	});
	
	// 리모컨 클릭시 옵션별 모달창 css변경 코드
	$(document).on("click", ".jasowirte_rimot_option", function(){
		var rimot_option = $(this).children("div").text();
		var sessionUser = "${sessionScope.loginUser.mid}";
		
		if(sessionUser !="") {
			if(rimot_option == "새자소서"){
				$(".new_jasowrite").text("새 자소서 작성");
				$("#jasowritejasowritemodal").css("display", "block");
				
			} else if (rimot_option == "맞춤법 검사") {
				$(".new_jasowrite").text("맞춤법 검사");
				$("#jasowritejasowritemodal").css("display", "block");
			} else if (rimot_option == "저장하기") {
				$("#jaso_writer").val(sessionUser);
				$(".new_jasowrite").text("자소서 저장");
				$("#jasowritejasowritemodal").css("display", "block");
			} else if (rimot_option == "불러오기") {
				$("#myModal").css("display", "block");
			}
		} else {
			$("#myModal").css("display", "block");
		}
		
	});
	
	//리모컨 모달창 닫는 코드
	$(document).on("click", ".close", function(){
		$("#jasowritejasowritemodal").css("display", "none");
	});
	$(document).on("click", ".jasomodalN", function(){
		$("#jasowritejasowritemodal").css("display", "none");
	});
	
	
	$(document).on("click", ".jasomodalY", function(){
		var text = $(".new_jasowrite").text();
		var data_num = $("#jasowrite_question").attr("data_num");
		// 새자소서 작성 모달창 확인버튼 클릭시 value값들 초기화 코드
		if(text == "새 자소서 작성") {
			$("#jasowrite_title").text("새 자기소개서");
			/* $("#jasowrite_question").val("");
			$("#jasowrite_answer").val("");
			$(".jaso_question").val("");
			$(".jaso_answer").val("");
			$("#jasowritejasowritemodal").css("display", "none"); */
			location.href = "jasowrite.unicol";
		} 
		// 맞춤법검사 모달창 확인버튼 클릭시 코드
		else if (text == "맞춤법 검사") {
			alert("맞춤법 검사");
		} 
		// 저장하기 모달창 확인버튼 클릭시 코드
		else if (text == "자소서 저장") {
			var cnt = parseInt($(".select_jaso_num").length);
			var data_num = $("#jasowrite_question").attr("data_num");
			var jaso_title = $("#jasowrite_title").text();
			var jaso_question = $("#jasowrite_question").val();
			var jaso_answer = $("#jasowrite_answer").val();
			
			$("#jaso_title").val(jaso_title);
			$("#jaso_question" + data_num).val(jaso_question);
			$("#jaso_answer" + data_num).val(jaso_answer);
			$("#jaso_cnt").val(cnt);
			$("#jaso_form").submit();
		} 
	});
	
	// 자소서 작성 페이지 추가 제거 클릭시 코드
	$(document).on("click", ".select_jaso_pm", function (){
		var data_num = parseInt($(".select_jaso_num:last").text()) + 1;
		var sessionUser = "${sessionScope.loginUser.mid}";
		
		if(sessionUser !="") {
			// 자소서 작성 페이지 추가 클릭시 코드
			if($(this).text() == "+"){
				var display = $(".delete_jaso_num").attr("class");
				if (display == "delete_jaso_num") {
					$(".delete_jaso_num").attr("class", "hide delete_jaso_num");
				}
				$("#select_append").append("<div id='jaso_num_wrap" + data_num + "' class='jaso_num_wrap' data_num ='" + data_num + "'><a href='#' class='select_jaso_num'  id='select_jaso_num" + data_num + "' data_num='" + data_num + "'>" + data_num + "</a><span class='hide delete_jaso_num' id='delete_jaso_num" + data_num + "' data_num='" + data_num + "'>Ⅹ</span></div>");
				$("#jaso_form").append("<input type='hidden' name='jaso_index" + data_num + "' id='jaso_index" + data_num + "' data_num ='" + data_num + " class='jaso_index' value='" + data_num + "'>");
				$("#jaso_form").append("<input type='hidden' name='jaso_question" + data_num + "' id='jaso_question" + data_num + "' data_num ='" + data_num + " class='jaso_question''>");
				$("#jaso_form").append("<input type='hidden' name='jaso_answer" + data_num + "' id='jaso_answer" + data_num + "' data_num ='" + data_num + "class='jaso_answer''>");
			} 
			// 자소서 작성 페이지 제거 클릭시 코드
			else if ($(this).text() == "-") {
				var display = $(".delete_jaso_num").attr("class");
				if(display == "hide delete_jaso_num") {
					$(".hide").attr("class", "delete_jaso_num");
				} else if (display == "delete_jaso_num") {
					$(".delete_jaso_num").attr("class", "hide delete_jaso_num");
				}
			}
		} else {
			$("#myModal").css("display", "block");
		}
	})
	
	// 자소서 작성 페이지 클릭시 css 및 value값 저장, 뿌려주는 코드
	$(document).on("click", ".select_jaso_num", function(){
		$(".select_jaso_num").css("width", "38px").css("background-color", "white").css("color", "#6495ed").css("margin-left", "7px")
		$(this).css("width", "50px").css("background-color", "#6495ed").css("color", "white").css("margin-left", "0")
		var data_num = $("#jasowrite_question").attr("data_num");
		var data_num2 = $(this).attr("data_num");
		
		var jaso_question = $("#jasowrite_question[data_num=" + data_num + "]").val();
		var jaso_answer = $("#jasowrite_answer[data_num=" + data_num + "]").val();
		
		$("#jaso_question" + data_num).val(jaso_question);
		$("#jaso_answer" + data_num).val(jaso_answer);
		
		$("#jasowrite_question").attr("data_num", data_num2);
		$("#jasowrite_answer").attr("data_num", data_num2);
		
		var jaso_question2 = $("#jaso_question" + data_num2).val();
		var jaso_answer2 = $("#jaso_answer" + data_num2).val();
		
		$("#jasowrite_question[data_num=" + data_num2 + "]").val(jaso_question2);
		$("#jasowrite_answer[data_num=" + data_num2 + "]").val(jaso_answer2);
	});

	// 자소서 제목 클릭시 모달창 block 코드
	$(document).on("click", "#jasowrite_title_change", function(){
		$(".modal-dialog").css("display", "block");		
	});

	// 자소서 제목 모달창 외 부분 클릭시 모달창 none 코드
	$("body").click(function(e) { 
		if($(".modal-dialog").css("display") == "block") {
			if(!$(".modal-dialog").has(e.target).length) { 
				$(".modal-dialog").css("display", "none");	
			} 
		}
	});
	
	// 자소서 내용 글자수 카운트
	$(function() {
		$("#jasowrite_answer").keyup(function (e){
			var content = $(this).val();
				$(this).height(((content.split("\n").length + 1) * 1.5) + "em");
				$("#jasowrite_answer_currentlycount").html(content.length + " / 1000");
			});
		$("#jasowrite_answer").keyup();
	});
	
	// 자소서 번호 삭제
	$(document).on("click", ".delete_jaso_num", function(){
		var sessionUser = "${sessionScope.loginUser.mid}";
		var data_num = $(this).attr("data_num");
		if(sessionUser !="") {
			$(".new_jasowrite").text("자소서 제거");
			$("#jasowritejasowritemodal").css("display", "block");
			
			$(".jasomodalY").on("click", function(){
				var text = $(".new_jasowrite").text();
				// 자소서 제거
				if (text == "자소서 제거") {
					$("#jaso_index" + data_num).remove();
					$("#jaso_question" + data_num).remove();
					$("#jaso_answer" + data_num).remove();
					$("#jaso_num_wrap" + data_num).remove();
					$("#jasowritejasowritemodal").css("display", "none");
					$(".delete_jaso_num").attr("class", "hide delete_jaso_num");
					$("a[data_num=1]").css("width", "50px").css("background-color", "#6495ed").css("color", "white").css("margin-left", "0");
				}
			});
		}
	});
</script>
</head>
<body>
	<form action="jasowriteregister.unicol" method="get" id="jaso_form">
		<input type="hidden" name="jaso_cnt" id="jaso_cnt">
		<input type="hidden" name="jaso_title" id="jaso_title">
		<input type="hidden" name="jaso_writer" id="jaso_writer">
		<input type="hidden" name="jaso_index1" id="index1" data_num ="1" class="jaso_index" value="1">
		<input type="hidden" name="jaso_question1" id="jaso_question1" data_num ="1" class="jaso_question">
		<input type="hidden" name="jaso_answer1" id="jaso_answer1" data_num ="1" class="jaso_answer">
	</form>
	<div id="jasowrite_wrap">
		<div id="select_jaso">
			<div id="select_append">
				<div id="jaso_num_wrap1" class="jaso_num_wrap" data_num ="1">
					<a href="#" class="select_jaso_num"  id="select_jaso_num1" data_num="1">1</a>
					<span class="hide delete_jaso_num" id="delete_jaso_num1" data_num="1">Ⅹ</span>
				</div>
			</div>
			<a href="#" class="select_jaso_pm"  id="">+</a>
			<a href="#" class="select_jaso_pm"  id="">-</a>
		</div>
		<div id="jasowrite_title_wrap">
			<div id="jasowrite_title_info">
				<span id="jasowrite_title">새 자기소개서</span>
				<a href="#" id="jasowrite_title_change">변경</a>
			</div>
		</div>
		<div id="jasowrite_body_wrap">
			<textarea id="jasowrite_question" placeholder="질문을 입력하세요." data_num="1"></textarea>
			<div id="jasowrite_question_check"></div>
			<div id="jasowrite_answer_wrap">
				<textarea id="jasowrite_answer" placeholder="답변을 입력하세요." data_num="1"></textarea>
			</div>
			<div id="jasowrite_answer_count_wrap">
				<div id="jasowrite_answer_count">
					<span>
						<span id="jasowrite_answer_currentlycount"></span>
					</span>
					(
					<span id="" class="jasowrite_answer_font">현재 글자수, </span>
					<span id="" class="jasowrite_answer_font">최대 글자수</span>
					)
				</div>
			</div>
		</div>			
	</div>
	<div id="jasowrite_rimot_wrap">
		<div id="jasowrite_rimot_area">
			<div id="jasowrite_rimot_title">Unicology</div>
			<div class="jasowirte_rimot_option">
				<img alt="새자소서" src="image/jasowrite_img/newjaso.png">
				<div id="jasowrite_rimot_new" class="">새자소서</div>
			</div>
			<div class="jasowirte_rimot_option">
				<img alt="맞춤법 검사" src="image/jasowrite_img/jasocheck.png">
				<div id="jasowrite_rimot_chk">맞춤법 검사</div>
			</div>
			<div class="jasowirte_rimot_option">
				<img alt="저장하기" src="image/jasowrite_img/jasoregister.png">
				<div id="jasowrite_rimot_save">저장하기</div>
			</div>
			<div class="jasowirte_rimot_option">
				<img alt="" src="">
				<div id="jasowrite_rimot_load">불러오기</div>
			</div>
		</div>
	</div>			
	<!-- The jasowritemodal -->
	<div id="jasowritejasowritemodal" class="jasowritemodal">
		<!-- jasowritemodal content -->
		<div class="jasowritemodal-content">
			<span class="close">&times;</span>
			<div class="new_jasowrite"></div>
			<div>
				<span class="jasomodalYN modalY"><a href="#" class="jasomodalY">확인</a></span>
				<span class="jasomodalYN modalN"><a href="#" class="jasomodalN">취소</a></span>
			</div>
		</div>
	</div>
	<div class="modal-dialog" ng-class="size ? 'modal-' + size : ''">
		<div class="jaso_title_modalContent">
			<div class="title-config ng-scope">
				<div class="resume-title">
					<p>자기소개서 이름</p>
					<input type="text" ng-model="resume.title" class="jasowrite_title_write">
				</div>
			</div>
		</div>
	</div>
</body>
</html>
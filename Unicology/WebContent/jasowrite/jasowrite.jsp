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
		background-color: #black;
		position: fixed;
		bottom:  15%;
		right: 10%;
		cursor: move;
	}
	#jasowrite_rimot_area {
		width: 130px;
		height: 400px;
		box-shadow: 0px 0px 5px #d8d8d8;
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
	#jasowrite_rimot_new {
		width: 80%;
		height: 30px;
		text-align: center;
		line-height: 30px;
		margin: 10px auto;
		border: 1px solid #ccc;
	}
</style>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="jasowrite_wrap">
		<div id="jasowrite_title_wrap">
			<div id="jasowrite_title_info">
				<span id="jasowrite_title">자소서 제목</span>
				<a href="#" id="jasowrite_title_change">변경</a>
			</div>
		</div>
		<div id="jasowrite_body_wrap">
			<textarea id="jasowrite_question" placeholder="질문을 입력하세요."></textarea>
			<div id="jasowrite_question_check"></div>
			<div id="jasowrite_answer_wrap">
				<textarea id="jasowrite_answer" placeholder="답변을 입력하세요."></textarea>
			</div>
			<div id="jasowrite_answer_count_wrap">
				<div id="jasowrite_answer_count">
					<span>
						<span id="jasowrite_answer_currentlycount">25</span>
						/
						<span id="jasowrite_answer_maxcount">1000</span>
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
			<div id="jasowrite_rimot_new" class="">새자소서</div>
			<div id="jasowrite_rimot_chk">맞춤법 검사</div>
			<div id="jasowrite_rimot_save">저장하기</div>
			<div id="jasowrite_rimot_load">불러오기</div>
		</div>
	</div>			
	

</body>
</html>
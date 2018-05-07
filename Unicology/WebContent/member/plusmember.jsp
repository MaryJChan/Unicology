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
	ul,li {
		list-style: none;
	}
	#wrap {
		
	}
	a {
		text-decoration: none;
	}
	a:active,a:visited {
		color: inherit;
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
    }
    .addr_bar:first-child {
          width: 25%;
    }
    .addr_bar {
          border: 1px solid #ddd;
          width: 100%;
          border-bottom: 0px solid #fff;
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
	#man,#woman {
		margin-left: 20px;
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
		margin-left: 15px;
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
		width: 460px;
		margin: 0 auto;
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
	    width: 300px;
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
    	height: 30%;
    }
	.close {
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
	.close:hover,.close:focus {
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
	.search_btn {
		border: 1px solid #6495ED;
		color: #6495ED;
		cursor: pointer;
		display: inline-block;
		padding: 2px 5px;
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
</head>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function (){
		
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
	$(document).on("change","#gradeselect",function (){
		var gradeselect = $(this).val();
		var grade = $("#get_grade");
		
		var val = grade.val(gradeselect);
		alert(val);
		
	});
	//입학년도/졸업월/졸업년도/졸업월	
	$(document).on("change","#ent_year",function (){
		var eyselect = $(this).val();
		var atten_ey = $("#atten_ey");
		atten_ey.val(eyselect);
	});
	$(document).on("change","#ent_month",function (){
		var emselect = $(this).val();
		var atten_em = $("#atten_em");
		atten_em.val(emselect);
	});
	$(document).on("change","#gradu_year",function (){
		var gyselect = $(this).val();
		var atten_gy = $("#atten_gy");
		atten_gy.val(gyselect);
	});
	$(document).on("change","#gradu_month",function (){
		var gmselect = $(this).val();
		var atten_gm = $("#atten_gm");
		atten_gm.val(gmselect);
	});
	
	//var get_atten = atten_ey+atten_em+atten_gy+atten_gm;
		
	
	
	//가입하기
	$(document).on("click","#agree_a",function (){
		alert(get_atten);
		//$("#frm_member").submit();
	});
	
	//테스트중
	$(".group_list li").on("click", function(){
		$(".group_list li").removeClass('on');
		var test =$(this).attr("class","on");	
		if (test.text() == "경영/사무"){
			$("#group_title").text("경영/사무");
			$(".group_business").css("display","block");
			$(".group_marketing").css("display","none");
		}
		else if(test.text() == "마케팅/무역/유통") {
			$("#group_title").text("마케팅/무역/유통");
			$(".group_business").css("display","none");
			$(".group_marketing").css("display","block");
		}
		else if(test.text() == "영업/고객상담") {
			$("#group_title").text("영업/고객상담");
		}
		else if(test.text() == "IT/인터넷") {
			$("#group_title").text("IT/인터넷");
		}
		else if(test.text() == "연구개발/설계") {
			$("#group_title").text("연구개발/설계");
		}
		else if(test.text() == "생산/제조") {
			$("#group_title").text("생산/제조");
		}
		else if(test.text() == "전문/특수직") {
			$("#group_title").text("전문/특수직");
		}
		else if(test.text() == "디자인") {
			$("#group_title").text("디자인");
		}
		else if(test.text() == "미디어") {
			$("#group_title").text("미디어");
		}
		else if(test.text() == "서비스") {
			$("#group_title").text("서비스");
		}
		else if(test.text() == "건설") {
			$("#group_title").text("건설");
		}
		
	});	
	//테스트 2
	$("input[name=group_business_result]").on("click",function(){
		var test = $(this).text();
		alert(test);
	});



});	
</script>
<body>
	<div id="wrap">
         <div id="header_div">
              <p>회원가입</p>
         </div>
          
		<div id="container">
			<div id="content">
				<form id="frm_member" name="frm_member" action="plusmemberInsert.sidedish" method="POST">
				<div class="row_group">
					<!-- 주소 -->
					<div id="addrDiv" class="join_row">
                                        <input type="text" id="sample4_postcode" name="sample4_postcode" class="addr_bar" placeholder="우편번호">
                                        <input type="button" onclick="sample4_execDaumPostcode()" id="jusobutton"  value="우편번호 찾기"><br>
                                        <input type="text" id="sample4_roadAddress" name="sample4_roadAddress" class="addr_bar" placeholder="도로명주소"><br>
                                        <input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" class="addr_bar" placeholder="지번주소" style="border: 1px solid #ddd;">
                                        <span id="guide" style="color:#999"></span>
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
						<input type="text" id="get_duty" name="get_duty" value="" placeholder="관심직무">
						 <div id="duty_select">선택하기</div>
						 <!-- 직무 모달창 -->
						  <div id="dutyModal" class="duty_modal">
						    <div class="duty_modal_content">
						      <div id="dutygroup">
							      <ul class="group_list">
						      		<li class="on" id="group_business" >경영/사무</li>
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
								      <span class="close">&times;</span>
								      <div id="group_title">
								      		직무를 선택해주세요.
								      </div>
								      <div id="group_content">
								      	<div class="group_business">
									      	<form>
									      		<label for="1" class="group_content_explain"><input type="checkbox" id="1" name="group_business_result">기획/전략/경영</label>
									      		<label for="2" class="group_content_explain"><input type="checkbox" id="2" name="group_business_result">인사/노무/교육</label>
									      		<label for="3" class="group_content_explain"><input type="checkbox" id="3" name="group_business_result">재무/세무/IR</label>
									      		<label for="4" class="group_content_explain"><input type="checkbox" id="4" name="group_business_result">일반사무/총무/법무</label>
									      		<label for="5" class="group_content_explain"><input type="checkbox" id="5" name="group_business_result">경리/회계/결산</label>
									      		<label for="6" class="group_content_explain"><input type="checkbox" id="6" name="group_business_result">비서/사무보조</label>
									      	</form>
								      	</div>
								      	<div class="group_marketing">
									      	<form>
									      		<label for="1" class="group_content_explain"><input type="checkbox" id="1" name="group_marketing_result">마케팅/광고</label>
									      		<label for="2" class="group_content_explain"><input type="checkbox" id="2" name="group_marketing_result">유통/물류/재고</label>
									      		<label for="3" class="group_content_explain"><input type="checkbox" id="3" name="group_marketing_result">홍보/PR</label>
									      		<label for="4" class="group_content_explain"><input type="checkbox" id="4" name="group_marketing_result">무역/해외영업</label>
									      		<label for="5" class="group_content_explain"><input type="checkbox" id="5" name="group_marketing_result">구매/자재</label>
									      		<label for="6" class="group_content_explain"><input type="checkbox" id="6" name="group_marketing_result">운전/운송</label>
									      		<label for="7" class="group_content_explain"><input type="checkbox" id="7" name="group_marketing_result">상품기획/MD</label>
									      	</form>
								      	</div>
								      </div>
								      <div id="group_result">
								      	선택한 직무
								      </div>
							      </div>
						      </div>
						    </div>
						
						  </div>
					</div>
					<!-- 학력 -->
					<div id="gradeDiv" class="join_row">
						<input type="text" id="get_grade" name ="get_grade" readonly="readonly" placeholder="최종학력(졸업예정포함)">
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
						<a href="#"><div class="school search_btn">검색</div></a>
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
						<select id="gradu_year" class="school_ year">
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
						<select id="gradu_month" class="school_ mon">
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
						<a href="#"><div class="major search_btn">검색</div></a>
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
<%@include file="../include/footer.jsp"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
//Get the modal
var modal = document.getElementById('dutyModal');

// Get the button that opens the modal
var btn = document.getElementById("duty_select");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('sample4_roadAddress').value = fullRoadAddr;
            document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                //예상되는 도로명 주소에 조합형 주소를 추가한다.
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

            } else {
                document.getElementById('guide').innerHTML = '';
            }
        }
    }).open();
}
</script>
</html>

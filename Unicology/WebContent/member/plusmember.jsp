<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          width: 140px;
          margin: 62px auto;
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
	#duty_select {
		border: 1px solid #6495ED;
		color: #6495ED;
		cursor: pointer;
		display: inline-block;
		width: 75px;
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
		padding: 16px;
		background-color: #fefefe;
		width: 460px;
		margin: 0 auto;
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
	.group_list {
		float: left;
		width: 130px;
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
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
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
		
	// 남여 선택
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
	
	$(document).on("change","#gradeselect",function (){
		var gradeselect = $("#gradeselect").val();
		var grade = $("#get_grade");
		grade.val(gradeselect);
	});
</script>
<body>
	<div id="wrap">
         <div id="header_div">
              <a href="index.sidedish">
                   <img alt="유니콜로지 로고" src="image/logo_1020.png">
              </a>
         </div>
          
		<div id="container">
			<div id="content">
				<form id="frm_member" name="frm_member" action="memberInsert.sidedish" method="POST">
				<div class="row_group">
					<div id="addrDiv" class="join_row">
                                        <input type="text" id="sample4_postcode" name="sample4_postcode" class="addr_bar" placeholder="우편번호">
                                        <input type="button" onclick="sample4_execDaumPostcode()" id="jusobutton"  value="우편번호 찾기"><br>
                                        <input type="text" id="sample4_roadAddress" name="sample4_roadAddress" class="addr_bar" placeholder="도로명주소"><br>
                                        <input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" class="addr_bar" placeholder="지번주소" style="border: 1px solid #ddd;">
                                        <span id="guide" style="color:#999"></span>
                    </div>
				</div>
				<div class="row_group">
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
					<div id="dutyDiv" class="join_row">
						<input type="text" id="get_duty" name="get_duty" value="" placeholder="관심직무">
						 <div id="duty_select">선택하기</div>
						  <div id="dutyModal" class="duty_modal">
						    <div class="duty_modal_content">
						      <span class="close">&times;</span>
						      <div class="group_list">
						      	
						      </div>
						      <div class="group_items_area">
						      
						      </div>
						    </div>
						
						  </div>
					</div>
					<div id="gradeDiv" class="join_row">
						<input type="text" id="get_grade" name ="get_grade" readonly="readonly" placeholder="최종학력">
						<select id="gradeselect">
							<option value="" selected="selected">학력선택</option>
							<option value="고등학교" >고등학교</option>
							<option value="대학교">대학교</option>
							<option value="대학원(석사)">대학원(석사)</option>
							<option value="대학원(박사)">대학원(박사)</option>
						</select>
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
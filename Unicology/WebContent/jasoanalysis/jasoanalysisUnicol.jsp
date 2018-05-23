<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body, ul {
		margin: 0;
		padding: 0;
	}
	
	ul {
		list-style-type: none;
	}
	
	a:link, a:visited {
		text-decoration: none;
		color: inherit;
	}
	
	/* 전체 영역 */
	#jasoanalysis_wrap {
		width: auto;
		min-height: 100%;
		border-top: 1px solid #e7e7e8;
	}
	
	/* 컨텐츠 영역(높이 수정할것) */
	#jasoanalysis_inner {
		position: static;
		margin: 0 auto;
		background-color: #f8f8f8;
	}
	
	.viewPort {
		width: 219px;
		background-color: #3d3d3d;
		color: white;
		display: inline-block;
		position: absolute;
    	top: 100;
    	height: 850px;
    	padding-top: 25px;
	}
	
	.viewPort ul li {
	    padding: 22px 0 5px 30px;
	    width: 100%;
	    box-sizing: border-box;
	    color: #f7f7f7;
	    font-size: 15px;
	    font-weight: bold;
	    letter-spacing: -1px;
	    cursor: pointer;
		
	}
	
	.keypoint_wrap {
		width: 80%;
		height: 830px;
		padding-left: 230px;
	}
	
	.top10AndWordCloud {
		 padding: 35px 0 0 20px;
	}
   
	.top10 {
		display: inline-block; 
		box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.1);
		width: 580px;
		background-color: white;
		margin-right: 20px;
		height: 310px;
		
	}
	
	/* 핵심키워드 10개의 단어의 위치  */
	.managementOffice01 {
		position: absolute;
		top: 20px;
    	left: 203px;
	}
	
	.managementOffice02 {
		position: absolute;
		top: 20px;
		left: 365px;
	}
	
	.managementOffice03 {
		position: absolute;
		top: 64px;
		left: 203px;
	}
	
	.managementOffice04 {
		position: absolute;
		top: 64px;
		left: 365px;
	}
	
	.managementOffice05 {
		position: absolute;
		top: 108px;
		left: 203px;
	}
	
	.managementOffice06 {
		position: absolute;
		top: 108px;
		left: 365px;
	}
	
	.managementOffice07 {
		position: absolute;
		top: 152px;
		left: 203px;
	}
	
	.managementOffice08 {
		position: absolute;
		top: 152px;
		left: 365px;
	}
	
	.managementOffice09 {
		position: absolute;
		top: 196px;
		left: 203px;
	}
	
	.managementOffice10 {
		position: absolute;
		top: 196px;
		left: 365px;
	}
	
	.keypointWrap {
		width: 546px;
		margin: 0 auto;
		border-bottom: 1px solid #dfdfdf;
	}
	
	.keypointTitle {
		width: 546px;
    	padding: 10px 0 3px 9px;
	}
	
	.top2040_title_wrap {
		width: 1160px;
		margin: 0 auto;
		border-bottom: 1px solid #dfdfdf;
		
	}
	
	.top2040_title {
		width: 1160px;
    	padding: 10px 0 3px 9px;
	}
	
	.wordcloud {
		display: inline-block;
		box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.1);
		width: 580px;
		background-color: white;
		height: 310px;
	}
	
	.top2040Area {
		padding: 35px 0 0 20px;
	}
	
	.top2040 {
		box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.1);
		background-color: white;
		height: 400px;
		width: 1187px;
		
	}
	
	.top10_img {
		position: relative;
	}
	
	.top10_img > img {
		width: 550px;
		height: 250px;
	}
	
	.wordcloud_img > img {
		width: 550px;
		height: 250px;
	}
	
	.top2040_img > img {
		width: 1170px;
	}
	/* 김성민 추가 */
	#WC_btn:hover {
		color:  #6495ED;
	}
	.on {
		background-color: #fff;
		color: #3d3d3d!important;
	}
	.group {
		display: none;
	}
	.group.Management_Office {
		display: block;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		
		/* 좌측 직무 카테고리 클릭시 해당 시각화 구현 팝업 값 담기 */
		var duty = "MO.html";
		$(".viewPort li").on("click",function(){
			$(".viewPort li").removeClass('on');
			var AttrOn =  $(this).attr("class","on");
			
			
			if (AttrOn.text() == "경영·사무"){
				
				$(".group").not(".Management_Office").css("display","none");
				$(".group.Management_Office").css("display","block");
				duty = "MO.html";
			}
			else if(AttrOn.text() == "마케팅·광고·홍보") {
				
				$(".group").not(".Marketing_Advertising").css("display","none");
				$(".group.Marketing_Advertising").css("display","block");
				duty = "MA.html";
			}
			else if(AttrOn.text() == "IT·인터넷") {
				
				$(".group").not(".IT_Internet").css("display","none");
				$(".group.IT_Internet").css("display","block");
				duty = "IT.html";
			}
			else if(AttrOn.text() == "디자인") {
				
				$(".group").not(".Design").css("display","none");
				$(".group.Design").css("display","block");
				duty = "Design.html";
			}
			else if(AttrOn.text() == "무역·유통") {
				
				$(".group").not(".Trade_Distribution").css("display","none");
				$(".group.Trade_Distribution").css("display","block");
				duty = "TD.html";
			}
			else if(AttrOn.text() == "영업·고객상담") {
				
				$(".group").not(".Sales_Customer").css("display","none");
				$(".group.Sales_Customer").css("display","block");
				duty = "SC.html";
			}
			else if(AttrOn.text() == "서비스") {
				
				$(".group").not(".Service").css("display","none");
				$(".group.Service").css("display","block");
				duty = "Service.html";
			}
			else if(AttrOn.text() == "연구개발·설계") {
				
				$(".group").not(".Research_Development").css("display","none");
				$(".group.Research_Development").css("display","block");
				duty = "RD.html";
			}
			else if(AttrOn.text() == "생산·제조") {
				
				$(".group").not(".Production_Manufacturing").css("display","none");
				$(".group.Production_Manufacturing").css("display","block");
				duty = "PM.html";
			}
			else if(AttrOn.text() == "교육") {
				
				$(".group").not(".Education").css("display","none");
				$(".group.Education").css("display","block");
				duty = "Edu.html";
			}
			else if(AttrOn.text() == "건설") {
				
				$(".group").not(".Build").css("display","none");
				$(".group.Build").css("display","block");
				duty = "Build.html";
			}
			else if(AttrOn.text() == "의료") {
				
				$(".group").not(".Medical_Treatment").css("display","none");
				$(".group.Medical_Treatment").css("display","block");
				duty = "MT.html";
			}
			else if(AttrOn.text() == "미디어") {
				
				$(".group").not(".Media").css("display","none");
				$(".group.Media").css("display","block");
				duty = "Media.html";
			}
			else if(AttrOn.text() == "전문·특수직") {
				
				$(".group").not(".Proffesional").css("display","none");
				$(".group.Proffesional").css("display","block");
				duty = "Pro.html";
			}
		});
		
        
		/* 자세히 버튼 누를시 팝업과 함께 인터렉티브 가능한 워드클라우드 띄우기 */
		$("#WC_btn").on("click",function(){
			// 새창의 크기
            cw = 800;
            ch = 600;
            // 스크린의 크기
            sw = screen.availWidth;
            sh = screen.availHeight;
            // 팝업 창의 포지션(가운데 위치)
            px = (sw - cw) / 2;
            py = (sh - ch) / 2;
			
            // 직무를 쿼리스트링으로 동적으로 값을 변경
            // "MO.html"; <- ex)duty.val();
            
            var url = "mypage/view_html/"+duty;
            window.open(url, "_blank_1",
                  "toolbar=no,menubar=mo,status=no,scrollbars=no,resizable=no,left="
                        + px + ",top=" + py + ",width=" + cw
                        + ",height=" + ch)
		});
		
		
	});
</script>
</head>
<body>
	<div id="jasoanalysis_wrap">
		<div id="jasoanalysis_inner">
			<div class="viewPort">
				<ul>
					<%-- <c:forEach items="${dutyList}" var="dutyList">
					<li><a>${dutyList.clasificar}</a></li>
					</c:forEach> --%>
					<li><a href="#" id ="business">경영·사무</a></li>
					<li><a href="#">마케팅·광고·홍보</a></li>
					<li><a href="#">IT·인터넷</a></li>
					<li><a href="#">디자인</a></li>
					<li><a href="#">무역·유통</a></li>
					<li><a href="#">영업·고객상담</a></li>
					<li><a href="#">서비스</a></li>
					<li><a href="#">연구개발·설계</a></li>
					<li><a href="#">생산·제조</a></li>
					<li><a href="#">교육</a></li>
					<li><a href="#">건설</a></li>
					<li><a href="#">의료</a></li>
					<li><a href="#">미디어</a></li>
					<li><a href="#">전문·특수직</a></li>
				</ul>
			</div>
			
			<!-- 시각화 부분 -->
			<div class="keypoint_wrap managementOffice">
				<!-- 첫번째 줄 div : TOP10, 워드 클라우드  -->
				<div class="top10AndWordCloud">
					<div class="top10">
						<div class="keypointWrap top10_title_wrap">
							<h3 class="keypointTitle top10_title">KEYPOINT TOP10</h3>
							<div class="top10_img group Management_Office">
									<img src="image/keyword_img/Management_Office_top10.png">
									<a class="managementOffice01" href="#">대학교</a>
									<a class="managementOffice02" href="#">책임감</a>
									<a class="managementOffice03" href="#">대학</a>
									<a class="managementOffice04" href="#">고등학교</a>
									<a class="managementOffice05" href="#">고등학교</a>
									<a class="managementOffice06" href="#">고등학교</a>
									<a class="managementOffice07" href="#">고등학교</a>
									<a class="managementOffice08" href="#">고등학교</a>
									<a class="managementOffice09" href="#">고등학교</a>
									<a class="managementOffice10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Marketing_Advertising">
									<img src="image/keyword_img/Marketing_Advertising_top10.png">
									<a class="marketingAdvertising01" href="#">대학교</a>
									<a class="marketingAdvertising02" href="#">책임감</a>
									<a class="marketingAdvertising03" href="#">대학</a>
									<a class="marketingAdvertising04" href="#">고등학교</a>
									<a class="marketingAdvertising05" href="#">고등학교</a>
									<a class="marketingAdvertising06" href="#">고등학교</a>
									<a class="marketingAdvertising07" href="#">고등학교</a>
									<a class="marketingAdvertising08" href="#">고등학교</a>
									<a class="marketingAdvertising09" href="#">고등학교</a>
									<a class="marketingAdvertising10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group IT_Internet">
									<img src="image/keyword_img/IT_Internet_top10.png">
									<a class="ITInternet01" href="#">대학교</a>
									<a class="ITInternet02" href="#">책임감</a>
									<a class="ITInternet03" href="#">대학</a>
									<a class="ITInternet04" href="#">고등학교</a>
									<a class="ITInternet05" href="#">고등학교</a>
									<a class="ITInternet06" href="#">고등학교</a>
									<a class="ITInternet07" href="#">고등학교</a>
									<a class="ITInternet08" href="#">고등학교</a>
									<a class="ITInternet09" href="#">고등학교</a>
									<a class="ITInternet10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Design">
									<img src="image/keyword_img/Design_top10.png">
									<a class="design01" href="#">대학교</a>
									<a class="design02" href="#">책임감</a>
									<a class="design03" href="#">대학</a>
									<a class="design04" href="#">고등학교</a>
									<a class="design05" href="#">고등학교</a>
									<a class="design06" href="#">고등학교</a>
									<a class="design07" href="#">고등학교</a>
									<a class="design08" href="#">고등학교</a>
									<a class="design09" href="#">고등학교</a>
									<a class="design10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Trade_Distribution">
									<img src="image/keyword_img/Trade_Distribution_top10.png">
									<a class="trade_Distribution01" href="#">대학교</a>
									<a class="trade_Distribution02" href="#">책임감</a>
									<a class="trade_Distribution03" href="#">대학</a>
									<a class="trade_Distribution04" href="#">고등학교</a>
									<a class="trade_Distribution05" href="#">고등학교</a>
									<a class="trade_Distribution06" href="#">고등학교</a>
									<a class="trade_Distribution07" href="#">고등학교</a>
									<a class="trade_Distribution08" href="#">고등학교</a>
									<a class="trade_Distribution09" href="#">고등학교</a>
									<a class="trade_Distribution10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Sales_Customer">
									<img src="image/keyword_img/Sales_Customer_top10.png">
									<a class="sales_Customer01" href="#">대학교</a>
									<a class="sales_Customer02" href="#">책임감</a>
									<a class="sales_Customer03" href="#">대학</a>
									<a class="sales_Customer04" href="#">고등학교</a>
									<a class="sales_Customer05" href="#">고등학교</a>
									<a class="sales_Customer06" href="#">고등학교</a>
									<a class="sales_Customer07" href="#">고등학교</a>
									<a class="sales_Customer08" href="#">고등학교</a>
									<a class="sales_Customer09" href="#">고등학교</a>
									<a class="sales_Customer10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Service">
									<img src="image/keyword_img/Service_top10.png">
									<a class="service01" href="#">대학교</a>
									<a class="service02" href="#">책임감</a>
									<a class="service03" href="#">대학</a>
									<a class="service04" href="#">고등학교</a>
									<a class="service05" href="#">고등학교</a>
									<a class="service06" href="#">고등학교</a>
									<a class="service07" href="#">고등학교</a>
									<a class="service08" href="#">고등학교</a>
									<a class="service09" href="#">고등학교</a>
									<a class="service10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Research_Development">
									<img src="image/keyword_img/Research_Development_top10.png">
									<a class="researchDevelopment01" href="#">대학교</a>
									<a class="researchDevelopment02" href="#">책임감</a>
									<a class="researchDevelopment03" href="#">대학</a>
									<a class="researchDevelopment04" href="#">고등학교</a>
									<a class="researchDevelopment05" href="#">고등학교</a>
									<a class="researchDevelopment06" href="#">고등학교</a>
									<a class="researchDevelopment07" href="#">고등학교</a>
									<a class="researchDevelopment08" href="#">고등학교</a>
									<a class="researchDevelopment09" href="#">고등학교</a>
									<a class="researchDevelopment10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Production_Manufacturing">
									<img src="image/keyword_img/Production_Manufacturing_top10.png">
									<a class="productionManufacturing01" href="#">대학교</a>
									<a class="productionManufacturing02" href="#">책임감</a>
									<a class="productionManufacturing03" href="#">대학</a>
									<a class="productionManufacturing04" href="#">고등학교</a>
									<a class="productionManufacturing05" href="#">고등학교</a>
									<a class="productionManufacturing06" href="#">고등학교</a>
									<a class="productionManufacturing07" href="#">고등학교</a>
									<a class="productionManufacturing08" href="#">고등학교</a>
									<a class="productionManufacturing09" href="#">고등학교</a>
									<a class="productionManufacturing10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Education">
									<img src="image/keyword_img/Education_top10.png">
									<a class="education01" href="#">대학교</a>
									<a class="education02" href="#">책임감</a>
									<a class="education03" href="#">대학</a>
									<a class="education04" href="#">고등학교</a>
									<a class="education05" href="#">고등학교</a>
									<a class="education06" href="#">고등학교</a>
									<a class="education07" href="#">고등학교</a>
									<a class="education08" href="#">고등학교</a>
									<a class="education09" href="#">고등학교</a>
									<a class="education10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Build">
									<img src="image/keyword_img/Build_top10.png">
									<a class="build01" href="#">대학교</a>
									<a class="build02" href="#">책임감</a>
									<a class="build03" href="#">대학</a>
									<a class="build04" href="#">고등학교</a>
									<a class="build05" href="#">고등학교</a>
									<a class="build06" href="#">고등학교</a>
									<a class="build07" href="#">고등학교</a>
									<a class="build08" href="#">고등학교</a>
									<a class="build09" href="#">고등학교</a>
									<a class="build10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Medical_Treatment">
									<img src="image/keyword_img/Medical_Treatment_top10.png">
									<a class="medicalTreatment01" href="#">대학교</a>
									<a class="medicalTreatment02" href="#">책임감</a>
									<a class="medicalTreatment03" href="#">대학</a>
									<a class="medicalTreatment04" href="#">고등학교</a>
									<a class="medicalTreatment05" href="#">고등학교</a>
									<a class="medicalTreatment06" href="#">고등학교</a>
									<a class="medicalTreatment07" href="#">고등학교</a>
									<a class="medicalTreatment08" href="#">고등학교</a>
									<a class="medicalTreatment09" href="#">고등학교</a>
									<a class="medicalTreatment10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Media">
									<img src="image/keyword_img/Media_top10.png">
									<a class="media01" href="#">대학교</a>
									<a class="media02" href="#">책임감</a>
									<a class="media03" href="#">대학</a>
									<a class="media04" href="#">고등학교</a>
									<a class="media05" href="#">고등학교</a>
									<a class="media06" href="#">고등학교</a>
									<a class="media07" href="#">고등학교</a>
									<a class="media08" href="#">고등학교</a>
									<a class="media09" href="#">고등학교</a>
									<a class="media10" href="#">고등학교</a>
								
							</div>
							
							<div class="top10_img group Proffesional">
									<img src="image/keyword_img/Proffesional_top10.png">
									<a class="proffesional01" href="#">대학교</a>
									<a class="proffesional02" href="#">책임감</a>
									<a class="proffesional03" href="#">대학</a>
									<a class="proffesional04" href="#">고등학교</a>
									<a class="proffesional05" href="#">고등학교</a>
									<a class="proffesional06" href="#">고등학교</a>
									<a class="proffesional07" href="#">고등학교</a>
									<a class="proffesional08" href="#">고등학교</a>
									<a class="proffesional09" href="#">고등학교</a>
									<a class="proffesional10" href="#">고등학교</a>
								
							</div>
							
						</div>
					</div>
					<div class="wordcloud">
						<div class="keypointWrap wordcloud_title_wrap">
							<!-- 김성민 수정  -->
							<h3 class="keypointTitle wordcloud_title" style="display: inline-block; width: 250px;">WORD CLOUD</h3>
								<a id="WC_btn" href="#" style="display: inline-block; float: right; height: 0;"><h5>자세히 >>  </h5></a>
								
								<div class="wordcloud_img group Management_Office">
								<img alt="" src="image/view_img/MO.png">
								</div>
							
								<div class="wordcloud_img group Marketing_Advertising">
									<img alt="" src="image/view_img/MA.png">
								</div>
								
								<div class="wordcloud_img group IT_Internet">
									<img alt="" src="image/view_img/IT.png">
								</div>
								
								<div class="wordcloud_img group Design">
									<img alt="" src="image/view_img/Design.png">
								</div>
								
								<div class="wordcloud_img group Trade_Distribution">
									<img alt="" src="image/view_img/TD.png">
								</div>
								
								<div class="wordcloud_img group Sales_Customer">
									<img alt="" src="image/view_img/SC.png">
								</div>
								
								<div class="wordcloud_img group Service">
									<img alt="" src="image/view_img/Service.png">
								</div>
								
								<div class="wordcloud_img group Research_Development">
									<img alt="" src="image/view_img/RD.png">
								</div>
								
								<div class="wordcloud_img group Production_Manufacturing">
									<img alt="" src="image/view_img/PM.png">
								</div>
								
								<div class="wordcloud_img group Education">
									<img alt="" src="image/view_img/Edu.png">
								</div>
								
								<div class="wordcloud_img group Build">
									<img alt="" src="image/view_img/Build.png">
								</div>
								
								<div class="wordcloud_img group Medical_Treatment">
									<img alt="" src="image/view_img/MT.png">
								</div>
								
								<div class="wordcloud_img group Media">
									<img alt="" src="image/view_img/Media.png">
								</div>
								
								<div class="wordcloud_img group Proffesional">
									<img alt="" src="image/view_img/Pro.png">
								</div>
						</div>
					</div>
				</div> 
				
				<!-- 상위 TOP20-TOP40  -->
				<div class="top2040Area">
					<div class="top2040">
						<div class="top2040_title_wrap">
							<h3 class="top2040_title">TOP10-30</h3>
							<!-- 이미지 추가시 될 작업 -->
							<div class="top2040_img group Management_Office">
								<img alt="" src="image/keyword_img/managementOffice_top2040.png">
							</div>
							
							<div class="top2040_img group Marketing_Advertising">
								<img alt="" src="image/keyword_img/Marketing_Advertising.png">
							</div>
							
							<div class="top2040_img group IT_Internet">
								<img alt="" src="image/keyword_img/IT_Internet.png">
							</div>
							
							<div class="top2040_img group Design">
								<img alt="" src="image/keyword_img/Design.png">
							</div>
							
							<div class="top2040_img group Trade_Distribution">
								<img alt="" src="image/keyword_img/Trade_Distribution.png">
							</div>
							
							<div class="top2040_img group Sales_Customer">
								<img alt="" src="image/keyword_img/Sales_Customer.png">
							</div>
							
							<div class="top2040_img group Service">
								<img alt="" src="image/keyword_img/Service.png">
							</div>
							
							<div class="top2040_img group Research_Development">
								<img alt="" src="image/keyword_img/Research_Development.png">
							</div>
							
							<div class="top2040_img group Production_Manufacturing">
								<img alt="" src="image/keyword_img/Production_Manufacturing.png">
							</div>
							
							<div class="top2040_img group Education">
								<img alt="" src="image/keyword_img/Education.png">
							</div>
							
							<div class="top2040_img group Build">
								<img alt="" src="image/keyword_img/Build.png">
							</div>
							
							<div class="top2040_img group Medical_Treatment">
								<img alt="" src="image/keyword_img/Medical_Treatment.png">
							</div>
							
							<div class="top2040_img group Media">
								<img alt="" src="image/keyword_img/Media.png">
							</div>
							
							<div class="top2040_img group Proffesional">
								<img alt="" src="image/keyword_img/Proffesional.png">
							</div>
							
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>	
</body>
<%@include file="../include/footer.jsp"%>
</html>
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

</style>
</head>
<body>
	<div id="jasoanalysis_wrap">
		<div id="jasoanalysis_inner">
			<div class="viewPort">
				<ul>
					<%-- <c:forEach items="${dutyList}" var="dutyList">
					<li><a>${dutyList.clasificar}</a></li>
					</c:forEach> --%>
					<li><a href="#">경영·사무</a></li>
					<li><a href="#">영업·고객상담</a></li>
					<li><a href="#">IT·인터넷</a></li>
					<li><a href="#">디자인</a></li>
					<li><a href="#">서비스</a></li>
					<li><a href="#">전문직</a></li>
					<li><a href="#">홍보·PR·사보</a></li>
					<li><a href="#">경리·출납·결산</a></li>
					<li><a href="#">생산·제조</a></li>
					<li><a href="#">건설</a></li>
					<li><a href="#">유통·무역</a></li>
					<li><a href="#">미디어</a></li>
					<li><a href="#">교육</a></li>
					<li><a href="#">특수계층·공공</a></li>
				</ul>
			</div>
			
			<!-- 시각화 부분 -->
			<div class="keypoint_wrap managementOffice">
				<!-- 첫번째 줄 div : TOP10, 워드 클라우드  -->
				<div class="top10AndWordCloud">
					<div class="top10">
						<div class="keypointWrap top10_title_wrap">
							<h3 class="keypointTitle top10_title">KEYPOINT TOP10</h3>
							<div class="top10_img">
								<img alt="" src="image/index_Img/main_keyword11.png">
							</div>
						</div>
					</div>
					<div class="wordcloud">
						<div class="keypointWrap wordcloud_title_wrap">
							<h3 class="keypointTitle wordcloud_title">WORDCLOUD</h3>
							<div class="wordcloud_img">
								<img alt="" src="image/index_Img/main_keyword11.png">
							</div>
						</div>
					</div>
				</div> 
				
				<!-- 상위 TOP20-TOP40  -->
				<div class="top2040Area">
					<div class="top2040">
						<div class="top2040_title_wrap">
							<h3 class="top2040_title">TOP20-40</h3>
							<div class="top2040_img">
								<img alt="" src="image/jasoanalys_img/managementOffice_top2040.png">
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
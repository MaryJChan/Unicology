<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl태그 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
    
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {
		margin: 0;
		padding: 0;
		font-size: 12px;
	}
	a {
		font-size: 12px;
		color: black;
		text-decoration: none;
	}
	#empInfo_Wrap {
		width: 100%;
		height: 100%;
		margin: 50px auto 100px auto;
	}
	#empInfo_Area{
		width: 960px;
		height: 100%;
		margin: 0 auto;
	}
	#empInfo_Count {
		padding:10px;
		height: 30px;
		line-height: 30px;
	}
	#empInfo_Contents_Wrap {
		box-shadow: 0px 0px 5px #d8d8d8;
	}
	#empInfo_Title_Fix {
		background-color: #f8f8f8;
	}
	.empInfo_Title_View {
		display:inline-block; 
		height: 30px;
		color: #888;
		letter-spacing: -1px;
		line-height: 30px;
		text-align: center;
		vertical-align: middle;
	}
	#empInfo_infoN {
		width: 45px;
	}
	#empInfo_comN {
		width: 170px;
	}
	#empInfo_title {
		width: 403px;
	}
	#empInfo_career {
		width: 95px;
	}
	#empInfo_employmentType {
		width: 125px;
	}
	#empInfo_deadlines {
		width: 95px;
	}
	.empInfo_Content_Fix {
		height: 60px;
		border-top: 1px solid #ccc;
	}
	.empInfo_Content_View {
		display: inline-block;
		vertical-align: top;
		padding: 10px;
	}
	.empInfo_Content_infoN {
		padding: 0;
		width: 45px;
		height: 60px;
		line-height: 60px;
		text-align: center;
	}
	.empInfo_Content_comN {
		width: 150px;
		height: 40px;
		line-height: 40px;
		text-align: center;
	}
	.empInfo_Content_Title_Wrap {
		position: relative;
		display: inline-block;
		width: 383px;
		height: 40px;
		padding: 10px;
	}
	.empInfo_Content_title {
		height: 35px;
		line-height: 43px;
		position: absolute;
		top: 0px;
		left: 10px;
		padding: 0;
	}
	.empInfo_Content_subclass {
		position: absolute;
		font-size: 11px;
		bottom: 10px;
		left: 10px;
		padding: 0;
	}
	.empInfo_Content_Career_Wrap {
		position: relative;
		display: inline-block;
		width: 75px;
		height: 40px;
		padding: 10px;
		vertical-align: top;
	}
	.empInfo_Content_career {
		width: 75px;
		height: 35px;
		line-height: 43px;
		position: absolute;
		top: 0px;
		left: 10px;
		padding: 0;
		text-align: center;
	}
	.empInfo_Content_education {
		width: 75px;
		position: absolute;
		bottom: 10px;
		left: 10px;
		padding: 0;
		text-align: center;
	}
	.empInfo_Content_employmentType_Wrap {
		position: relative;
		display: inline-block;
		width: 105px;
		height: 40px;
		padding: 10px;
		vertical-align: top;
	}
	.empInfo_Content_employmentType {
		width: 105px;
		height: 35px;
		line-height: 43px;
		position: absolute;
		top: 0px;
		left: 10px;
		padding: 0;
		text-align: center;
	}
	.empInfo_Content_work_place {
		width: 115px;
		position: absolute;
		bottom: 10px;
		left: 10px;
		padding: 0;
		text-align: center;
	}
	.empInfo_Content_deadlines {
		width: 95px;
		height: 40px;
		padding: 10px 0;
		line-height: 40px;
		text-align: center;
	}
	.pagination {
		margin-top: 10px;
	    text-align: center;
	    height: 32px;
	}
	.pagination a {
		display: inline-block;
	    color: black;
	    padding: 8px 16px;
	    text-decoration: none;
	}
</style>
<script type="text/javascript">
</script>
</head>
<body>
	<div id="empInfo_Wrap">
		<div id="empInfo_Area">
			<div id="empInfo_Count">
				전체 공고수 : ${empPageMaker.totalCount}			
			</div>
			<div id="empInfo_Contents_Wrap">
				<div id="empInfo_Title_Fix">
					<span id="empInfo_infoN" class="empInfo_Title_View">번호</span>
					<span id="empInfo_comN" class="empInfo_Title_View">기업명</span>
					<span id="empInfo_title" class="empInfo_Title_View">제목</span>
					<span id="empInfo_career" class="empInfo_Title_View">지원자격</span>
					<span id="empInfo_employmentType" class="empInfo_Title_View">근무조건</span>
					<span id="empInfo_deadlines" class="empInfo_Title_View">마감일</span>
				</div>
				<c:forEach items="${empInfoList}" var="list">
					<div class="empInfo_Content_Fix">
						<span class="empInfo_Content_View empInfo_Content_infoN">${list.eno}</span>
						<span class="empInfo_Content_View empInfo_Content_comN">
							<a href="#">${list.companyName}</a></span>
						<div class="empInfo_Content_Title_Wrap">
							<span class="empInfo_Content_View empInfo_Content_title">
								<a href="${list.href}">${list.title}</a></span>
							<span class="empInfo_Content_View empInfo_Content_subclass">${list.subclass}</span>
						</div>
						<div class="empInfo_Content_Career_Wrap">
							<span class="empInfo_Content_View empInfo_Content_career">${list.career}</span>
							<span class="empInfo_Content_View empInfo_Content_education">${list.education}</span>
						</div>
						<div class="empInfo_Content_employmentType_Wrap">
							<span class="empInfo_Content_View empInfo_Content_employmentType">${list.employmentType}</span>
							<span class="empInfo_Content_View empInfo_Content_work_place">${list.work_place}</span>
						</div>
						<span class="empInfo_Content_View empInfo_Content_deadlines">${list.deadlines}</span>
					</div>
				</c:forEach>
			</div>
			<div class="pagination">
				<c:if test="${empPageMaker.prev}">
					<a href="#">&laquo;</a><a href="employmentnoticeview.unicol?page=${empPageMaker.startPage-1}">&laquo;</a>
				</c:if>
			 	<!-- ${pageMaker.startPage}값부터 ${pageMaker.endPage}값까지 반복-->
				<c:forEach begin="${empPageMaker.startPage}" end="${empPageMaker.endPage}" var="idx">
					<%-- <c:out value="${pageMaker.criDto.page == idx? 'class=active' : ' '}"/> --%><!-- li태그 필요 -->
					<c:if test="${flag == 0}">
						<a href="employmentnoticeview.unicol?page=${idx}"<c:out value="${empPageMaker.criDto.page == idx? 'class=active' : ' '}"/>>${idx}</a>
					</c:if>
					<c:if test="${flag == 1}">
						<a href="boardoption.bizpoll?page=${idx}&search_select=${empPageMaker.criDto.searchOption}&SearchWd=${empPageMaker.criDto.keyword}&category_value=${empPageMaker.criDto.category}&board_lineup_value=${empPageMaker.criDto.lineup}"<c:out value="${empPageMaker.criDto.page == idx? 'class=active' : ' '}"/>>${idx}</a>
					</c:if>	
				</c:forEach>
				<c:if test="${empPageMaker.next}">
					<a href="employmentnoticeview.unicol?page=${empPageMaker.endPage+1}">&raquo;</a>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>
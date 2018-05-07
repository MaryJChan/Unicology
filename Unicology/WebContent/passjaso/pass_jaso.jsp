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
	#passJaso_Wrap {
		width: 100%;
		height: 100%;
		margin: 50px auto 100px auto;
	}
	#passJaso_Area{
		width: 960px;
		height: 100%;
		margin: 0 auto;
	}
	#passJaso_Count {
		padding:10px;
		height: 30px;
		line-height: 30px;
	}
	#passJaso_Contents_Wrap {
		box-shadow: 0px 0px 5px #d8d8d8;
	}
	#passJaso_Title_Fix {
		background-color: #f8f8f8;
	}
	.passJaso_Title_View {
		display:inline-block; 
		height: 30px;
		color: #888;
		letter-spacing: -1px;
		line-height: 30px;
		text-align: center;
		vertical-align: middle;
	}
	#passJaso_infoN {
		width: 45px;
	}
	#passJaso_comN {
		width: 170px;
	}
	#passJaso_title {
		width: 403px;
	}
	#passJaso_career {
		width: 95px;
	}
	#passJaso_employmentType {
		width: 125px;
	}
	#passJaso_deadlines {
		width: 95px;
	}
	.passJaso_Content_Fix {
		height: 60px;
		border-top: 1px solid #ccc;
	}
	.passJaso_Content_View {
		display: inline-block;
		vertical-align: top;
		padding: 10px;
	}
	.passJaso_Content_infoN {
		padding: 0;
		width: 45px;
		height: 60px;
		line-height: 60px;
		text-align: center;
	}
	.passJaso_Content_comN {
		width: 150px;
		height: 40px;
		line-height: 40px;
		text-align: center;
	}
	.passJaso_Content_Title_Wrap {
		position: relative;
		display: inline-block;
		width: 383px;
		height: 40px;
		padding: 10px;
	}
	.passJaso_Content_title {
		height: 35px;
		line-height: 43px;
		position: absolute;
		top: 0px;
		left: 10px;
		padding: 0;
	}
	.passJaso_Content_subclass {
		position: absolute;
		font-size: 11px;
		bottom: 10px;
		left: 10px;
		padding: 0;
	}
	.passJaso_Content_Career_Wrap {
		position: relative;
		display: inline-block;
		width: 75px;
		height: 40px;
		padding: 10px;
		vertical-align: top;
	}
	.passJaso_Content_career {
		width: 75px;
		height: 35px;
		line-height: 43px;
		position: absolute;
		top: 0px;
		left: 10px;
		padding: 0;
		text-align: center;
	}
	.passJaso_Content_education {
		width: 75px;
		position: absolute;
		bottom: 10px;
		left: 10px;
		padding: 0;
		text-align: center;
	}
	.passJaso_Content_employmentType_Wrap {
		position: relative;
		display: inline-block;
		width: 105px;
		height: 40px;
		padding: 10px;
		vertical-align: top;
	}
	.passJaso_Content_employmentType {
		width: 105px;
		height: 35px;
		line-height: 43px;
		position: absolute;
		top: 0px;
		left: 10px;
		padding: 0;
		text-align: center;
	}
	.passJaso_Content_work_place {
		width: 115px;
		position: absolute;
		bottom: 10px;
		left: 10px;
		padding: 0;
		text-align: center;
	}
	.passJaso_Content_deadlines {
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
	<div id="passJaso_Wrap">
		<div id="passJaso_Area">
			<div id="passJaso_Count">
				전체 공고수 : ${passJasoPageMaker.totalCount}			
			</div>
			<div id="passJaso_Contents_Wrap">
				<div id="passJaso_Title_Fix">
					<span id="passJaso_infoN" class="passJaso_Title_View">번호</span>
					<span id="passJaso_comN" class="passJaso_Title_View">기업명</span>
					<span id="passJaso_title" class="passJaso_Title_View">제목</span>
					<span id="passJaso_career" class="passJaso_Title_View">지원자격</span>
					<span id="passJaso_employmentType" class="passJaso_Title_View">근무조건</span>
					<span id="passJaso_deadlines" class="passJaso_Title_View">마감일</span>
				</div>
				<c:forEach items="${passJasoList}" var="list">
					<div class="passJaso_Content_Fix">
						<span class="passJaso_Content_View passJaso_Content_infoN">${list.eno}</span>
						<span class="passJaso_Content_View passJaso_Content_comN">
							<a href="#">${list.companyName}</a></span>
						<div class="passJaso_Content_Title_Wrap">
							<span class="passJaso_Content_View passJaso_Content_title">
								<a href="${list.href}">${list.title}</a></span>
							<span class="passJaso_Content_View passJaso_Content_subclass">${list.subclass}</span>
						</div>
						<div class="passJaso_Content_Career_Wrap">
							<span class="passJaso_Content_View passJaso_Content_career">${list.career}</span>
							<span class="passJaso_Content_View passJaso_Content_education">${list.education}</span>
						</div>
						<div class="passJaso_Content_employmentType_Wrap">
							<span class="passJaso_Content_View passJaso_Content_employmentType">${list.employmentType}</span>
							<span class="passJaso_Content_View passJaso_Content_work_place">${list.work_place}</span>
						</div>
						<span class="passJaso_Content_View passJaso_Content_deadlines">${list.deadlines}</span>
					</div>
				</c:forEach>
			</div>
			<div class="pagination">
				<c:if test="${passJasoPageMaker.prev}">
					<a href="#">&laquo;</a><a href="passjaso.unicol?page=${passJasoPageMaker.startPage-1}">&laquo;</a>
				</c:if>
			 	<!-- ${pageMaker.startPage}값부터 ${pageMaker.endPage}값까지 반복-->
				<c:forEach begin="${passJasoPageMaker.startPage}" end="${passJasoPageMaker.endPage}" var="idx">
					<%-- <c:out value="${pageMaker.criDto.page == idx? 'class=active' : ' '}"/> --%><!-- li태그 필요 -->
					<c:if test="${flag == 0}">
						<a href="passjaso.unicol?page=${idx}"<c:out value="${passJasoPageMaker.criDto.page == idx? 'class=active' : ' '}"/>>${idx}</a>
					</c:if>
					<c:if test="${flag == 1}">
						<a href="passjaso.bizpoll?page=${idx}&search_select=${passJasoPageMaker.criDto.searchOption}&SearchWd=${passJasoPageMaker.criDto.keyword}&category_value=${passJasoPageMaker.criDto.category}&board_lineup_value=${passJasoPageMaker.criDto.lineup}"<c:out value="${passJasoPageMaker.criDto.page == idx? 'class=active' : ' '}"/>>${idx}</a>
					</c:if>	
				</c:forEach>
				<c:if test="${passJasoPageMaker.next}">
					<a href="passjaso.unicol?page=${passJasoPageMaker.endPage+1}">&raquo;</a>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>
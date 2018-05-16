<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.univ_name {
		font-size: 13px; 
		display: block;
	}
	.univ_name:hover {
		color: #6495ED;
	}
</style>
</head>
<body>
	<div>
	<c:forEach items="${list}" var="ulist">
		<a class="univ_name" id="univ_name" href="#" data_num = "${ulist.schoolName}">${ulist.schoolName}</a>
	</c:forEach>
	</div>
</body>
</html>
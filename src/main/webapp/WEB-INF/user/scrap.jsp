<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/home/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scrap</title>
<!--  scrap 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/user/scrap.css' />" type="text/css">
</head>
<body>

<div class="scrap-div">
 <h3 style="margin-top: 100px; margin-bottom: 20px;">스크랩한 정책 </h3>

<c:choose>
		<c:when test="${empty scrapDateList}">
		<br><br>
		<div id="wrapper">
		<img src="https://ifh.cc/g/eOQkpg.png" class="img-responsive"
				alt="scrapimg" style="width:100px; height:100px;">
			<h2>스크랩을 추가해보세요</h2>
			<h4>스크랩항목이 없습니다</h4>
		</div>
	</c:when>
	</c:choose>
	
		<c:choose>
		<c:when test="${not empty scrapDateList}">  
		<jsp:include page="/WEB-INF/user/calendar.jsp" />
	<table>
      <thead>
      	<tr>
      	<td><b>정책유형</b></td>
      	<td><b>정책명</b></td>
		</tr>
      </thead>
      <tbody>  
		<c:forEach var="scrap" items="${scrapDateList}">
			<tr>
			<td style="width: 15%;">
				${scrap.category} 
			</td>
			  <td><a style="text-decoration: none;" href="<c:url value='/policy/view'>
						      <c:param name='policyId' value='${scrap.policyId}'/>
						   </c:url>">
				  ${scrap.name} </a>
			  </td>
				
			</tr>
		</c:forEach>
	  </tbody>
	</table>	
	
	</c:when>
	</c:choose>	
	 
</div>

	<br><br>
	<div>
		<button onclick="location.href='/policy/search' ">+ Add</button>
		<!-- <button onclick="location.href='/test2/policy/search' ">+ Add</button> -->
	</div>
</body>
</html>
 <%@ include file="/WEB-INF/home/footer.jsp" %>
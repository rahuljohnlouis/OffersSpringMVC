<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main.css" /> 
	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Authorized Users Only</h3>

<body>

	<table class="formattable">
	<tr><td>Name</td><td>Email</td><td>Offer</td><td>Enabled</td></tr>
	<c:forEach var="user" items="${users}">
	<tr>	
		<td><c:out value="${user.username }"></c:out></td>
		<td><c:out value="${user.email }"></c:out></td>
		<td><c:out value="${user.authority }"></c:out></td>
		<td><c:out value="${user.enabled }"></c:out></td>
	</tr>
	</c:forEach>
	</table>
</body>
</body>
</html>
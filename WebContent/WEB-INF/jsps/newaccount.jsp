<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New Account</title>
</head>
<body>

	<sf:form action="${pageContext.request.contextPath}/createaccount"
		method="post" commandName="user">
		<table class="formattable">

			<tr>
				<td class="label">Username:</td>
				<td><sf:input class="control" path="username" name="username"
						type="text" /><br />
					<div class="error">
						<sf:errors path="username"></sf:errors>
					</div></td>

			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input class="control" path="email" name="email"
						type="text" /><br />
					<div class="error">
						<sf:errors path="email"></sf:errors>
					</div></td>
			</tr>
			<tr>
				<td class="label">Password:</td>
				<td><sf:input class="control" path="password" name="password"
						type="text" /><br />
					<div class="error">
						<sf:errors path="password"></sf:errors>
					</div></td>
			</tr>
			<tr>
				<td class="label">Confirm Password:</td>
				<td><input class="control" name="confirmpass" type="text" /><br />
				</td>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control" value="Create advert" type="submit" /></td>
			</tr>
		</table>
	</sf:form>
</body>
</html>
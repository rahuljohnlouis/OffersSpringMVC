<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<sf:form action="${pageContext.request.contextPath}/docreate"
	method="post" commandName="offer">
	<table class="formattable">

		<tr>
			<td class="label">Name:</td>
			<td><sf:input class="control" path="name" name="name"
					type="text" /><br /> <sf:errors path="name" cssClass="error"></sf:errors></td>

		</tr>
		<tr>
			<td class="label">Email:</td>
			<td><sf:input class="control" path="email" name="email"
					type="text" /><br /> <sf:errors path="email" cssClass="error"></sf:errors></td>
		</tr>
		<tr>
			<td class="label">Offer:</td>
			<td><sf:textarea class="control" path="text" name="text"
					rows="10" cols="10"></sf:textarea><br /> <sf:errors path="text"
					cssClass="error"></sf:errors></td>
		</tr>
		<tr>
			<td class="label"></td>
			<td><input class="control" value="Create advert" type="submit" /></td>
		</tr>
	</table>
</sf:form>
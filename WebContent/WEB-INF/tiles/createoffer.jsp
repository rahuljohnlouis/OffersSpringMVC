<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<sf:form action="${pageContext.request.contextPath}/docreate"
	method="post" commandName="offer">
	<sf:input type="hidden" name="id" path="id" />
	<table class="formattable">

		<tr>
			<td class="label">Offer:</td>
			<td><sf:textarea class="control" path="text" name="text"
					rows="10" cols="10"></sf:textarea><br /> <sf:errors path="text"
					cssClass="error"></sf:errors></td>
		</tr>
		<tr>
			<td class="label"></td>
			<td><input class="control" value="Save advert" type="submit" /></td>
		</tr>
		
		<c:if test="${offer.id != 0}">
		<tr><td class="label"></td><td>&nbsp;</td></tr>
		<tr><td class="label"></td>  <td><input class="control" name="delete" value="Delete this offer" type="submit" /></td> </tr>
		</c:if>
	</table>
</sf:form>
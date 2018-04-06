<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<body>
	<table class=table>
		<tr>
			<th>Address</th>
			<th>City</th>
			<th>State</th>
			<th>Price</th>
		</tr>
		<c:forEach var="property" items="${properties}">
			<tr>
				<td><c:out value="${property.address}" /></td>
				<td><c:out value="${property.city}" /></td>
				<td><c:out value="${property.state}" /></td>
				<td><c:out value="${property.price}" /></td>
			</tr>
		</c:forEach>
	</table>
	<c:url var="addLinkUrl" value="/Property/add" />
	<a href="${addLinkUrl}">ADD</a>

</body>
</html>
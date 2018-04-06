<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Fruit Store!</title>
</head>
<body>
	<h1>
		Here are the
		<c:out value="${products.size()}" />
		Fruits we sell!
	</h1>
	
	<c:if test = "${not empty message }">
	<div style="background-color:yellow;"><c:out value = "${message}" /></div>
	</c:if>
	<Table>
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>BUY!</th>
		</tr>
		<c:forEach var="fruit" items="${products}">
			<tr>
				<td><c:out value="${fruit.name}" /></td>
				<td><c:out value="${fruit.description}" /></td>
				<td><c:out value="${fruit.price}" /></td>
				<td><c:url var="buyURL" value="/addToCart" />
					<form action="${buyURL}" method="POST">
						<!--  This hidden field should be a primary key -->
						<input type="hidden" name="nameOfFruit" value="${fruit.name}">
						<input type="submit" value="buy this ${fruit.name}">
					</form></td>
			</tr>

		</c:forEach>
	</Table>

	<h2>Your cart's contents</h2>
	<table>
		<tr>
			<th>Name</th>
			<th>Quantity</th>
			<th>Price</th>
		</tr>
		<c:forEach var="entry" items="${shoppingCart }">
			<tr>
				<td><c:out value="${entry.key.name}" /></td>
				<td><c:out value="${entry.value}" /></td>
				<td><c:out value="${entry.key.price * entry.value}" /> </td>
			</tr>
		</c:forEach>





	</table>







</body>
</html>
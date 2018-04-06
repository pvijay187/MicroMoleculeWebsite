<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="pageTitle" value="Product List View" />
<%@ include file="common/header.jspf"%>

<h2>Toy Department</h2>
<table>
	<c:forEach var="product" items="${productList}">
		<tr class="productList">
			<td><img src="img/${product.imageName}" /></td>
			<td>
				<ul>

					<li><c:out value="${product.name}" /> <c:out
							value="${product.topSeller ? 'Best Seller!': ''}" /></li>
					<li><c:out value="by ${product.manufacturer}" /></li>
					<li><c:out value="$ ${product.price}" /></li>
					<li><c:out value="${product.weightInLbs} lbs" /></li>
					<li class="star"><fmt:formatNumber
							value="${product.averageRating}" maxFractionDigits="0" var="star" />
						<c:url value="/img/${star}-star.png" var="averageRating" /> <img
						class="image_rating" src="${averageRating}"></li>
				</ul>
		</tr>
	</c:forEach>




</table>

<%@ include file="common/footer.jspf"%>


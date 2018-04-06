<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<c:import url="/WEB-INF/jsp/common/header.jsp" />
<header>
		<c:url value="/" var="homePageHref" />
</header>
<table>
	<c:forEach var="park" items="${allParks}">
		<tr>

		
			<td><c:url var="parkDetails" value="/parkDetails">
					<c:param name="parkCode" value="${(park.parkCode)}" />
				</c:url> <c:url value="/img/parks/${fn:toLowerCase(park.parkCode)}.jpg" var="picture" /><a
				href="${parkDetails}"><img class="image_style" src="${picture}"
					width=200px></a></td>
			<td>
				<ul>
					<li><c:out value="${park.parkName}" /></li>
					<li><c:out value="${park.state}" /></li>
					<li><c:out value="${park.inspQuote}" /></li>
					<li><c:out value="${park.parkDescription}" /></li>
					
				</ul>
			</td>
		</tr>
	</c:forEach>
</table>
<c:import url="/WEB-INF/jsp/common/footer.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:import url="/WEB-INF/jsp/common/header.jsp" />

<c:url value="/surveyList" var="formAction" />

<form method="GET" action="${formAction}">

<c:forEach var="surveyResults" items="${surveyResults}">
	<c:out value="${surveyResults.parkName}" />
	<c:out value="${surveyResults.counter}" />
</c:forEach>


</form>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body style = "background-color: BlanchedAlmond">
	<header>
		<c:url value="/aminoAcidHome" var="aminoAcidHome" />
		<c:url value="/img/headerpic.jpg" var="headerPic" />
		<a href="${homePageHref}"> <img src="${headerPic}"
			alt="Amino Acid Logo" />
		</a>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<body>
		<h1>Amino Acids</h1>
		<nav>
			<p>Amino acids are the building blocks of life itself! Please
				select a category of amino acids to learn about!</p>
		</nav>
		</header>
		


<p class = "hp">Amino acids are organic nutrients that appear in foods and in the
	human body either as building blocks of proteins or as free amino
	acids. Amino acids are made of the amino group (NH2), carboxyl group
	(COOH) and a side chain containing carbon, hydrogen or oxygen</p>
	<c:url value="/img/aaStructure.jpg" var="aaStructure" />
	<img
		style="display: block; margin-left: auto; margin-right: auto; width: 40%;"
		src="${aaStructure}" alt="Amino Acid Structure" />







	<c:import url="/WEB-INF/jsp/common/footer.jsp" />

</body>
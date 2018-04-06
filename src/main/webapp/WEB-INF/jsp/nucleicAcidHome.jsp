<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body style="background-color: BlanchedAlmond">
	<header>
		<c:url value="/nucleicAcidHome" var="nucleicAcidHome" />

		<c:import url="/WEB-INF/jsp/common/nucleicHeader.jsp" />

		<body>
			<h1>Nucleic Acids</h1>
			<nav>
				<p>Nucleic Acids are the building blocks of DNA and RNA. Please
					select a button to learn more about Nucleic Acids</p>
			</nav>
	</header>



	<p class="hp">Nucleic acids are the main information-carrying
		molecules of the cell, and, by directing the process of protein
		synthesis, they determine the inherited characteristics of every
		living thing. The two main classes of nucleic acids are
		deoxyribonucleic acid (DNA) and ribonucleic acid (RNA).</p>
	<c:url value="/img/naStructure.jpg" var="naStructure" />

	<img
		style="display: block; margin-left: auto; margin-right: auto; width: 40%;"
		src="${naStructure}" alt="Nucleic Acid Structure" />





</body>
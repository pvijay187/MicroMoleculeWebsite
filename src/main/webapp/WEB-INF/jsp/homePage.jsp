<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="/" var="homePage" />
<c:url value="/css/aminoacids.css" var="cssHref" />
<link rel="stylesheet" href="${cssHref}">


<body class="mmHome">
	<h1 class="microMolecules">Micro-Molecules!</h1>
	<nav>
		<p class="phome">Welcome to the Wonderful World of MicroMolecules!</p>
		<p class = "phome">Please select what category of molecules you would like to
			learn about!</p>
	</nav>


	<div class="wrapper">

		<div class="firstItem">
			<c:url var="nucleicAcidHome" value="/nucleicAcidHome"></c:url>
			<c:url value="/img/dna3D.jpg" var="picture" />
			<a href="${nucleicAcidHome}"><img class="image_styles"
				src="${picture}">
				<div class="overlay">
					<div class="text">Nucleic Acids</div>
				</div>
		</div>
		</a>


		<div class="secondItem">
			<c:url var="aminoAcidHome" value="/aminoAcidHome"></c:url>
			<c:url value="/img/protein3D.png" var="picture" />
			<a href="${aminoAcidHome}"><img class="image_styles"
				src="${picture}">
				<div class="overlay">
					<div class="text">Amino Acids</div>
				</div>
		</div>
		</a>
	</div>
</body>
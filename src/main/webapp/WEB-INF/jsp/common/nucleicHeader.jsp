<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="/css/aminoacids.css" var="cssHref" />
<link rel="stylesheet" href="${cssHref}">


<div class="buttons">
	<ul class="header">


		<c:url value="/" var="homePage" />
		<li class="header"><button class="home">
				<a class="home" href="${homePage}">Home</a>
			</button></li>

		<c:url value="/aminoAcidHome" var="aminoAcidHome" />
		<li class="header"><button class="head">
				<a class="home" href="${aminoAcidHome}">Amino Acid Page</a>
			</button></li>

		<c:url value="/nucleicAcidHome" var="nucleicAcidHome" />
		<li class="header"><button class="head">
				<a class="home" href="${nucleicAcidHome}">Nucleic Home Acid Page</a>
			</button></li>


		<c:url value="/nucleotides" var="nucleotides" />
		<li class="header"><button class="aaa">
				<a href="${nucleotides}"><Strong>Nucleotides</Strong></a>
			</button></li>
			
		<c:url value="/dnaRna" var="dnaRna" />
		<li class="header"><button class="paa">
				<a href="${dnaRna}"><Strong>DNA vs RNA</Strong></a>
			</button></li>

	</ul>
</div>
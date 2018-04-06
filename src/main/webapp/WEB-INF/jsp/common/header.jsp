<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head class="header">
<meta charset="UTF-8">
<title>All About Amino Acids!</title>
<c:url value="/css/aminoacids.css" var="cssHref" />
<link rel="stylesheet" href="${cssHref}">
</head>


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

		<c:url value="/allAminoAcids" var="allAminoAcids" />
		<li class="header"><button class="aaa">
				<a href="${allAminoAcids}"><Strong>All Amino Acids</Strong></a>
			</button></li>

		<c:url value="/polarAminoAcids" var="polarAminoAcids" />
		<li class="header"><button class="paa">
				<a href="${polarAminoAcids}"><Strong>Polar Amino Acids</Strong></a>
			</button></li>

		<c:url value="/nonPolarAminoAcids" var="nonPolarAminoAcids" />
		<li class="header"><button class="naa">
				<a href="${nonPolarAminoAcids}"><Strong>Nonpolar Amino
						Acids</Strong></a>
			</button></li>

		<c:url value="/acidicAminoAcids" var="acidicAminoAcids" />
		<li class="header"><button class="acaa">
				<a href="${acidicAminoAcids}"><Strong>Acidic Amino
						Acids</Strong></a>
			</button></li>

		<c:url value="/basicAminoAcids" var="basicAminoAcids" />
		<li class="header"><button class="baa">
				<a href="${basicAminoAcids}"><Strong>Basic Amino Acids</Strong></a>
			</button></li>
	</ul>
</div>
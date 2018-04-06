<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<body class = "acidic">

<c:import url="/WEB-INF/jsp/common/header.jsp" />


<c:set var="pageTitle" value="Polar Amino Acids" />

<h2>Acidic Amino Acids</h2>
<p>Two amino acids have acidic side chains at neutral pH. These are aspartic acid or aspartate (Asp) and glutamic acid or glutamate (Glu). Their side chains have carboxylic acid groups whose pKa's are low enough to lose protons, becoming negatively charged in the process.</p>
<p><strong>Please click on an Amino Acid to learn more about it! </strong> </p>
<table class = "aaList">
	<c:forEach var="aminoAcid" items="${acidicAminoAcids}">
		<tr class = "aaList">
			<td><c:url var = "aminoAcidDetails" value = "/aminoAcidDetails" >
				<c:param name = "threeLetterAbv"
				value = "${aminoAcid.threeLetterAbv }" />
				</c:url> <c:url value="/img/${aminoAcid.imageName}" var="picture" /><a
				href="${aminoAcidDetails }"><img class="image_style"
					src="${picture}" width=200px></a></td>
			<td class = "aaList">
				<ul class = "aaList">
					<li style = "font-size: 4em;"><strong><c:out value="${aminoAcid.name}" /></strong></li>
					<li style = "font-size: 1em; margin-top: 5px">Three Letter Abbreviation: <strong><c:out value= "${aminoAcid.threeLetterAbv}" /></strong></li>
					<li style = "font-size: 1em;">One Letter Abbreviation:<strong><c:out value="${aminoAcid.oneLetterAbv}" /></strong></li>
					<li style = "font-size: 1em;">Category:<Strong><c:out value="${aminoAcid.category}" /></Strong></li>
				
				</ul>
			</td>
		</tr>
	</c:forEach>
</table>


<c:import url="/WEB-INF/jsp/common/footer.jsp" />

</body>
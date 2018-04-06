<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<body class = "all">

<c:import url="/WEB-INF/jsp/common/header.jsp" />


<c:set var="pageTitle" value="Polar Amino Acids" />

<h2>All Amino Acids</h2>

<p>Amino acids are the monomers that make up proteins. Specifically, a protein is made up of one or more linear chains of amino acids, each of which is called a polypeptide</p>

<p> Amino acids share a basic structure, which consists of a central carbon atom, also known as the alpha carbon, bonded to an amino group (NH2),  a carboxyl group (COOH), and a hydrogen atom. Every amino acid also has another atom or group of atoms bonded to the central atom, known as the R group, which determines the identity of the amino acid. For instance, if the R group is a hydrogen atom, then the amino acid is glycine, while if it is a methyl (CH3) group, the amino acid is alanine </p>

<p>The properties of the side chain determine an amino acid's chemical behavior (that is, whether it is considered acidic, basic, polar, or nonpolar). For example, amino acids such as valine and leucine are nonpolar and hydrophobic, while amino acids like serine and glutamine have hydrophilic side chains and are polar. Some amino acids, such as lysine and arginine, have side chains that are positively charged at physiological pH and are considered basic amino acids. (Histidine is sometimes put in this group too, although it is mostly deprotonated at physiological pH.) Aspartate and glutamate, on the other hand, are negatively charged at physiological pH and are considered acidic.</p>

<p><strong>Please click on an Amino Acid to learn more about it! </strong> </p>
<table class = "aaList">
	<c:forEach var="aminoAcid" items="${allAminoAcids}">
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
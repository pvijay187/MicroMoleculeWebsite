<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="basic">

	<c:import url="/WEB-INF/jsp/common/nucleicHeader.jsp" />

	<c:set var="pageTitle" value="Nucleotides" />

	<h2>Nucleotides</h2>
	<p>Nucleotides are organic molecules that serve as the monomer
		units for forming the nucleic acid polymers deoxyribonucleic acid
		(DNA) and ribonucleic acid (RNA), both of which are essential
		biomolecules in all life-forms on Earth. Nucleotides are the building
		blocks of nucleic acids; they are composed of three subunit molecules:
		a nitrogenous base, a five-carbon sugar (ribose or deoxyribose), and
		at least one phosphate group. They are also known as phosphate
		nucleotides..</p>

	<table class="aaList">
		<c:forEach var="nucleicAcid" items="${nucleotides}">
			<tr class="aaList">
				<td><c:url value="/img/${nucleicAcid.imageName}" var="picture" /><img
					class="image_style" src="${picture}" width=200px></td>
				<td class="aaList">
					<ul class="aaList">
						<li style="font-size: 4em;"><strong><c:out
									value="${nucleicAcid.name}" /></strong></li>
						<li style="font-size: 1em;">Category:<Strong><c:out
									value="${nucleicAcid.category}" /></Strong></li>
						<li style="font-size: 1em;">Present in DNA or RNA:<Strong><c:out
									value="${nucleicAcid.sugar}" /></Strong></li>
						<li style="font-size: 1em;">Present in DNA or RNA:<Strong><c:out
									value="${nucleicAcid.description}" /></Strong></li>

					</ul>
				</td>
			</tr>
		</c:forEach>
	</table>


	<c:import url="/WEB-INF/jsp/common/footer.jsp" />

</body>
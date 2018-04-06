<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body class = "details">

<c:import url="/WEB-INF/jsp/common/header.jsp" />



<div class="detail_box">
	<div class="detail_container">
		<div class="detail_row">
			<div class="new">
				<c:url value="/img/${aminoAcid.imageName}" var="picture" /><a
				href="${aminoAcidDetails}"><img class="image_style" src="${picture}"
					width=200px></a></td>
			</div>
			<ul class = "details"> 
				<li class = "name">
						<strong>
							<c:out value="${aminoAcid.name}" />
						</strong></li>
				<li class="bar"></li><strong>Three Letter Abbreviation</strong><font size="3px"> <c:out
							value="${aminoAcid.threeLetterAbv}" />
				</font>
				<li class="bar"></li>
				<strong>One Letter Abreviation:  </strong><font size="3px"> <c:out value="${aminoAcid.oneLetterAbv}" />
				</font></strong>

				<li class="bar"></li> <strong>Category: </strong>
				<font size="3px"> <c:out value="${aminoAcid.category}" />

				</font>
				<li class="bar"></li><strong>Type of side chain: </strong>
				<font size="3px"> <c:out value="${aminoAcid.rGroup}" />
				</font>
				
				<li class="bar"></li>
				 <strong>Isoelectric Point: </strong><font size="3px"> <c:out
						value="${aminoAcid.isoelectricPoint}" />
				</font>

				<li class="bar"></li><strong>Description: </strong>
				<font size="3px"> <c:out value="${aminoAcid.description}" />
				</font>







				</li>
			</ul>
		</div>
	</div>
</div>



























</body>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />


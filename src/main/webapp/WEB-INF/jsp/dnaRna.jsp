<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<body class="polar">

	<c:import url="/WEB-INF/jsp/common/nucleicHeader.jsp" />

	<c:url value="/img/dnaVsRna.jpg" var="dnaVsRna" />
	<img
		style="display: block; margin-left: auto; margin-right: auto; width: 40%;"
		src="${dnaVsRna}" alt="dnaVsRna" />

	<p>Deoxyribonucleic acid and Ribonucleic acid are the two main
		nucleic acids in biology. They are structurally very similar, but
		differ from each other in three major areas.</p>

	<h1>1. Helix vs Double Helix</h1>
	<p class="hp">The main difference between the three-dimensional
		structures of DNA and RNA is that in RNA the three-dimensional
		structure is single-stranded. The base- pairing that occurs in RNA is
		all through regions of self-complementarity. This three-dimensional
		arrangement is called the tertiary structure of RNA and it can be very
		complex. Unlike DNA, RNA cannot adopt the B-form helix because the
		additional 2' hydroxyl interferes with the arrangement of the sugars
		in the phosphate backbone.</p>




	<h1>2. Ribose vs Deoxyribose</h1>
	<p class="hp">The sugars found in nucleic acids are pentose sugars;
		a pentose sugar has five carbon atoms. A combination of a base and a
		sugar is called a nucleoside. Ribose, found in RNA, is a "normal"
		sugar, with one oxygen atom attached to each carbon atom. Deoxyribose,
		found in DNA, is a modified sugar, lacking one oxygen atom (hence the
		name "deoxy"). This difference of one oxygen atom is important for the
		enzymes that recognize DNA and RNA, because it allows these two
		molecules to be easily distinguished inside organisms.</p>
	<c:url value="/img/ribose.png" var="riboseStructure" />
	<img
		style="display: block; margin-left: auto; margin-right: auto; width: 40%;"
		src="${riboseStructure}" alt="Ribose Structure" />


	<h1>3. Nitrogenous Bases</h1>
	<p class="hp">RNA and DNA both use the nitrogenous bases of
		adenine, guanine and cytosine. The uracil base replaces thymine in
		RNA. Thymine and uracil are structurally very similar. Uracil has
		fundamentally the same structure as thymine, with the deletion of a
		methyl group at the 5' position. Uracil will base pair with adenine in
		the same way as thymine pairs with adenine ().</p>
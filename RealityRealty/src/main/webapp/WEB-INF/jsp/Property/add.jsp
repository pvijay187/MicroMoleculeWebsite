<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<body>
	<c:url var="addUrl" value="/Property/add" />
	<form action="${addUrl}" method="POST">
	<div>
		<input type = "text" name = "address" placeholder = "Address" />
	</div>
	<div>
		<input type = "text" name = "city" placeholder = "City" />
	</div>
	<div>
		<input type = "text" name = "state" placeholder = "State" />
	</div>
	<div>
		<input type = "text" name = "zip" placeholder = "Zip" />
	</div>
	<div>
		<input type = "text" name = "price" placeholder = "Price" />
	</div>
	<div>
		<input type = "text" name = "realtorName" placeholder = "Realtor Name" />
	</div>
	<div>
		<input type = "text" name = "realtorPhone" placeholder = "Realtor Phone Number" />
	</div>
	
	<input type ="submit" value = "Add" />
	
	
	
	</form>






</body>
</html>
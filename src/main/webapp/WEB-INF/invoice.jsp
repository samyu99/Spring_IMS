<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Customer Invoice</title>
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="resources/css/invoicestyles.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="card">
	<div class="grid">
	<h2 style="color:red;">Invoice Number:</h2>
		<h2>${invcode}</h2></div>
		<br>
		<br>
		<h2 style="color:blue;">My Products</h2>
		
		<table border='4px' class="table table-striped" id="myTable">
		<caption></caption>
		<thead>
			<tr>

				<th id="productname">Product Name</th>
				<th id="serialno">Product Serial Number</th>
				<th id="price">Price per Unit</th>
				<th id="quantity">Quantities Sold</th>
			
				

			</tr>
		</thead>

		<tbody>

			<c:forEach var="clist" items="${clistitems}">
				<tr>
					<td>${clist.product.productname}</td>
					<td>${clist.product.productserialnumber}</td>
					<td>${clist.product.priceperunit}</td>
					<td>${clist.quantitysold}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	
	<div>
	<form:form target="_blank" method="GET" action="${contextPath}/invoicep"
			modelAttribute="GetInvoiceForm">			
					<button class="btn btn-success" type="submit" onclick="window.open('location.href='${contextPath}/invoicep','_blank')" 
					style="height:50px; width:130px; background-color:#3d82af; font-size:25px; text-align: center; vertical-align: middle;margin-left:350px; 
					"value=${invcode}><span><em class="fa fa-print"></em></span>Print</button>
					
		</form:form>
	</div>
</div>	
	</body>
</html>
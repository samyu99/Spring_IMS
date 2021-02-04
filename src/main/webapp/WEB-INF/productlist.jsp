<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    


<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Create an account</title>
<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="resources/css/productliststyles.css" type="text/css" rel="stylesheet">	
	

<script type="text/javascript" src="resources/js/productlistscript.js"></script>



</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#myPage">EMART</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${contextPath}/welcome">HOME</a></li>
					<li><a href="${contextPath}/p">PRODUCT</a></li>
					<li><a href="${contextPath}/productslist">INBOUND
							PRODUCTLIST</a></li>
					<li><a href="${contextPath}/productsinvlist">INVENTORY
							TRACKING</a></li>
					<li><a href="${contextPath}/saleslist">SALES TRACKING</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown"><span
							class="glyphicon glyphicon-user"></span>MyAccount <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/profile">MyProfile</a></li>
							<li><a>Whishlist</a></li>
							<li><a class="logout"
								onclick="document.forms['logoutForm'].submit()"
								style="color: black">LOGOUT</a></li>
						</ul></li>
					<li><a href="${contextPath}/mycart"><span
							class="glyphicon glyphicon-shopping-cart"></span>MyCart</a></li>
				</ul>
			</div>
		</div>
	</nav>
<br><br><br><br>
<div class="form-group">

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for product names.." size="35" height="50">

</div>
<br>
<br>

<table id="t02">
<caption></caption>
<tr>

<th id="">
<a  align ="right" href="/delete"><h3>Delete All Products</h3></a>
</th>
</tr>
</table>

<br>
	<table border='4px' class="table table-striped" id="myTable">
	<caption></caption>
		<thead>
			<tr>
				<th id="">Category</th>
				
				<th id="">Product Name</th>
				<th id="">Product Serial Number</th>
				<th id="">Quantities Received</th>
				<th id="">Price per unit</th>
				<th id="">Expiry Date</th>
				<th id="">Vendor Name</th>
				<th id="">Edit</th>
				<th id="">Delete</th>

			</tr>
		</thead>

		<tbody>

			<c:forEach var="p" items="${p}">
				<tr>
					<td>${p.category}</td>
					
					<td>${p.productname}</td>
					<td>${p.productserialnumber}</td>
					<td>${p.quantitesreceived}</td>
					<td>${p.priceperunit}</td>
					<td>${p.expirydate}</td>
					<td>${p.vendorname}</td>
					<td><a href="${contextPath}/editproduct/${p.productid}">Edit</a></td>  
                    <td><a href="${contextPath}/deleteproduct/${p.productid}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
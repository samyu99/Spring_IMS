<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    


<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sales Tracking</title>

<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
	
<link href="resources/css/salesnstyles.css" type="text/css" rel="stylesheet">		


<script type="text/javascript" src="resources/js/salesnscript.js"></script>

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

<br><br><br>
<div class="form-group">
		
			<input type="text" id="myInput" onkeyup="myFunction()"
				placeholder="Search for product names.." size="35" height="50">
		
	</div>
	
      <form class="text-center border border-light p-5" action="${contextPath}/pricesearch">
      <div class="card">
   	
   	 <p class="h4 mb-4" style="color:#3d82af">Price Range Search:</p>
    
    
      <div class="row">
      <div class="col-50">
      	<label class="h5 mb-4" id="alignment">Min :</label>
    	<input  class="form-control mb-4" type="number" min=0 max="9900" oninput="validity.valid||(value='0');" id="min_price" name="min_price" class="price-range-field" />
		</div></div>
		
		<div class="row">
      		<div class="col-50">
		<label class="h5 mb-4" id="alignment">Max :</label>
		<input  class="form-control mb-4" type="number" min=0 max="10000" oninput="validity.valid||(value='10000');" id="max_price" name="max_price" class="price-range-field" />
		</div></div>
		
		<button class="btn btn-info btn-block my-4" type="submit" value="Save">Search</button>	</div>
	</form>
	
	
	 <form class="text-center border border-light p-5" action="${contextPath}/datesearch">
	 <div class="card">
   	
   	 <p class="h4 mb-4" style="color:#3d82af">Order Date Range Search:</p>
	 
    <div class="row">
    <div class="col-50">
      	<label class="h5 mb-4" id="alignment">Min :</label>
    	<input  class="form-control mb-4" type="date" id="min_date" name="min_date" class="price-range-field" />
    </div></div>
    	
    <div class="row">
    <div class="col-50">
      	<label class="h5 mb-4" id="alignment">Max :</label>
		<input  class="form-control mb-4" type="date" id="max_date" name="max_date" class="price-range-field" />
	</div></div>
	
	<button class="btn btn-info btn-block my-4" type="submit" value="Save">Search</button></div>
	</form>
	
	<br>
	
	<div id="searchResults" class="search-results-block">
	<table border='4px' class="table table-striped" id="myTable">
	<caption></caption>
		<thead>
			<tr>

				<th id="number">Invoice Number</th>
				<th id="name">Product Name</th>
				<th id="serialno">Product Serial Number</th>
				<th id="quantity">Quantity</th>
				<th id="price">Item Price</th>
				<th id="totprice">Total Price</th>
				<th id="orderdate">Order Date</th>

			</tr>
		</thead>

		<tbody>

			<c:forEach var="cart" items="${cart}">
				<c:forEach items="${cart.cartlineitemslist}" var="cl">
					<tr>
						<td>${cart.invoice.code}</td>
						<td>${cl.product.productname}</td>
						<td>${cl.product.productserialnumber}</td>
						<td>${cl.quantitysold}</td>
						<td>${cl.itemprice}</td>
						<td>${cart.totalAmount}</td>
						<td>${cart.orderdate}</td>
					</tr>
				</c:forEach>

			</c:forEach>
		</tbody>
	</table>
	</div>
</body>
</html>
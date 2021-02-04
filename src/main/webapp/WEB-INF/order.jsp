<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="plist" value="${plist}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Generate Invoice</title>


	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="resources/css/orderstyles.css" type="text/css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/orderscript.js"></script>

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
	<br><br>

	
	<form:form action="${contextPath}/go" method="GET">
	<h3>Search Product</h3>
	<input type="text" id="Product_Name" name="Product_Name" placeholder="Search for product names.." >&nbsp;&nbsp;&nbsp;&nbsp;
	<button type="submit" onclick="location.href='${contextPath}/go'" style="height:40px; width:75px; background-color:#0989b8;color:white; font-size:20px; text-align:center">Go</button>
	</form:form>
	<br>
	<br>
	
	<div class="container">

		
<form:form class="text-center border border-light p-5" method="POST" action="${contextPath}/addproduct"
			modelAttribute="PostForm">
		<div class="card">
		<br><br>
					<form:input class="form-control mb-4" path="product.productserialnumber" id="serialnumber"
							value="${p.productserialnumber}" readonly="true" placeholder="Product Serial Number" />
					
					<form:input class="form-control mb-4" path="product.productname" id="productname"
							name="productname" readonly="true"  placeholder="Product Name"/>
							  <div class="row">
					              <div class="col-50">
					                <form:label class="h5 mb-4" id="alignment" path = "product.priceperunit">Price per Unit :</form:label>
					    			<form:input class="form-control mb-4" path="product.priceperunit" id="priceperunit" name="priceperunit"
									readonly="true" placeholder="Price per Unit"/>
					              </div>
					              <div class="col-50">
					                <form:label class="h5 mb-4" id="alignment" path="quantitysold">Quantities Sold :</form:label>
					   				<form:input class="form-control mb-4" path="quantitysold" id="quantitysold" name="quantitysold" onchange="calculateItemPrice()" placeholder="Quantities Sold"/>
					   				
					              </div>
					               <div class="col-50">
					                <form:label class="h5 mb-4" id="alignment" path="itemprice">Item Price :</form:label>
					   				<form:input class="form-control mb-4" path="itemprice"  readonly="true" id="ip" name="ip" placeholder="Item Price"/>
					              </div>
					            </div>
					
					
					<form:hidden class="form-control mb-4" path="product.productid" id="productid" name="productid" readonly="true" placeholder="Product Id"/>
					<form:hidden  class="form-control mb-4" path="product.quantitesreceived" id="quantitesreceived" name="quantitesreceived" readonly="true" placeholder="Quantity Recieved"/>
					<form:hidden class="form-control mb-4" path="product.vendorname" id="vendorname" name="vendorname" readonly="true" />
					<form:hidden class="form-control mb-4" path="product.quantityavailable" id="quantityavailable" name="quantityavailable" readonly="true" />
					
					<form:hidden class="form-control mb-4" path="product.category" id="category" name="category" readonly="true" />
					<form:hidden class="form-control mb-4" path="product.expirydate" id="expirydate" name="expirydate" readonly="true" />
					
					
					<button id="submitbtn" type="submit" onclick="location.href='${contextPath}/addproduct'"
						value="Add Product" >Add Product</button>
						</div>
			<br>
			<br>
			<br>
<%
    session.getAttribute("cid");
        %>
		</form:form>
		
		<form:form method="POST" action="${contextPath}/dff"
			modelAttribute="PostTableForm">
		<table class="table" border='4px'>
		<caption></caption>
			<thead>
				<tr>

					<th id="productname">Product Name</th>
					<th id="">Product serial number</th>
					<th id="">Price</th>
					<th id="">Quantities Sold</th>
					<th id="">Item Price</th>
					<th id="">Delete</th>

				</tr>
			</thead>
 
			<tbody>

				<c:forEach var="clist" items="${clistitems}">
					<tr>
					
						<td>${clist.product.productname}</td>
						<td>${clist.product.productserialnumber}</td>
						<td>${clist.product.priceperunit}</td>
						<td>${clist.quantitysold}</td>
						<td>${clist.itemprice}</td>
						<td><a href="${contextPath}/deleteproduct/${p.productid}">Delete</a></td>
					</tr>
					</c:forEach>
			</tbody>
		</table>
		
		
		
		
		</form:form>
        <div>
        <form:form method="POST" action="${contextPath}/cardpayment">
        	
        	<button id="submitbtn" type="submit" value="cardpayment" >Go To Payment</button>
        
        </form:form >
        	
						
		<%-- <form:form method="POST" action="${contextPath}/generateinvoice"
			modelAttribute="PostTotAmountForm">
					<strong>Total Amount: </strong><input type="text" id="Total_Amount" name="Total_Amount" value="${ta}" readonly><br><br><br>
					
					<button id="submitbtn" type="submit" onclick="location.href='${contextPath}/invoice'" 
						value=${invcode} >Generate Invoice</button>
		</form:form> --%>
		</div>
		
	</div>
</body>
</html>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<title>Add Inbound Inventory</title>
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
<link href="resources/css/productstyles.css" type="text/css" rel="stylesheet"/>

<style>

</style>
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

<br>
<br>


<form:form class="text-center border border-light p-5" method="POST" action="${contextPath}/savep" modelAttribute="PostForm" enctype="multipart/form-data">
<div class="card">
    <p class="h4 mb-4">Add Product</p>

    <!--Categories -->
    <form:input list="categories"  class="form-control mb-4" path = "category" placeholder="Select Your Category" />
          <datalist id="categories">
          <option value="Fruits & Vegetables">
          <option value="Grocery">
          <option value="Meat,Fish & Poultry">
          <option value="Dairy,frozen &  Batters">
          <option value="Beverages">
          <option value="Snacks & Sweets">
          <option value="Home & Hygiene">
          <option value="Beauty & Personal Care">
          <option value="Baby Food & Care">
          </datalist>
          
    <!-- Product Name -->
    <form:input class="form-control mb-4" path="productname" placeholder="Product Name"/>
    
    <!-- Serial Number -->
    <form:input class="form-control mb-4" path="productserialnumber" placeholder="Serial Number"/>
     <div class="row">
              <div class="col-50">
                <form:label class="h5 mb-4" id="alignment" path = "Quantitesreceived">Quantities Received :</form:label>
    			<form:input class="form-control mb-4" path = "Quantitesreceived" placeholder="Quantities Received"/>
              </div>
              <div class="col-50">
                <form:label class="h5 mb-4" id="alignment" path = "priceperunit">Price per Unit :</form:label>
   				<form:input class="form-control mb-4" path = "priceperunit" placeholder="Price per Unit"/>
              </div>
               <div class="col-50">
                <form:label class="h5 mb-4" id="alignment" path = "priceperunit">Expiry Date :</form:label>
   				<form:input class="form-control mb-4" type="date" path = "expirydate" placeholder="Expiry Date"/>
              </div>
            </div>
            
          
    <!-- Vendor Name -->
    <form:input class="form-control mb-4" path = "vendorname" placeholder="Vendor Name"/><br>
    
    <%-- <form:label path="image">Image</form:label>
     <form:input  path="image" type="file" name="image" accept="image/png, image/jpeg, image/jpg"/> --%>


    <!-- Sign in button -->
    <button class="btn btn-info btn-block my-4" type="submit" value="Save">Submit</button><br>

</div>
</form:form>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
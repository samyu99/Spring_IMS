<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="resources/css/paymentstyles.css" rel="stylesheet" type="text/css">	

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

	<section class="grid">

      <form:form method="POST" action="${contextPath}/savec" modelAttribute="customerForm">
      <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <form:label path = "customername"><em class="fa fa-user"></em> Full Name</form:label>
            <form:input path="customername"  placeholder="John M. Doe"/> 
            
            <form:label path="customeremail"><em class="fa fa-envelope"></em> Email</form:label>
            <form:input type="email" path="customeremail" placeholder="john@example.com"></form:input>
            
            <form:label path = "customeraddress"><em class="fa fa-address-card-o"></em> Address</form:label>
            <form:input path="customeraddress"  placeholder="542 W. 15th Street"/>
            
            <form:label path = "customercity"><em class="fa fa-institution"></em> City</form:label>
            <form:input path="customercity" placeholder="New York"/>

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <form:label path = "customerpincode">Zip</form:label>
                <form:input path="customerpincode" placeholder="10001"/>
              </div>
            </div>
          </div>
          
        </div>
        
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        	<button id="submitbtn" value="Continue to checkout">Continue to checkout</button>
      </form:form>

    <div >
      <h4>Cart <span class="price" style="color:black"><em class="fa fa-shopping-cart"></em> <strong>4</strong></span></h4>
      <p><a>Product 1</a> <span class="price">$15</span></p>
      <p><a>Product 2</a> <span class="price">$5</span></p>
      <p><a>Product 3</a> <span class="price">$8</span></p>
      <p><a>Product 4</a> <span class="price">$2</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><strong>$30</strong></span></p>
    
  </div></section>
  <br>
 

</body>
</html>

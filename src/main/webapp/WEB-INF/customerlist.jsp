<%@ taglib
	prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Customer List</title>
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="resources/css/customerliststyles.css" type="text/css" rel="stylesheet"/>

<script type="text/javascript">
	$(document).ready(function() {
		$("#myModal").modal('show');
	});
</script>

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
	
	<form action="${contextPath}/pay">
		<div class="row" style="font-family: verdana">
			<div class="col-md-12">
				<div class="accordion_students">
				<br><br><br>
					<h1 class="container text-center" style="font-family: verdana">Customer
						Details:</h1>
					<hr>
								<div class="grid">
									<ul class="display">
										<li>${c.customername} <a href="${contextPath}/pay">change</a></li>
										<li>${c.customeremail}</li>
										<li>${c.customeraddress} </li>
										<li>${c.customercity} </li>
										<li>${c.customerpincode} </li>
										<li>${c.currentdate}</li>
									</ul>
									<button id="submitbtn" formaction="${contextPath}/order"  value="${c.custid}" name="cid">Place Your Order</button>
								</div>

						<% session.setAttribute("cid", "${c.custid}");%>

							</div>
						</div>
					</div>
				
</form>
</body>

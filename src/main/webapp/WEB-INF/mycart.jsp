<!DOCTYPE html>
<html lang="en">
<head>
<title>mycart</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="utf-8">
<link href="resources/css/mycartstyles.css" type="text/css" rel="stylesheet">

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
						data-toggle="dropdown" ><span
							class="glyphicon glyphicon-user"></span>MyAccount <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/profile">MyProfile</a></li>
							<li><a >Whishlist</a></li>
							<li><a class="logout"
								onclick="document.forms['logoutForm'].submit()"
								style="color: black">LOGOUT</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<section class="main-grid">
				<h3>My Cart</h3>
				<hr>
				<div class="row">
					<div class="col-25">
						<img src="/assets/miltonstool.jpg" width="180px" alt="myimage">
						<div class="row" style="padding: 10px">
							<div class="col-25">
								<section class="grid">
									<input type="button" onclick="decrementValue()" value="-" /> <input
										type="text" name="quantity" value="1" maxlength="1" max="10"
										size="1" id="number" /> <input type="button"
										onclick="incrementValue()" value="+" />
								</section>
							</div>
						</div>

					</div>
					<div class="col-25">
						<label>Milton Stool</label>
						<h5>blue</h5>
						<h5>Seller: Radhe Radhe Enterprises</h5>
						<h4>
							<span>&#8377;</span>399
						</h4>
						<del>
							<span>&#8377;</span>445
						</del>
						10% Off
						<form action="${contextPath}/pay">
							<input type="submit" value="Continue to checkout" class="btn">
						</form>
					</div>
				
				</div>
	<div >
      <h4>Cart <span class="price" style="color:black"><em class="fa fa-shopping-cart"></em> <strong>4</strong></span></h4>
      <p><a>Product 1</a> <span class="price">$15</span></p>
      <p><a>Product 2</a> <span class="price">$5</span></p>
      <p><a>Product 3</a> <span class="price">$8</span></p>
      <p><a>Product 4</a> <span class="price">$2</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><strong>$30</strong></span></p>
    
  	</div>
	</section>
	
	<script type="text/javascript" src="resources/js/mycartscript.js"></script>

</body>
</html>
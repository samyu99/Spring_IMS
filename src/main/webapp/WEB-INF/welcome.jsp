<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Create an account</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="//storage.sg.content-cdn.io/in-resources/075ba640-9325-4e0e-8157-cdf49e2a8909/Stylesheet/owl.carousel.min.js"></script>
<link
	href="//storage.sg.content-cdn.io/in-resources/075ba640-9325-4e0e-8157-cdf49e2a8909/Stylesheet/owl.carousel.min.css"
	rel="stylesheet" />
<link href="resources/css/welcomestyles.css" type="text/css"
	rel="stylesheet">

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">
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
						data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>MyAccount
							<span class="caret"></span></a>
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
	<div>
		<img src="/assets/save_money.jpg" width=auto alt="savemoney" />
	</div>
	<div>
		<img src="/assets/discount.jpg" width=1270 alt="dicount" />
	</div>
	<br>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			<li data-target="#myCarousel" data-slide-to="5"></li>
			<li data-target="#myCarousel" data-slide-to="6"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="/assets/carousel1.jpg" alt="New York" width="1200"
					height="700">
			</div>

			<div class="item">
				<img src="/assets/carousel2.jpg" alt="Chicago" width="1200"
					height="700">
			</div>

			<div class="item">
				<img src="/assets/carousel3.jpg" alt="Los Angeles" width="1200"
					height="700">
			</div>
			<div class="item">
				<img src="/assets/carousel4.jpg" alt="New York" width="1200"
					height="700">
			</div>

			<div class="item">
				<img src="/assets/carousel5.jpg" alt="Chicago" width="1200"
					height="700">
			</div>

			<div class="item">
				<img src="/assets/carousel6.jpg" alt="Los Angeles" width="1200"
					height="700">
			</div>

			<div class="item">
				<img src="/assets/carousel7.jpg" alt="Los Angeles" width="1200"
					height="700">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- Container (Catergory Section) -->
	<br>
	<p>
	<div id="demoss">
		<br>
		<h3 class="text-left" style="padding: 5px">SHOP BY CATEGORY</h3>
		<hr>
		<div class="row">
			<div class="large-12 columns">
				<div class="owl-carousel owl-themenew owl-loaded owl-drag">
					<div class="item">
						<a href="${contextPath}/fruitsveg"><img
							alt="Online Super Market-Buy fruits &amp; vegetables online"
							height="auto" src="/assets/img1.jpg" /></a> <span>Fruits &
							Vegetables </span>
					</div>
					<div class="item">
						<a><img alt="Online Grocery Shopping-Buy grocery online"
							height="auto" src="/assets/img2.jpg" /></a> <span>Grocery</span>
					</div>
					<div class="item">
						<a><img alt="Online Super Market-order meat Products online"
							height="auto" src="/assets/img3.jpg" width="100%" /></a> <span>Meat,
							Fish & Poultry</span>
					</div>
					<div class="item">
						<a><img alt="Buy grocery online-Frozen Dairy Products"
							height="auto" src="/assets/img4.jpg" width="100%" /></a> <span>Dairy,
							Frozen & Batters</span>
					</div>
					<div class="item">
						<a><img
							alt="Online Super Market-Buy drinks &amp; beverages online"
							height="auto" src="/assets/img5.jpg" /></a> <span>Beverages</span>
					</div>
					<div class="item">
						<a><img alt="Online Super Market-buy online branded Food"
							height="auto" src="/assets/img6.jpg" /></a> <span>Snacks &
							Sweets</span>
					</div>
					<div class="item">
						<a><img
							alt="Online Grocery Shopping-buy home cleaning products online"
							height="auto" src="/assets/img8.jpg" /></a> <span>Home &
							Hygiene</span>
					</div>
					<div class="item">
						<a><img
							alt="Online Super Market-buy beauty &amp; Personal care products online"
							height="auto" src="/assets/img9.jpg" /></a> <span>Beauty &
							Personal Care</span>
					</div>
					<div class="item">
						<a><img alt="Online Super Market-baby Care product online"
							height="auto" src="/assets/img10.jpg" /></a> <span>Baby Food &
							Care</span>
					</div>


					<div class="owl-nav disabled">
						<div class="owl-prev disabled">prev</div>
						<div class="owl-next disabled">next</div>
					</div>
					<div class="owl-dots">
						<div class="owl-dot active">
							<span></span>
						</div>
						<div class="owl-dot active">
							<span></span>
						</div>
						<div class="owl-dot active">
							<span></span>
						</div>
						<div class="owl-dot active">
							<span></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>
	<script type="text/javascript" src="resources/js/welcomescript.js"></script>
	</p>
	<br>

	<!-- Container (Distributer Section) -->
	<div id="band" class="container text-center">
		<h3>EMART</h3>
		<p>
			<em>Freshest Produce!</em>
		</p>
		<p>EMART is the leading hypermarket and focuses to provide its
			customers with fresh produce every time they visit the store. EMART
			has 12,500+ stores in 44 countries across 4 continents. In India
			EMART currently has 25 stores across 9 cities and almost 150+
			distributers.</p>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<p class="text-center">
					<strong>Mike</strong>
				</p>
				<br> <a href="#demo" data-toggle="collapse"> <img
					src="/assets/person1.jpg" class="img-circle person"
					alt="Random Name" width="255" height="255">
				</a>
				<div id="demo" class="collapse">
					<p>Guitarist and Lead Vocalist</p>
					<p>Loves long walks on the beach</p>
					<p>Member since 1988</p>
				</div>
			</div>
			<div class="col-sm-4">
				<p class="text-center">
					<strong>Chandler</strong>
				</p>
				<br> <a href="#demo2" data-toggle="collapse"> <img
					src="/assets/person1.jpg" class="img-circle person"
					alt="Random Name" width="255" height="255">
				</a>
				<div id="demo2" class="collapse">
					<p>Drummer</p>
					<p>Loves drummin'</p>
					<p>Member since 1988</p>
				</div>
			</div>
			<div class="col-sm-4">
				<p class="text-center">
					<strong>Peter</strong>
				</p>
				<br> <a href="#demo3" data-toggle="collapse"> <img
					src="/assets/person1.jpg" class="img-circle person"
					alt="Random Name" width="255" height="255">
				</a>
				<div id="demo3" class="collapse">
					<p>Bass player</p>
					<p>Loves math</p>
					<p>Member since 2005</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Container (Contact Section) -->
	<div id="contact" class="container">
		<h3 class="text-center">Contact</h3>
		<p class="text-center">
			<em>We love our fans!</em>
		</p>

		<div class="row">
			<div class="col-md-4">
				<p>Fan? Drop a note.</p>
				<p>
					<span class="glyphicon glyphicon-map-marker"></span>Chicago, US
				</p>
				<p>
					<span class="glyphicon glyphicon-phone"></span>Phone: +00
					1515151515
				</p>
				<p>
					<span class="glyphicon glyphicon-envelope"></span>Email:
					mail@mail.com
				</p>
			</div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-sm-6 form-group">
						<input class="form-control" id="name" name="name"
							placeholder="Name" type="text" required>
					</div>
					<div class="col-sm-6 form-group">
						<input class="form-control" id="email" name="email"
							placeholder="Email" type="email" required>
					</div>
				</div>
				<textarea class="form-control" id="comments" name="comments"
					placeholder="Comment" rows="5"></textarea>
				<br>
				<div class="row">
					<div class="col-md-12 form-group">
						<button class="btn pull-right" type="submit">Send</button>
					</div>
				</div>
			</div>
		</div>
		<br>
		<h3 class="text-center">From Our Distributers</h3>
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#home">Mike</a></li>
			<li><a data-toggle="tab" href="#menu1">Chandler</a></li>
			<li><a data-toggle="tab" href="#menu2">Peter</a></li>
		</ul>

		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<h2>Mike Ross, Manager</h2>
				<p>Man, we've been on the road for some time now. Looking
					forward to lorem ipsum.</p>
			</div>
			<div id="menu1" class="tab-pane fade">
				<h2>Chandler Bing, Guitarist</h2>
				<p>Always a pleasure people! Hope you enjoyed it as much as I
					did. Could I BE.. any more pleased?</p>
			</div>
			<div id="menu2" class="tab-pane fade">
				<h2>Peter Griffin, Bass player</h2>
				<p>I mean, sometimes I enjoy the show, but other times I enjoy
					other things.</p>
			</div>
		</div>
	</div>

	<footer class="HJlsB9 text-center">
		<a class="up-arrow" href="#myPage" data-toggle="tooltip"
			title="TO TOP"> <span class="glyphicon glyphicon-chevron-up"></span>
		</a>
		<div class="TW4owM">
			<div class="_2NHqR1 row">
				<div class="_3qd5C5">
					<div class="_18wTSA">ABOUT</div>
					<a class="_287FRX">Contact Us</a> <a class="_287FRX">About Us</a> <a
						class="_287FRX">Careers</a> <a class="_287FRX">EMart Stories</a> <a
						class="_287FRX">Press</a> <a target="_blank" class="_287FRX"
						rel="noopener noreferrer">EMart Wholesale</a>
				</div>

				<div class="_3qd5C5">
					<div class="_18wTSA">HELP</div>
					<a>Payments</a> <a class="_287FRX">Shipping</a> <a class="_287FRX">Cancellation
						&amp; Returns</a> <a class="_287FRX">FAQ</a> <a class="_287FRX">Report
						Infringement</a>
				</div>

				<div class="_3qd5C5">
					<div class="_18wTSA">POLICY</div>
					<a class="_287FRX">Return Policy</a> <a class="_287FRX">Terms
						Of Use</a> <a class="_287FRX">Security</a> <a class="_287FRX">Privacy</a>
					<a>Sitemap</a> <a class="_287FRX">EPR Compliance</a>
				</div>

				<div class="_3qd5C5">
					<div class="_18wTSA">SOCIAL</div>
					<a class="_287FRX">Facebook</a> <a class="_287FRX">Twitter</a> <a
						class="_287FRX">YouTube</a>
				</div>
				<hr>

				<div class="_3qd5C5 address">
					<div class="_38DIp6">
						<div class="_18wTSA">
							<span>Mail Us:</span>
						</div>

						<div class="_2V3TtE">
							<div class="_3Lv0nZ">
								<div class="_3aS5mM _2V3TtE">
									<p>EMart Internet Private Limited,</p>
									<p>Buildings Alyssa, Begonia &amp;</p>
									<p>Clove Embassy Tech Village,</p>
									<p>Outer Ring Road, Devarabeesanahalli Village,</p>
									<p>Bengaluru, 560103,</p>
									<p>Karnataka, India</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="_3qd5C5 address">
					<div class="m6ABEi">
						<div class="_18wTSA">
							<span>Registered Office Address:</span>
						</div>

						<div class="_2V3TtE">
							<div class="_3Lv0nZ">
								<div class="_3aS5mM _2V3TtE">
									<p>EMart Internet Private Limited,</p>
									<p>Buildings Alyssa, Begonia &amp;</p>
									<p>Clove Embassy Tech Village,</p>
									<p>Outer Ring Road, Devarabeesanahalli Village,</p>
									<p>Bengaluru, 560103,</p>
									<p>Karnataka, India</p>
									<p>CIN : U51109KA2012PTC066107</p>
									<p>
										Telephone: <a href="tel:18002089898">1800 208 9898</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="_1DXv5h">
			<div>
				<img alt="image"
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNSIgdmlld0JveD0iMCAwIDE2IDE1Ij4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0iYSIgeDE9IjAlIiB4Mj0iODYuODc2JSIgeTE9IjAlIiB5Mj0iODAuMjAyJSI+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iMCUiIHN0b3AtY29sb3I9IiNGRkQ4MDAiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjRkZBRjAwIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDwvZGVmcz4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTS0yLTJoMjB2MjBILTJ6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNhKSIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMTUuOTMgNS42MTRoLTIuOTQ4VjQuMTRjMC0uODE4LS42NTUtMS40NzMtMS40NzMtMS40NzNIOC41NmMtLjgxNyAwLTEuNDczLjY1NS0xLjQ3MyAxLjQ3M3YxLjQ3NEg0LjE0Yy0uODE4IDAtMS40NjYuNjU2LTEuNDY2IDEuNDc0bC0uMDA3IDguMTA1YzAgLjgxOC42NTUgMS40NzQgMS40NzMgMS40NzRoMTEuNzljLjgxOCAwIDEuNDc0LS42NTYgMS40NzQtMS40NzRWNy4wODhjMC0uODE4LS42NTYtMS40NzQtMS40NzQtMS40NzR6bS00LjQyMSAwSDguNTZWNC4xNGgyLjk0OHYxLjQ3NHoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yIC0yKSIvPgogICAgPC9nPgo8L3N2Zz4K" /><a><span
					class="_1Dwg_s">Sell On EMart</span></a>
			</div>
			<div>
				<img alt="image"
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNSIgaGVpZ2h0PSIxNSIgdmlld0JveD0iMCAwIDE1IDE1Ij4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0iYSIgeDE9IjAlIiB4Mj0iODYuODc2JSIgeTE9IjAlIiB5Mj0iODAuMjAyJSI+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iMCUiIHN0b3AtY29sb3I9IiNGRkQ4MDAiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjRkZBRjAwIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDwvZGVmcz4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTS0zLTNoMjB2MjBILTN6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNhKSIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMTAuNDkyIDNDNi4zNTMgMyAzIDYuMzYgMyAxMC41YzAgNC4xNCAzLjM1MyA3LjUgNy40OTIgNy41QzE0LjY0IDE4IDE4IDE0LjY0IDE4IDEwLjUgMTggNi4zNiAxNC42NCAzIDEwLjQ5MiAzem0zLjE4IDEyTDEwLjUgMTMuMDg4IDcuMzI3IDE1bC44NC0zLjYwN0w1LjM3IDguOTdsMy42OS0uMzE1TDEwLjUgNS4yNWwxLjQ0IDMuMzk4IDMuNjkuMzE1LTIuNzk4IDIuNDIyLjg0IDMuNjE1eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMgLTMpIi8+CiAgICA8L2c+Cjwvc3ZnPgo="
					alt="image" /><a><span class="_1Dwg_s">Advertise</span></a>
			</div>
			<div>
				<img alt="image"
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxNyIgdmlld0JveD0iMCAwIDE4IDE3Ij4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0iYSIgeDE9IjAlIiB4Mj0iODYuODc2JSIgeTE9IjAlIiB5Mj0iODAuMjAyJSI+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iMCUiIHN0b3AtY29sb3I9IiNGRkQ4MDAiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjRkZBRjAwIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDwvZGVmcz4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTS0xLTFoMjB2MjBILTF6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNhKSIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMTYuNjY3IDVIMTQuODVjLjA5Mi0uMjU4LjE1LS41NDIuMTUtLjgzM2EyLjQ5NyAyLjQ5NyAwIDAgMC00LjU4My0xLjM3NUwxMCAzLjM1bC0uNDE3LS41NjdBMi41MSAyLjUxIDAgMCAwIDcuNSAxLjY2N2EyLjQ5NyAyLjQ5NyAwIDAgMC0yLjUgMi41YzAgLjI5MS4wNTguNTc1LjE1LjgzM0gzLjMzM2MtLjkyNSAwLTEuNjU4Ljc0Mi0xLjY1OCAxLjY2N2wtLjAwOCA5LjE2NkExLjY2IDEuNjYgMCAwIDAgMy4zMzMgMTcuNWgxMy4zMzRhMS42NiAxLjY2IDAgMCAwIDEuNjY2LTEuNjY3VjYuNjY3QTEuNjYgMS42NiAwIDAgMCAxNi42NjcgNXptMCA2LjY2N0gzLjMzM3YtNWg0LjIzNEw1LjgzMyA5LjAyNWwxLjM1Ljk3NSAxLjk4NC0yLjdMMTAgNi4xNjdsLjgzMyAxLjEzMyAxLjk4NCAyLjcgMS4zNS0uOTc1LTEuNzM0LTIuMzU4aDQuMjM0djV6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMSAtMSkiLz4KICAgIDwvZz4KPC9zdmc+Cg==" /><a><span
					class="_1Dwg_s">Gift Cards</span></a>
			</div>
			<div>
				<img alt="image"
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNSIgaGVpZ2h0PSIxNSIgdmlld0JveD0iMCAwIDE1IDE1Ij4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0iYSIgeDE9IjAlIiB4Mj0iODYuODc2JSIgeTE9IjAlIiB5Mj0iODAuMjAyJSI+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iMCUiIHN0b3AtY29sb3I9IiNGRkQ4MDAiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjRkZBRjAwIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDwvZGVmcz4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTS0yLTNoMjB2MjBILTJ6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNhKSIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNOS41IDNDNS4zNiAzIDIgNi4zNiAyIDEwLjUgMiAxNC42NCA1LjM2IDE4IDkuNSAxOGM0LjE0IDAgNy41LTMuMzYgNy41LTcuNUMxNyA2LjM2IDEzLjY0IDMgOS41IDN6bS43NSAxMi43NWgtMS41di0xLjVoMS41djEuNXptMS41NTMtNS44MTNsLS42NzYuNjljLS41NC41NDgtLjg3Ny45OTgtLjg3NyAyLjEyM2gtMS41di0uMzc1YzAtLjgyNS4zMzgtMS41NzUuODc3LTIuMTIzbC45My0uOTQ1Yy4yNzgtLjI3LjQ0My0uNjQ1LjQ0My0xLjA1NyAwLS44MjUtLjY3NS0xLjUtMS41LTEuNVM4IDcuNDI1IDggOC4yNUg2LjVhMyAzIDAgMSAxIDYgMGMwIC42Ni0uMjcgMS4yNi0uNjk3IDEuNjg4eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIgLTMpIi8+CiAgICA8L2c+Cjwvc3ZnPgo=" /><a><span
					class="_1Dwg_s">Help Center</span></a>
			</div>
			<span class="_2tFDQF">© 2007-<!-- -->2020<!-- --> <span>EMart.com</span></span><img
				src="//img1a.flixcart.com/www/linchpin/fk-cp-zion/img/payment-method_b3ab24.svg"
				alt="image" />
		</div>

	</footer>

	<script>
		src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
	</script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>


	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<form id="logoutForm" method="POST" action="${contextPath}/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

			<%-- <h2 class="logout">Hi ${pageContext.request.userPrincipal.name} 
| <a class="logout" onclick="document.forms['logoutForm'].submit()">Logout</a></h2> --%>

		</form>
	</c:if>



	<h3 class="text-info">Please add customer before placing an order</h3>
	<div>
		<br> <br>
		<form action="${contextPath}/c">
			<table>
				<caption></caption>

				<tr>
					<th id=""></th>
					<td colspan="2"><input type="submit"
						style="height: 50px; width: 150px; background-color: red; font-size: 20px"
						value="Add Customer" /><br> <br></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>




<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<title>Edit Product</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
	
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
	<link href="resources/css/editproductstyles.css" type="text/css" rel="stylesheet">

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
<div class="container">
<br>
<h1 class="text-center text-danger">Edit Product Form</h1>
<br>
<br>
<form:form method="POST" action="${contextPath}/editsavep" modelAttribute="PostForm">
             <table>
             <caption></caption>
              
              <tr> 
              <th id=""></th>   
          <td><form:hidden path="productid" /><br><br></td>  
         </tr>  
         <tr>  
         <th id=""></th>  
          <td><form:hidden path="quantityavailable" /><br><br></td>  
         </tr>  
         <tr>    
         <th id=""></th>
          <td><form:label path = "category">Category</form:label><br><br></td>   
          <td><form:input list="categories" path="category"/>
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
          </datalist><br><br></td>  
         </tr>     
         <tr> 
         <th id=""></th>   
          <td><form:label path = "productname">Product Name</form:label><br><br></td>   
          <td><form:input path="productname" /><br><br></td>  
         </tr> 
         <tr>    
         <th id=""></th>
          <td><form:label path = "productserialnumber">Product Serial Number</form:label><br><br></td>        
          <td><form:input path="productserialnumber" /><br><br></td>  
         </tr> 
          <tr>   
          <th id=""></th> 
          <td><form:label path = "Quantitesreceived">Quantities Received</form:label><br><br></td>        
          <td><form:input path="Quantitesreceived" readonly="true"/><br><br></td>  
         </tr>
         <tr>    
         <th id=""></th>
          <td><form:label path = "priceperunit">Price per Unit</form:label><br><br></td>        
          <td><form:input path="priceperunit" /><br><br></td>  
         </tr> 
         <tr>    
         <th id=""></th>
          <td><form:label path = "expirydate">Expiry date</form:label><br><br></td>        
          <td><form:input type="date" path = "expirydate" /><br><br></td>  
         </tr> 
         <tr>   
         <th id=""></th> 
          <td><form:label path = "vendorname">Vendor Name</form:label><br><br></td>        
          <td><form:input path="vendorname" /><br><br></td>  
         </tr>  
         <tr> 
         <th id=""></th>   
         <td colspan="2"><br><input type="submit" style="height:40px; width:150px; background-color:blue; font-size:20px" value="Edit Product" /><br><br></td>          </tr>    
        </table>    
        </form:form>
</div>
</body>
</html>
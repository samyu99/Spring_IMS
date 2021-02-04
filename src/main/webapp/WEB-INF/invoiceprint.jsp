<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Invoice</title>
   <link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="resources/css/invoiceprintstyles.css" type="text/css" rel="stylesheet">
  
</head>
<body>

    <div class="container">
        <div class="inv-title">
            <h1 class="no-margin">Invoice : ${invcode}</h1>
        </div>
        <div class="inv-header">
            <div>
            <div class="grid">
                <image src="assets/logo.jpg" alt="Logo" style="width:145%"></image>
                <h2>Spring-IMS</h2></div>
                <ul>
                    <li>Patancheru PC -235</li>
                    <li>India</li>
                    <li>949-000-0568 | inventory@springims.com</li>
                </ul>
                 <h2>Customer Details:</h2>
                 <h2>${c.customername}</h2>
                <ul>
                <li>${c.customeremail}</li>
                    <li>${c.customeraddress} </li>
                     <li>${c.customercity}</li>
                    <li>${c.customerpincode}</li>
                </ul>
               
            </div>
            <div>
                <table>
                <caption></caption>
                    <tr>
                    
                        <th id="datetime">Issue Date Time</th>
                        <td><p id="datetime"></p></td>
                    </tr>
                
                </table>
            </div>
        </div>
        <div id='container'>
		<h1 style="color:blue;">My Products</h2>
		<br>
		<table border='4px' class="table table-striped" id="myTable">
		<caption></caption>
		<thead>
			<tr>

				<th id="productname">Product Name</th>
				<th id="serialno">Product Serial Number</th>
				<th id="price">Price Per Unit</th>
				<th id="quantity">Quantities Sold</th>
				<th id="itemprice">Item Price</th>
				

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
				</tr>
			</c:forEach>
		</tbody>
	</table>
        <div class="inv-footer">
            <table>
            <caption></caption>
                <tr>
                    <th id="subtotal">Sub total</th>
                    <td>${ta}</td>
                </tr>
            
            </table>
        </div>
    </div>
    </div>
      <script>
    var d = new Date();
    document.getElementById("datetime").innerHTML = d;
    </script>
</body>
</html>

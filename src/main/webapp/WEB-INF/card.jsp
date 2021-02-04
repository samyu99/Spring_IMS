<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="plist" value="${plist}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Payment</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="resources/css/cardstyles.css" type="text/css">
  
</head>

<body>
<section>
<div class="container mt-5">
	<div class="row">
		<div class="col-lg-2"></div>
<div class="col-lg-8">
	 <div class="card">
    <div class="card-header">
    	<div class="row">
<div class="col-md-8">
    <h4 class="font-weight-bolder pt-1 pb-0">Payment Details</h4>
   </div>
<div class="col-md-4">
	<div class="form-group form-check">
    <label class="form-check-label pt-2">
    <input class="form-check-input mt-2" type="checkbox">  Remember me 
    </label>
  </div>
</div>
</div>
  </div>
    <div class="card-body">
<form action="#">
	 <label for="email" class="font-weight-bolder inputicon">Card Number</label>
  <div class="input-group">
   
    <input type="Number" class="form-control" placeholder="Valid Card Number">
    <span class="input-group-addon"><i class="fa fa-lock"></i></span>

  </div>
  <div class="row">
  <div class="col-md-8">
  	 
  	 <div class="container p-0">
  	 	<label for="pwd" class="font-weight-bolder pt-4">EXPIRY DATE:</label>
  	 <div class="row">
  <div class="form-group col-md-3 col-xs-6 col-sm-6">
   
    <input type="number" class="form-control" placeholder="MM">

  </div>

  <div class="form-group col-md-3 col-xs-6 col-sm-6">
   
    <input type="number" class="form-control" placeholder="YY">
  </div>
  </div>
</div>
</div>
<div class="col-md-4">
	 <div class="form-group">
    <label for="pwd" class="font-weight-bolder pt-4">CV CODE:</label>
    <input type="number" class="form-control" placeholder="CVV">
  </div>
</div>
</div>
<label for="email" class="font-weight-bolder inputicon">Card Holder Name</label>
  <div class="input-group">
   
    <input type="text" class="form-control" placeholder="Valid Card Holder Name">
  </div>
 </form>

    </div> 
    <form method="POST" action="${contextPath}/payment_succesful">
    <div class="card-footer">
    	<button type="button" class="btn btn-primary">Final Payment <span class="badge badge-danger ml-1">&#8377.${ta}</span></button>
    	<button  type="submit" class="btn btn-success float-right text-right"  value="payment">Pay</button>
    	
    	
    	<%-- <form:form method="POST" action="${contextPath}/generateinvoice"
			modelAttribute="PostTotAmountForm">
			
			<input type="text" id="Total_Amount" name="Total_Amount" value="${ta}" readonly><br><br><br>
					
					<button id="submitbtn" type="submit" onclick="location.href='${contextPath}/invoice'" 
						value=${invcode} >Generate Invoice</button>
		</form:form>  --%>
    </div>
    </form>
  </div>
</div>
</div>
</div>
</section>
</body>
</html>
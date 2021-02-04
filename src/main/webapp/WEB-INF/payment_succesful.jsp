<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html lang="en">

<head>
<title>Success</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="resources/css/payment_successstyles.css" type="text/css" rel="stylesheet">

</head>
<body>

<div class="card">
<div class="swal2-icon swal2-success swal2-animate-success-icon" style="display: flex;">
 <div class="swal2-success-circular-line-left" style="background-color: rgb(255, 255, 255);"></div>
   <span class="swal2-success-line-tip"></span>
   <span class="swal2-success-line-long"></span>
   <div class="swal2-success-ring"></div> 
   <div class="swal2-success-fix" style="background-color: rgb(255, 255, 255);"></div>
   <div class="swal2-success-circular-line-right" style="background-color: rgb(255, 255, 255);"></div>
  </div>
  
  <h3>Dear ${pageContext.request.userPrincipal.name} ,Your Payment of &#8377.${ta} was successful</h3>
  
  <form:form method="POST" action="${contextPath}/generateinvoice"
			modelAttribute="PostTotAmountForm">
						
					 <button id="btn" type="submit" onclick="location.href='${contextPath}/invoicep'" 
						value=${invcode} >OK</button> 
						
						<h6>(click OK to generate invoice)</h6>
		</form:form> 
		
</div>
</body>
</html>
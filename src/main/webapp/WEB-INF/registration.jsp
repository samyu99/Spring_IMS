<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create an account</title>


    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="resources/css/registerstyles.css" rel="stylesheet" type="text/css">
</head>

<body>

<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->

        <div class="container">
            <form:form method="POST" modelAttribute="userForm" class="form-signin">

                <h2 class="form-signin-heading">Create your account</h2>
                <div class="form-group ${error != null ? 'has-error' : ''}">
                <spring:bind path="username">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="username" class="form-control" placeholder="Username"
                                    autofocus="true"></form:input>
                        <form:errors path="username"></form:errors>`
                    </div>
                </spring:bind>
                <spring:bind path="password">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                        <form:errors path="password"></form:errors>
                    </div>
                </spring:bind>
                <spring:bind path="passwordConfirm">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="password" path="passwordConfirm" class="form-control"
                                    placeholder="Confirm your password"></form:input>
                        <form:errors path="passwordConfirm"></form:errors>
                    </div>
                </spring:bind>
                <spring:bind path="location">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="location" class="form-control" placeholder="Location"
                                autofocus="true"></form:input>
                    <form:errors path="location"></form:errors>
                </div>
            	</spring:bind>
            	<spring:bind path="mobileno">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="mobileno" class="form-control" placeholder="MobileNum"
                                autofocus="true"></form:input>
                    <form:errors path="mobileno"></form:errors>
                </div>
            </spring:bind>
                </div>
            </div>
        <div id="formFooter">
            <input type="submit" class="fadeIn fourth" value="submit">
        </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%--
  Created by IntelliJ IDEA.
  User: Robel
  Date: 11/17/2019
  Time: 12:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CREATING NEW ACCOUNT</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bootstrap 4 Navbar Color Schemes</title>

    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <style type="text/css">@import url(/resources/css/main.css);</style>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .bs-example {
            margin: 20px;
        }

        .navbar {
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-info">
    <a href="#" class="navbar-brand">BlueBank</a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse5">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarCollapse5">
        <div class="navbar-nav">

            <a href="list" class="nav-item nav-link">Account List</a>
            <a href="home" class="nav-item nav-link">Logout</a>
        </div>
        <form class="form-inline ml-auto">
            <input type="text" class="form-control mr-sm-2" placeholder="Search">
            <button type="submit" class="btn btn-outline-light">Search</button>
        </form>
    </div>
</nav>
  <form:form id="display" modelAttribute="newAccount" action="update"  method="post">
      <fieldset>
      <legend>Creating An Account For A New Customer</legend>
<%--<form action="OneToManyUniJoinColumn" method="post">--%>
    <fieldset id="fieldset">
        <legend>Update A Customer</legend>
        <h4>USER INFORMATION</h4>
        <p>
            <label for="user.firstName">First Name: </label>
            <form:input path="user.firstName"/>
            <form:errors path="user.firstName" cssStyle="color: red;"/>

        </p>
        <p>
            <label for="user.lastName">Last Name: </label>
            <form:input path="user.lastName"/>
            <form:errors path="user.lastName" cssStyle="color: red;"/>
        </p>
        <p>
            <label for="user.dateOfBirth">Date of Birth: </label>
            <form:input placeholder="MM-dd-yyyy" path="user.dateOfBirth"/>
            <form:errors path="user.dateOfBirth" cssStyle="color: red;"/>

        </p>
        <p>
            <label for="user.gender">Gender: </label>
            <form:select path="user.gender"  >
                <form:option value="">Select Gender</form:option>
                <form:options items="${genders}"/>
            </form:select>
            <form:errors path="user.gender" cssStyle="color : red;" />

        </p>
        <h6>USER's Address INFORMATION</h6>
        <p>
            <label for="user.address.street">Street: </label>
            <form:input path="user.address.street"/>
            <form:errors path="user.address.street" cssStyle="color: red;"/>
        </p>

        <p>
            <label for="user.address.city">City: </label>
            <form:input path="user.address.city"/>
            <form:errors path="user.address.city" cssStyle="color: red;"/>

        </p>
        <p>
            <label for="user.address.state">State: </label>
            <form:input path="user.address.state"/>
            <form:errors path="user.address.state" cssStyle="color: red;"/>

        </p>
        <p>
            <label for="user.address.zipCode">Zip Code: </label>
            <form:input path="user.address.zipCode"/>
            <form:errors path="user.address.zipCode" cssStyle="color: red;"/>

        </p>
       <p>Now You can give a customer account number with account type and customer can also put an initial amount.</p>
        <p>
            <label for="accountNumber">Account Number: </label>
            <form:input path="accountNumber"/>
            <form:errors path="accountNumber" cssStyle="color: red;"/>
        </p>
        <p>
            <label for="accountType">Account Type: </label>
            <form:input path="accountType"/>
        </p>
        <p>
            <label for="balance"> Balance: </label>
            <form:input path="balance"/>
            <form:errors path="balance" cssStyle="color: red;"/>
        </p>


        <p id="buttons">
            <input id="submit" type="submit"   value="Save Account">
        <p>
    </fieldset>
     </form:form>
</body>
</html>

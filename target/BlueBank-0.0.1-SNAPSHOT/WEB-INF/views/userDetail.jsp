
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%--
  Created by IntelliJ IDEA.
  User: Robel
  Date: 11/17/2019
  Time: 7:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<html>
<head>
    <title>Account Details</title>

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
<div id="">
<p>New Account has successfully registered. Please, re-check the details.</p>
<fieldset>
    <legend>User Details</legend>
Account Number :  ${savedAccount.accountNumber} <br><br>
Account Type: ${savedAccount.accountType} <br><br>

First Name : ${savedAccount.user.firstName} <br><br>
Last Name : ${savedAccount.user.lastName} <br><br>
<%--Date Of Birth : ${savedAccount.user.dateOfBirth} <br><br>--%>
   Sex       :  ${savedAccount.user.gender} <br><br>
 Street  :  ${savedAccount.user.address.street} <br><br>
  City  : ${savedAccount.user.address.city}<br><br>
  State :${savedAccount.user.address.state}<br><br>
  Zip Code: ${savedAccount.user.address.zipCode}<br><br>
</fieldset>
<form action="add" method="get">
    <input id="submit" type="submit" value="Add New Account">
</form>
<h3>Go to the Account Lists to check this new account is must be there tooo.</h3>

<form action="list" method="get">
    <input id="submit2" type="submit" value="List of Accounts">
</form>
</div>
</body>
</html>


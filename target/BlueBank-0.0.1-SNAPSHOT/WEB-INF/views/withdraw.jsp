<%--
  Created by IntelliJ IDEA.
  User: tek
  Date: 11/17/19
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.

--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bootstrap 4 Navbar Color Schemes</title>

    <link href="<c:url value="/resource/css/main.css" />" rel="stylesheet">

    <style type="text/css">@import url(/resource/css/main.css);</style>


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
            <a href="home" class="nav-item nav-link active">Home</a>
            <a href="deposit" class="nav-item nav-link">Deposit</a>
            <a href="withdraw" class="nav-item nav-link">WithDraw</a>
            <a href="send" class="nav-item nav-link">Send</a>
            <a href="transfer" class="nav-item nav-link">Tranfer</a>
            <a href="accountSummary" class="nav-item nav-link">AccountSummary</a>
            <a href="logout" class="nav-item nav-link">Logout</a>
        </div>
        <form class="form-inline ml-auto">
            <input type="text" class="form-control mr-sm-2" placeholder="Search">
            <button type="submit" class="btn btn-outline-light">Search</button>
        </form>
    </div>
</nav>







<form:form id="display" action="withdraw" method="post" modelAttribute="transaction">
    <label>WithDraw Money</label> <br>

    <label >From Account</label> <br>
    <form:select path="fromAccountNumber" items="${accounts}" itemValue="accountNumber"
                 itemLabel="accountType"/> <br>


        <label>Enter Amount in USD</label>
        <form:input path="amount"/>

    <input type="submit" value="Submit" OnClick="alertName()"/>
</form:form>



</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: tek
  Date: 11/17/19
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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


            <a href="home" class="nav-item nav-link">Logout</a>
             <a href="user/accountSummary" class="nav-item nav-link">My Account</a>
        </div>
        <form class="form-inline ml-auto">
            <input type="text" class="form-control mr-sm-2" placeholder="Search">
            <button type="submit" class="btn btn-outline-light">Search</button>
        </form>
    </div>
</nav>
<div id="global">


    <!-- Query Parameter passing  -->
    <div>
        <span style="font-size: 1.0em">List of All Accounts</span>
        <span style="float:right;">
                <a class="btn btn-outline-primary btn-lg" href="add">Open a New Account</a>
            </span>
    </div>


    <table class="table table-striped" >
        <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Account Number</th>
            <th scope="col">Account Type</th>
            <th scope="col">Balance</th>
            <th scope="col">User Name</th>
            <th scope="col">&nbsp;</th>
            <th scope="col">&nbsp;</th>
<%--            <th scope="col">Edit</th>--%>
<%--            <th scope="col">Delete</th>--%>
        </tr>
        </thead>
        <tbody>
        <tr<c:forEach items="${accounts}" var="account">>



                <td>${account.id}</td>
                <td>${account.accountNumber}</td>
                <td>${account.accountType}</td>
                <td>${account.balance}</td>
                <td>${account.user.firstName}</td>


                <!-- Spring:url for handling Spring template/@PathVariable -->
            <td>  <spring:url value="/account/edit/{id}" var="edit">
                <spring:param name="id" value="${account.id}"/>
            </spring:url>
                <a class="btn btn-outline-primary btn-sm" href="${edit}">Edit</a>
            </td>
            <td>
                <spring:url value="/account/delete/{id}" var="delete">
                <spring:param name="id" value="${account.id}"/>
                </spring:url>
                <a class="btn btn-outline-primary btn-sm" href="${delete}">Delete</a>
            </td>
        </tr </c:forEach>>
        </tbody>

    </table>

    <%--    <input type="button" value="Add Category" onclick="make_visible('formInput');return false;">--%>


</body>
</html>

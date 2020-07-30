<%--
  Created by IntelliJ IDEA.
  User: tek
  Date: 11/17/19
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bootstrap 4 Navbar Color Schemes</title>

     <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

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
            <a href="transfer" class="nav-item nav-link">Transfer</a>
            <a href="accountSummary" class="nav-item nav-link">AccountSummary</a>
            <a href="home" class="nav-item nav-link">Logout</a>
            <sec:authorize access="hasRole('ROLE_USER') and isAuthenticated()">
            <a href="adminPanel" class="nav-item nav-link">Admin Panel</a>
</sec:authorize>
        </div>
        <form class="form-inline ml-auto">
            <input type="text" class="form-control mr-sm-2" placeholder="Search">
            <button type="submit" class="btn btn-outline-light">Search</button>
        </form>
    </div>
</nav>
<div id="display">
    <h2>WelCome to The BLUE BANK ${account.user.lastName}</h2>
    <table class="table table-striped" >
    
        <thead class="thead-dark">
        <tr>
          
            <th scope="col">Account Type</th>
            <th scope="col">Account Number</th>
            <th scope="col">Balance</th>
          
            <th scope="col">&nbsp;</th>
            <th scope="col">&nbsp;</th>
<%--            <th scope="col">Edit</th>--%>
<%--            <th scope="col">Delete</th>--%>
        </tr>
        </thead>
        
        
        <c:forEach items="${accounts}" var="account">
             <tr>
                 <td>${account.accountType}</td>
                <td>${account.accountNumber}</td>
                <td>${account.balance}</td>

            <c:url value = "/user/accountDetail" var = "accountDetail">
                <c:param name = "accountNo" value = "${account.accountNumber}"/>

            </c:url>
           <td><a  class="btn btn-outline-primary btn-sm" href="${accountDetail}">detail</a></td>

             </tr>
        </c:forEach>
    </table>

</div>

</body>
</html>

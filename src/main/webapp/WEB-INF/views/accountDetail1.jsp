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

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

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
        legend {
 
 background:gainsboro;
 color:black;
 border:1px solid #000; 
 padding:2px 5px;
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
        </div>
        <form class="form-inline ml-auto">
            <input type="text" class="form-control mr-sm-2" placeholder="Search">
            <button type="submit" class="btn btn-outline-light">Search</button>
        </form>
    </div>
</nav>
  
    
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
       <tr>
          <td>${account.accountType}</td>
            <td>${account.accountNumber}</td>
        <td>${account.balance}<td>
       </td>
       
       </tr>
       </table>
        <c:forEach items="${transactionList}" var="transaction">
        <form >
  <fieldset>
    <legend>Transaction</legend>
                date:  ${transaction.dateOfTransaction} <br>
    Transaction Type:  ${transaction.transactionType}   <br>
       From Account :   ${transaction.fromAccountNumber} <br>
         To Account :   ${transaction.toAccountNumber}   <br>
             Amount :   ${transaction.amount}
  </fieldset>
</form> 
 </c:forEach>
 
 <%-- 
<div id="display">
        <p>list of Transactions</p>
      <div>
          <ul>
              <c:forEach items="${transactionList}" var="transaction">
                  <li><label>date----</label>${transaction.dateOfTransaction}</li>
                  <li><label>Transaction Type---</label>${transaction.transactionType}</li>
                  <li><label>from ----</label>${transaction.fromAccountNumber}</li>
                  <li><label>To---</label>${transaction.toAccountNumber}</li>
                  <li><label>Amount---</label>${transaction.amount}</li>
                  <li>****************end***********</li>
              </c:forEach>
          </ul>

      </div>
  </div> --%>
</body>
</html>

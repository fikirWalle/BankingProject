
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

    <link href="<c:url value="/css/main.css" />" rel="stylesheet">

<%--    <style type="text/css">@import url(/css/main.css);</style>--%>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        body{
            color: blue;
            background-color: bisque;
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
             <a href="list" class="nav-item nav-link">Accounts</a>
            <a href="logout" class="nav-item nav-link">Logout</a>
        </div>
        <form class="form-inline ml-auto">
            <input type="text" class="form-control mr-sm-2" placeholder="Search">
            <button type="submit" class="btn btn-outline-light">Search</button>
        </form>
    </div>
</nav>
     <form:form modelAttribute="newAccount" action="add"  method="post">
        <h2><spring:message code="createnew" text="default text" /></h2>
<%--<form action="OneToManyUniJoinColumn" method="post">--%>
    <fieldset id="fieldset">
        <legend><h2><spring:message code="createcustomer" text="default text" /></h2></legend>
        <h4> <spring:message code="USERINFORMATION" text="default text" /></h4>
        <p>
            <label for="user.firstName"><spring:message code="firstname" text="default text" /></label>
            <form:input path="user.firstName"/>
            <form:errors path="user.firstName" cssStyle="color: red;"/>

        </p>
        <p>
            <label for="user.lastName"><spring:message code="lastname" text="default text" /> </label>
            <form:input path="user.lastName"/>
            <form:errors path="user.lastName" cssStyle="color: red;"/>
        </p>
        <p>
            <label for="user.dateOfBirth"><spring:message code="dob" text="default text" /> </label>
            <form:input type="date" path="user.dateOfBirth"/>
            <form:errors path="user.dateOfBirth" cssStyle="color: red;"/>

        </p>
        <p>
            <label for="user.gender"><spring:message code="gender" text="default text" /> </label>
            <form:select path="user.gender"  >
                <form:option value=""><spring:message code="selectgender" text="default text" /></form:option>
                <form:options items="${genders}"/>
            </form:select>
            <form:errors path="user.gender" cssStyle="color : red;" />

        </p>
        <h6><spring:message code="useraddressinformation" text="default text" /></h6>
        <p>
            <label for="user.address.street"><spring:message code="street" text="default text" />: </label>
            <form:input path="user.address.street"/>
            <form:errors path="user.address.street" cssStyle="color: red;"/>
        </p>

        <p>
            <label for="user.address.city"><spring:message code="city" text="default text" />: </label>
            <form:input path="user.address.city"/>
            <form:errors path="user.address.city" cssStyle="color: red;"/>

        </p>
        <p>
            <label for="user.address.state"><spring:message code="state" text="default text" />: </label>
            <form:input path="user.address.state"/>
            <form:errors path="user.address.state" cssStyle="color: red;"/>

        </p>
        <p>
            <label for="user.address.zipCode"><spring:message code="zipcode" text="default text" />: </label>
            <form:input path="user.address.zipCode"/>
            <form:errors path="user.address.zipCode" cssStyle="color: red;"/>

        </p>

        <p><spring:message code="confirmation" text="default text" /></p>
        <p>
            <label for="accountNumber"><spring:message code="accnumber" text="default text" />: </label>
            <form:input path="accountNumber"/>
            <form:errors path="accountNumber" cssStyle="color: red;"/>
        </p>
        <p>
            <label for="accountType"><spring:message code="acctype" text="default text" />: </label>
            <form:input path="accountType"/>
        </p>
        <p>
            <label for="balance"> <spring:message code="balance" text="default text" />: </label>
            <form:input path="balance"/>
            <form:errors path="balance" cssStyle="color: red;"/>
        </p>


        <p id="buttons">
            <input id="submit" type="submit"   value="<spring:message code="save" text="default text" />">
        <p>
    </fieldset>
     </form:form>
</body>
</html>

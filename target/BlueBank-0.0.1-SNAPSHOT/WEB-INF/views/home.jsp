<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: tek
  Date: 11/19/19
  Time: 6:09 PM
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
    <%--    <style type="text/css">@import url("<c:url value="/css/home.css"/>");</style>--%>
    <%--    <script src="<c:url value="/resources/js/home.js" />"></script>--%>
    <%--    <link href="<c:url value="/css/home.css" />" rel="stylesheet">--%>

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

            <a href="login" class="nav-item nav-link" style="alignment: right">Login</a>
        </div>
        <form class="form-inline ml-auto">
            <input type="text" class="form-control mr-sm-2" placeholder="Search">
            <button type="submit" class="btn btn-outline-light">Search</button>
        </form>
    </div>
</nav>
Language : <a href="?language=en_US">English</a>|<a href="?language=zh_CN">Chinese</a>
<h3>
    <label> WELCOME TO BLUE BANK : <spring:message code="welcometobluebank" text="default text" /></label>
</h3>


<div class="overlay"></div>
<video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
    <source src="https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4" type="video/mp4">

</video>
<%--    <div class="container h-100">--%>
<%--        <div class="d-flex h-100 text-center align-items-center">--%>
<%--            <div class="w-100 text-white">--%>
<%--                <h1 class="display-3">Video Header</h1>--%>
<%--                <p class="lead mb-0">With HTML5 Video and Bootstrap 4</p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<div class="container">
    <p class="row">
    <p class="col-md-8 mx-auto">
    <p style="color: black"> A bank statement is a summary of financial transactions that occurred at a <p>
    <p style="color: black">certain institution during a specific time period. For example, a typical bank </p>
    <p style="color: black">statement may show your deposits and withdrawals for a certain month. Bank statements</p>
    <p style="color: black"> allow you to check for errors, watch for suspicious activity, and track your spending. </p>
    <p style="color: black"> You may also need to submit a bank statement when you apply for a loan or mortgage.</p>

    <p style="color: black">By reviewing your bank statements, you’re working toward better financial health and </p>
    <p style="color: black">taking control of your finances — putting you closer to reaching your financial goals.</p>
</div>
</div>
</div>


<div class="bd-example" style="margin-left: 30px " style="margin-right: 30px">
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" />
        <div class="carousel-item active">
            <img src="<spring:url value='/resource/images/bank1.jpg'  />"
                 style="width: 100%" style="height: 10%"/>

            <div class="carousel-caption d-none d-md-block">
                <h2> Expertise you need. </h2>
                <p class="col-md-8 mx-auto">
                <p style="color: cornflowerblue"> A bank statement is a summary of  <p>
                <p style="color: cornflowerblue">certain institution during a specific  </p>
                <p style="color: cornflowerblue">statement may show your deposits and </p>
                <p style="color: cornflowerblue"> allow you to check for errors. </p>
                <p style="color: cornflowerblue"> You may also need to submit a .</p>

                <p style="color: cornflowerblue">By reviewing your bank statements,  </p>
                <p style="color: cornflowerblue">taking control of your finances .</p>

            </div>
        </div>
        <div class="carousel-item">
            <img src="<spring:url value='/resource/images/bank3.jpg'/>" style="width: 100%" style="height: 10px" />
            <div class="carousel-caption d-none d-md-block">
                <h2>We Built This Bank For You.</h2>
                <p class="col-md-8 mx-auto">
                <p style="color: cornflowerblue"> A bank statement is a summary of  <p>
                <p style="color: cornflowerblue">certain institution during a specific  </p>
                <p style="color: cornflowerblue">statement may show your deposits and </p>
                <p style="color: cornflowerblue"> allow you to check for errors. </p>
                <p style="color: cornflowerblue"> You may also need to submit a .</p>

                <p style="color: cornflowerblue">By reviewing your bank statements,  </p>
                <p style="color: cornflowerblue">taking control of your finances .</p>

            </div>

        </div>
        <div class="carousel-item">
            <img src="<spring:url value='/resource/images/bank2.jpg'  />" style="width: 100%" style=height:20% />
            <div class="carousel-caption d-none d-md-block">
                <h2>Grow With Us</h2>
                <p class="col-md-8 mx-auto">
                <p style="color: cornflowerblue"> A bank statement is a summary of  <p>
                <p style="color: cornflowerblue">certain institution during a specific  </p>
                <p style="color: cornflowerblue">statement may show your deposits and </p>
                <p style="color: cornflowerblue"> allow you to check for errors. </p>
                <p style="color: cornflowerblue"> You may also need to submit a .</p>

                <p style="color: cornflowerblue">By reviewing your bank statements,  </p>
                <p style="color: cornflowerblue">taking control of your finances .</p>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
</div>
</div>


<div id="page-content">
    <div class="container text-center">
        <div class="row justify-content-center">
            <div class="col-md-7">
                <h1 class="font-weight-light mt-4 text-white">Sticky Footer using Flexbox</h1>
                <p class="lead text-white-50">Use just two Bootstrap 4 utility classes and three custom CSS rules and you will have a flexbox enabled sticky footer for your website!</p>
            </div>
        </div>
    </div>
</div>
<footer id="sticky-footer" class="py-4 bg-dark text-white-50">
    <div class="container text-center">
        <small>Copyright &copy; BLUEBANK </small><small>Contact us @bluebank#gmail.com</small>>
    </div>
</footer>
</body>

</body>
</html>

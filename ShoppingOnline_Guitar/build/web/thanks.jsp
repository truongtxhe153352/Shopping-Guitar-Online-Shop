<%-- 
    Document   : index
    Created on : Feb 18, 2022, 11:54:44 PM
    Author     : truon
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link />
    </head>
    <body>
        <!-- Navigation-->
        <%@include file= "components/navBarComponent.jsp" %>
        
        <div class="alert alert-success text-center mt-2" role="alert" style="min-height: 500px">
            <h1>Your order has been successfully placed! Please check your Mail.We will call you right away to confirm your order.</h1>
            <div class="text-center">
                <a class="btn btn-outline-dark" href="home">Continue shopping</a>
            </div>
        </div>
        <%@include file ="components/footerComponent.jsp" %>
    </body>
</html>

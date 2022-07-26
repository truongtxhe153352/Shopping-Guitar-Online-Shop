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
        <link href="css/login.css" rel="stylesheet" />
        <link />
    </head>
    <body>
        <!-- Navigation-->
        <!-- Product section-->
        <section class="vh-100">
            <div class="container-fluid h-custom">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-md-9 col-lg-6 col-xl-5">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid"
                             alt="Sample image">
                    </div>
                    <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">

                        <form action="login" method="POST">
                            <h3 class="text-danger">${error}</h3>
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <label class="form-label" for="user_email">Username</label>
                                <input type="text" id="user_email" name="user_email" class="form-control form-control-lg" placeholder="Enter user_email" />
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-3">
                                <label class="form-label" for="password">Password</label>
                                <input type="password" id="password" name="password" class="form-control form-control-lg" placeholder="Enter password" />
                            </div>
                            <div class="d-flex justify-content-between align-items-center">
                                <!-- Checkbox -->
                                <div class="form-check mb-0">
                                    <input class="form-check-input me-2" name="remember" type="checkbox" value="" id="remember" />
                                    <label class="form-check-label" for="remember">
                                        Remember me
                                    </label>
                                </div>
                            </div>

                            <div class="text-center text-lg-start mt-4 pt-2">
                                <button type="submit" class="btn btn-primary btn-lg"
                                        style="padding-left: 2.5rem; padding-right: 2.5rem; width: 100%">Login</button>
                                <c:choose>
                                    <c:when test="${sessionScope.account != null}">
                                        <a href="logout" class="btn btn-primary btn-lg mt-2"
                                           style="padding-left: 2.5rem; padding-right: 2.5rem; width: 100%">Logout</a>
                                    </c:when>
                                    <c:otherwise></c:otherwise>
                                </c:choose>
                                <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="register" class="link-danger">Register</a></p>
                                <p class="small fw-bold mt-2 pt-1 mb-0">Do you want to change password? <a href="changepassword" class="link-danger">Change password</a></p>
                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <%@include file ="components/footerComponent.jsp" %>
    </body>
</html>

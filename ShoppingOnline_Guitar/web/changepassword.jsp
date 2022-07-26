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
            <div class="container py-5 h-100">
                <div class="row d-flex align-items-center justify-content-center h-100">
                    <div class="col-md-8 col-lg-7 col-xl-6">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg" class="img-fluid" alt="Phone image">
                    </div>
                    <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                        <form action="changepassword" method="post">
                            <!-- Email input -->
                            <h1>Change the password</h1>


                            <c:if test="${requestScope.c!=null}">
                                <h3>${requestScope.c}</h3>
                            </c:if>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form1Example13">Username</label>
                                <input name="username" type="text" id="form1Example13" class="form-control form-control-lg" />
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-4">
                                <label class="form-label" for="form1Example23">Old Password</label>
                                <input name="oldpassword" type="password" id="form1Example23" class="form-control form-control-lg" />
                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form1Example23">New Password</label>
                                <input name="newpassword" type="password" id="form1Example23" class="form-control form-control-lg" />
                            </div>


                            <!-- Submit button -->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Confirm</button>

                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->

    </body>
</html>

<%-- 
    Document   : navbarComponent
    Created on : Feb 21, 2022, 11:03:48 PM
    Author     : truon
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<-- Navigation -->-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="#!"><img height="100" src="./img/header1.jpg" alt=""></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="/ShoppingOnline_Guitar/home"><i class="bi bi-house-fill"></i>Home</a></li>
                <li class="nav-item"><a class="nav-link" href="https://www.britannica.com/art/guitar">About</a></li>
                    <c:if test="${sessionScope.account.permission == 1}">

                    <div class="dropdown">
                        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                            Manager Admin
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <li><a class="dropdown-item nav-link" href="manager">Manager Product</a></li>
                            <li><a class="dropdown-item nav-link" href="accountmanager">Manager Account</a></li>
                        </ul>
                    </div>

                    <div class="dropdown">
                        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                            statistical
                        </a>

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <li><a class="dropdown-item nav-link" href="managershipping">Manager Order Customer</a></li>
                            <li><a class="dropdown-item nav-link" href="chart">2021</a></li>
                            <li><a class="dropdown-item nav-link" href="chart1">2022</a></li>
                            <li><a class="dropdown-item nav-link" href="chart1">2022</a></li>
                            <li><a class="dropdown-item nav-link" href="chart2">2023</a></li>
                            <li><a class="dropdown-item nav-link" href="chart3">2024</a></li>

                        </ul>
                    </div>


                </c:if>
            </ul>
            </li>
            </ul>
            <form action="search" class="d-flex mx-auto">
                <input class="form-control me-2" type="search" placeholder="Find products here" aria-label="Search" name="keyword">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <div class="d-flex mx-auto my-2">
                <a class="btn btn-outline-dark" href="carts">
                    <i class="bi-cart-fill me-1"></i>
                    Cart
                    <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                </a>
            </div>

            <c:choose>
                <c:when test="${sessionScope.account != null}">
                    <a href="/ShoppingOnline_Guitar/login" class="btn btn-outline-primary ms-lg-2"><img height="30" src="https://i.imgur.com/ZYzTdD0.png">
                        <p>${sessionScope.account.displayName}</p></a>
                    </c:when>
                    <c:otherwise>
                    <a href="/ShoppingOnline_Guitar/login" class="btn btn-outline-primary ms-lg-2"><img height="30" src="https://i.imgur.com/ZYzTdD0.png">
                        <p>Login</p></a>
                    </c:otherwise>
                </c:choose>
        </div>
    </div>
</nav>
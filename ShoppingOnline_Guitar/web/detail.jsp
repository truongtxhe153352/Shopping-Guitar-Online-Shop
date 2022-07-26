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
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img style="border: solid 5px #555555" class="card-img-top mb-5 mb-md-0" height="700" src="${product.imageUrl}" alt="..." /></div>
                    <div class="col-md-6">
                        <h1 class="display-5 fw-bolder">${product.name}</h1>
                        <div class="fs-5 mb-5">
                            <span>Version: ${product.title}</span></br>
                            Price: <span class="text-decoration-line-through"> $500.00</span>
                            <span style="color: red">$${product.price}</span> </br>
                            <span>Quantity in stock: ${product.quantity}</span>

                        </div>
                        <p class="lead">Description: ${product.description}</p>
                        <div class="d-flex">
                            <a href="add-to-cart?productId=${product.id}" class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </a>
                            <!--                            <a class=" ms-5 btn btn-outline-danger flex-shrink-0" type="button">
                                                            <i class="bi-cart-fill me-1"></i>
                                                            BUY NOW
                                                        </a>-->
                        </div>
                    </div>
                </div>
            </div>
        </section>

        COMMENT
        <section class="py-5 bg-light">
            <c:forEach items="${listComment}" var="C">
                <form action="add-record" method="POST">
                    <div>+${C.content}</div>
                    <c:forEach items="${listRecord}" var="R">
                        <div>-${R.content}</div>
                    </c:forEach>
                    <div></div>
                    <div>new record for event:
                        <input type="hidden" name="cid" value="${C.id}" />
                    <input type="text" name="recordContent" />
                    <input type="submit" value="Submit" /></div>
                </form>
            </c:forEach>
        </section>
        <!-- Related items section-->
        
        <!-- Footer-->
        <%@include file ="components/footerComponent.jsp" %>
    </body>
</html>

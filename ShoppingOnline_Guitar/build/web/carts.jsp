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
            <div class="container" style="min-height:1000px">
                <c:choose>
                    <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0}">
                        <h1 class="alert alert-danger" role="alert">Your shopping cart is Empty</h1>
                    </c:when>
                    <c:otherwise>
                        <h3>List Carts</h3>               
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="C">
                                <form action="update-quantity">
                                    <tr>
                                    <input type="hidden" name="productId" value="${C.value.product.id}"/>
                                    <th scope="row">${C.value.product.id}</th>
                                    <td><img src="${C.value.product.imageUrl}" width="50" height="75"/></td>
                                    <td>${C.value.product.name}</td>
                                    <td>$${C.value.product.price}</td>
                                    <td>  <input onchange="this.form.submit()" type="number" name="quantity" value=${C.value.quantity}></td>
                                    <td>$${C.value.product.price*C.value.quantity}</td>
                                    <td><a href="delete-cart?productId=${C.value.product.id}" class="btn btn-outline-danger"><i class="bi bi-cart-x-fill"></i></a></td>
                                    </tr>
                                </form>
                            </c:forEach>
                            </tbody>
                        </table>
                        <h3 class="alert alert-danger" role="alert">Total Money: $${totalMoney}</h3>
<!--                         check out-->
                        <a class=" btn btn-outline-danger flex-shrink-0" href="checkout" type="button">
                            <i class="bi-cart-fill me-1"></i>
                            PAYMENT
                        </a>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>
        <%@include file ="components/footerComponent.jsp" %>
    </body>
</html>

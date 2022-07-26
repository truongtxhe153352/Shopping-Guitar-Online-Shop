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
                <h3>Your order</h3>
                <div class="row">
                    <div class="col-md-8">  
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="C">
                                    <tr>
                                <input type="hidden" name="productId" value="${C.value.product.id}"/>
                                <th scope="row">${C.value.product.id}</th>
                                <td><img src="${C.value.product.imageUrl}" width="50" height="75"/></td>
                                <td>${C.value.product.name}</td>
                                <td>${C.value.product.price}</td>
                                <td>${C.value.quantity}</td>
                                <td>${C.value.product.price*C.value.quantity}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <h3 class="alert alert-success" role="alert" style="min-height:500px">Total Amount: $${totalMoney}</h3></div>
                    <div class="col-md-4" style="background-color: #adb5bd">
                        <h3>Write your information here</h3>
                        <form action="checkout" method="POST">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name:</label>
                                <input type="text" placeholder="your name" class="form-control" id="exampleInputEmail1" id="name" name="name" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone:</label>
                                <input type="text" placeholder="your phone" class="form-control" id="phone" name="phone" aria-describedby="emailHelp">
                            </div> <div class="mb-3">
                                <label for="address" class="form-label">Address:</label>
                                <input type="text" placeholder="your address" class="form-control" id="address" name="address" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="note" class="form-label">Note:</label>
                                <textarea class="form-control" placeholder="write something you lose!" id="note" name="note" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Payment</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <%@include file ="components/footerComponent.jsp" %>
    </body>
</html>

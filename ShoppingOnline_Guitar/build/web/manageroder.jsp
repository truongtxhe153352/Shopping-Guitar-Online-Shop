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
        <!-- Product section-->
        <section class="py-5">
            <div class="container" style="min-height:1000px">      
                <h3>List OrderDetail of customer</h3>   
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>                      
                            <th scope="col">Email</th>
                            <th scope="col">created_date</th>
                            <th scope="col">totalPrice</th>
                            <th scope="col">productName</th>
                            <th scope="col">name</th>
                            <th scope="col">phone</th>
                            <th scope="col">address</th>
                            <th scope="col">Order confirmation</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${listManagerOrder}" var="M">
                            <tr>
                                <td>${M.email}</td>
                                <td>${M.createdDate}</td>
                                <td>${M.productName}</td>
                                <td>${M.totalPrice}</td>
                                <td>${M.name}</td>
                                <td>${M.phone}</td>
                                <td>${M.address}</td>
                                <td class="btn btn-outline-success">Order confirmation</td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>            
            </div>
        </section>

    </body>
</html>

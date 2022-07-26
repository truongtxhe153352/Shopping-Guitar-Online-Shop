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
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" />
        <style>
            img{
                width: 150px;
                height: 200px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title" style="background-color: #19003E">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Account</b></h2>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>DisplayName</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>Phone</th>                    
                            <th>Permiss</th>       
                            <th>Action</th>                      
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listAccounts}" var="a">
                            <tr>
                                <td>${a.id}</td>
                                <td>${a.username}</td>
                                <td>${a.password}</td>
                                <td>${a.displayName}</td>
                                <td>${a.address}</td>
                                <td>${a.email}</td>
                                <td>${a.phone}</td>
                                <td>${a.permission}</td>
                                <td>
                                    <a href="deleteaccountmanager?accountid=${a.id}" class="delete" data-toggle="modal"><i class="bi bi-folder-minus" data-toggle="tooltip" title="Delete"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </div>
            <a href="home"><button type="button" class="btn btn-primary">Back to home</button>

        </div>
        <!-- Edit Modal HTML -->


<!-- Edit Modal HTML -->
<script src="js/manager.js" type="text/javascript"></script>
</body>
</html>
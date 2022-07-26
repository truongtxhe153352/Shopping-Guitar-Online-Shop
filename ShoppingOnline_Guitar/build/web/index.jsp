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
        <link href="css/styles1.css" rel="stylesheet" />
        <link />
    </head>
    <body>
        <!-- Navigation-->
        <%@include file= "components/navBarComponent.jsp" %>
        <!-- Header-->
        <header class="py-2">
            <!--        <header class="bg-dark py-5">
                        <div class="container px-4 px-lg-5 my-5">
                            <div class="text-center text-white">
                                <h1 class="text1 display-4 fw-bolder">Guitar CLUB<img height="100" src="./img/guitar.jpg" alt=""></h1>
                                <p class="text2 lead fw-normal text-white-50 mb-0">If you look deep enough you will see music; the heart of nature being everywhere music.</p>
                            </div>
                        </div>-->
            <!-- slide-bar -->

            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/slide-ghitar-4.jpg" class="d-block w-100" height="400" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="text1">Guitar CLUB<img height="100" src="./img/guitar.jpg" alt=""></h5>
                            <p class="text2">If you look deep enough you will see music; the heart of nature being everywhere music.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/slide-ghitar-1.jpg" class="d-block w-100" height="400" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="text1">Claude Debussy</h5>
                            <p class="text2">I love music passionately. And because I love it I try to free it from barren traditions that stifle it.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/slide-ghitar-3.jpg" class="d-block w-100" height="400" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="text1">Claude Debussy</h5>
                            <p class="text2">Music is the expression of the movement of the waters, the play of curves described by changing breezes</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

            <!-- enbarlide-bar -->
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">
                    <!-- List Category -->
                    <div class="col-md-3 mb-5">
                        <button class="nav-link bi bi-menu-button-wide-fill" style="width: 288px" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> CATEGORY</button>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li style="width: 285px"><a class="dropdown-item" href="#!"><h3>Shop All</h3>
                                    <ul class="list-group">
                                        <c:forEach items="${sessionScope.listCategories}" var="C">
                                            <li class="list-group-item"><a class="nav-link" href="fitler-category?categoryId=${C.id}">${C.name}</a></li>
                                            </c:forEach>
                                    </ul></a></li>
                        </ul>


                        <!--                        san pham moi nhat-->
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Product image-->
                                <a href="detail?productId=${last.id}">
                                    <img class="card-img-top" height="350" src="${last.imageUrl}" alt="..." />
                                </a>
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">${last.name}</h5>
                                        <!-- Product price-->
                                        <span style="color: red">$${last.price}</span>
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto" style="background-color: red; color:#ffffff" href="#">NEW</a></div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-9">
                        <!--                        List Products-->
                        <h3>List Products</h3>
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3  justify-content-center">
                            <c:forEach items="${listProducts}" var="P">
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Sale badge-->
                                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                                        <!-- Product image-->
                                        <a href="detail?productId=${P.id}">
                                            <img class="card-img-top" height="350" src="${P.imageUrl}" alt="..." />
                                        </a>
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">${P.name}</h5>
                                                <!-- Product reviews-->
                                                <div class="d-flex justify-content-center small text-warning mb-2">
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                </div>
                                                <!-- Product price-->
                                                <span class="text-muted text-decoration-line-through">$20.00</span>
                                                <span style="color: red">$${P.price}</span>
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="add-to-cart?productId=${P.id}">Add to cart</a></div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <!--                        for chua ca if va else-->
                        <c:choose>
                            <c:when test="${listProducts==null || listProducts.size()==0}">
                                <div class="alert alert-danger" role="alert">
                                    <h1>This product does not exist! Please find other product!</h1>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <!--                                    phan trang-->
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination d-flex justify-content-center">
                                        <c:if test="${page > 1}">
                                            <li class="page-item"><a class="page-link" href="home?page=${page-1}">Previous</a></li>
                                            </c:if>
                                            <c:forEach begin="1" end="${totalPage}" var="i">
                                            <li class="page-item ${i==page?"active":""}"><a class="page-link" href="home?page=${i}">${i}</a></li> 
                                            </c:forEach>
                                            <c:if test="${page < totalPage}">
                                            <li class="page-item"><a class="page-link" href="home?page=${page+1}">Next</a></li>
                                            </c:if>
                                    </ul>
                                </nav>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <%@include file ="components/footerComponent.jsp" %>
    </body>
</html>

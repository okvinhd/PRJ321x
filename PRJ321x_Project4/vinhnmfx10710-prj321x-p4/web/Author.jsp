
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="icon" sizes="16x16" href="https://noonpost.netlify.app/html/template/assets/img/favicon.png">
        <title>Home</title>
        <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/all.css">
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/elegant-font-icons.css">
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/owl.carousel.css">
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/style.css">
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/custom.css">
    </head>
    <body>
        <jsp:include page="Header.jsp"/>

        <section class="section pt-50">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h5>Author Post</h5>
                        </div>
                    </div>
                </div>

                <div class="row mb-20">
                    <div class="col-lg-8 mt-30">
                        <div class="contact">
                            <form action="author" class="sign-form widget-form" method="POST">
                                <div class="section-title">
                                    <h5>Add New Posts</h5>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="title" id="title" class="form-control" placeholder="Title">
                                </div>

                                <div class="form-group">
                                    <textarea name="content" id="content" cols="30" rows="5" class="form-control"
                                              placeholder="content"></textarea>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn-custom">Post</button>
                                </div>
                                <p class="form-group text-center" style="color:red">${requestScope.message}</p>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 max-width">
                        <!--widget-latest-posts-->
                        <div class="widget ">
                            <div class="section-title">
                                <h5>Edit Posts</h5>
                            </div>
                            <ul class="widget-latest-posts">
                                <c:forEach items="${list}" var="x">
                                    <li class="last-post">
                                        <div class="content">
                                            <p>
                                                <a href="edit?id=${x.id}">${x.title}</a>
                                            </p>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <!--/-->
                    </div>
                </div>

            </div>
        </section>

        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://noonpost.netlify.app/html/template/assets/js/jquery-3.5.0.min.js"></script>
        <script src="https://noonpost.netlify.app/html/template/assets/js/popper.min.js"></script>
        <script src="https://noonpost.netlify.app/html/template/assets/js/bootstrap.min.js"></script>
        <!-- JS Plugins  -->
        <script src="https://noonpost.netlify.app/html/template/assets/js/ajax-contact.js"></script>
        <script src="https://noonpost.netlify.app/html/template/assets/js/owl.carousel.min.js"></script>
        <script src="https://noonpost.netlify.app/html/template/assets/js/switch.js"></script>
        <!-- JS main  -->
        <script src="https://noonpost.netlify.app/html/template/assets/js/main.js"></script>
    </body>
</html>
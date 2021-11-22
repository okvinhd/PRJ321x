
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

        <section class="section pt-85">
            <div class="container-fluid">
                <div class="row">
                    <c:forEach items="${requestScope.a}" var="a">
                        <div class="col-lg-4 col-md-6">
                            <!--Post-1-->
                            <div class="post-card">
                                <div class="post-card-content">
                                    <a style="color: aliceblue;background-color: black;" class="categorie"> Author:
                                        ${a.author}</a>
                                    <a style="color: aliceblue;background-color: black;" class="categorie"> Post Time:
                                        ${a.postTime}</a>
                                    <h5>
                                        <a href="read?id=${a.id}">${a.title}</a>
                                    </h5>
                                    <p>${a.contentSummary}
                                    </p>
                                </div>
                            </div>
                            <!--/-->
                        </div>
                    </c:forEach>
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
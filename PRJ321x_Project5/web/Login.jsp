<%-- 
    Document   : login
    Created on : Jun 5, 2021, 2:59:56 PM
    Author     : thanh
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

    <head>
        <!-- Meta -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <!-- favicon -->
        <link rel="icon" sizes="16x16" href="assets/img/favicon.png">

        <!-- Title -->
        <title>Login</title>

        <!-- Font Google -->
        <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

        <!-- fontawe -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!-- CSS Plugins -->
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/all.css">
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/elegant-font-icons.css">
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/owl.carousel.css">

        <!-- main style -->
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/style.css">
        <link rel="stylesheet" href="https://noonpost.netlify.app/html/template/assets/css/custom.css">
    </head>

    <body>
        <jsp:include page="Header.jsp" />
        <section class="section pt-55 mb-50">
            <div class="container">
                <div class="sign widget ">
                    <div class="section-title">
                        <h5>Login</h5>
                    </div>
                    <form action="login" method="POST" class="widget-form">
                        <div class="form-group">
                            <input type="text" class="form-control" name="username" value="vinhd">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="password" value="vinhd">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn-custom">Login</button>
                        </div>
                        <p class="form-group text-center" style="color: red">${error}</p> 
                    </form>
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
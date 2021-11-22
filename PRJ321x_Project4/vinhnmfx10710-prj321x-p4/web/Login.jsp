<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="icon" sizes="16x16" href="https://noonpost.netlify.app/html/template/assets/img/favicon.png">
        <title>Login</title>
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
        <!--Login-->
        <section class="section pt-55 mb-50">
            <div class="container">
                <div class="sign widget ">
                    <div class="section-title">
                        <h5>Login</h5>
                    </div>
                    <form  action="login" class="sign-form widget-form " method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="username*" name="username"  >
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="password*" name="password" >
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn-custom">Login</button>
                        </div>
                        <p class="form-group text-center" style='color:red'>${requestScope.message}</p>
                        <p class="form-group text-center">Don't have an account? <a href="register" class="btn-link">Create One</a> </p>

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
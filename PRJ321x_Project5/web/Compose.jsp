
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title> Sent Mail </title>

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
        <section class="section pt-50">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h5>Send Mail</h5>
                        </div>
                    </div>
                </div>

                <div class="row mb-20">
                    <div class="col-lg-12 mt-30">
                        <div class="contact">
                            <form action="SendMail" method="POST" class="widget-form">
                                <h6>Feel free to contact any time.</h6>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates, repudiandae.</p>

                                <div class="form-group">
                                    <input type="text" name="to" class="form-control" placeholder="To:" >
                                </div>
                                <div class="form-group">
                                    <input type="text" name="cc" class="form-control" placeholder="CC:" >
                                </div>
                                <div class="form-group">
                                    <textarea name="subject" class="form-control" placeholder="Subject" ></textarea>
                                </div>
                                <div class="form-group">
                                    <textarea name="content" cols="30" rows="5" class="form-control" placeholder="Content"></textarea>
                                </div>
                                <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
                                <script>
                                    CKEDITOR.replace('content');
                                </script>
                                <div class="form-group">
                                    <button type="submit" class="btn-custom">Send Mail</button>
                                </div>
                                <h3 style="color: red">${result}</h3> 
                            </form>
                        </div> 
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


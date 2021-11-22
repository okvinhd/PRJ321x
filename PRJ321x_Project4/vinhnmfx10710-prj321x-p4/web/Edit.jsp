
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="icon" sizes="16x16" href="https://noonpost.netlify.app/html/template/assets/img/favicon.png">
        <title>Edit Post</title>
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
        <!--register-->
        <section class="section pt-50">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h5>Edit article</h5>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="contact">
                            <form action="edit" class="widget-form" method="POST" id="main_contact_form">
                                <div class="section-title">
                                    <h5>Edit Posts</h5>
                                </div>
                                <input type="hidden" name="id" value="${requestScope.id}"/>
                                <div class="form-group">
                                    <input type="text" id="title" name="title" class="form-control" value="${requestScope.a.title}">
                                </div>

                                <div class="form-group">
                                    <textarea id="content" name="content" cols="30" rows="15" class="form-control" >${requestScope.a.content}</textarea>
                                </div>
                                <div class="form-group">
                                    <input type="text" id="postTime" name="postTime" class="form-control" readonly="" value="${requestScope.a.postTime}">
                                </div>
                                <div class="form-group">
                                    <input type="text" id="postTime" name="author" class="form-control" readonly="" value="${requestScope.a.author}">
                                </div>
                                <button type="submit" class="btn-custom">Edit</button>
                                <a href="author" class="btn btn-link">Cancel</a>
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
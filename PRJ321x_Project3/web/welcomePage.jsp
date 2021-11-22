<%-- 
    Document   : welcomePage
    Created on : May 26, 2021, 11:05:02 PM
    Author     : VinhD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" itemscope>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="apple-touch-icon" sizes="76x76" href="https://demos.creative-tim.com/soft-ui-design-system/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="https://demos.creative-tim.com/soft-ui-design-system/assets/img/favicon.png">
        <title>
            Welcome Page
        </title>
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
        <!-- Font Awesome Icons -->
        <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
        <!-- CSS Files -->
        <link id="pagestyle" href="https://demos.creative-tim.com/soft-ui-design-system/assets/css/soft-design-system.min.css?v=1.0.4" rel="stylesheet" />
    </head>

    <body class="sign-in-illustration">
        <section>
            <div class="page-header section-height-100">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
                            <div class="card card-plain">
                                <div class="card-body">
                                    <div class="text-center">
                                        <h4 class="text-center font-weight-bolder">Welcome
                                            <% if (session.isNew()) {
                                            %> to the board <%
                                            } else {
                                            %> back <%
                                            }%>
                                        </h4>
                                        <a href="/project3/signIn.jsp" class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0">SIGN IN</a>
                                        <a href="/project3/signUp.jsp" class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0">SIGN UP</a>
                                    </div>
                                </div>
                                <div class="card-footer text-center pt-0 px-lg-2 px-1">
                                </div>
                            </div>
                        </div>
                        <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
                            <div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center">
                                <img src="https://demos.creative-tim.com/soft-ui-design-system/assets/img/shapes/pattern-lines.svg" alt="pattern-lines" class="position-absolute opacity-4 start-0">
                                <div class="position-relative">
                                    <img class="max-width-500 w-100 position-relative z-index-2" src="https://demos.creative-tim.com/soft-ui-design-system/assets/img/illustrations/chat.png">
                                </div>
                                <h4 class="mt-5 text-white font-weight-bolder">Nguyễn Mậu Vinh</h4>
                                <p class="text-white">Vinhnmfx10710<br> Project 3</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>

</html>
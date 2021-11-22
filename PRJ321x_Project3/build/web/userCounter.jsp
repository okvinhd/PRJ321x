<%-- 
    Document   : index.jsp
    Created on : May 26, 2021, 11:20:04 PM
    Author     : VinhD
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" itemscope itemtype="http://schema.org/WebPage">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="apple-touch-icon" sizes="76x76" href="https://demos.creative-tim.com/soft-ui-design-system/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="https://demos.creative-tim.com/soft-ui-design-system/assets/img/favicon.png">
        <title>
            User counter
        </title>
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
        <!-- Font Awesome Icons -->
        <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
        <!-- CSS Files -->
        <link id="pagestyle" href="https://demos.creative-tim.com/soft-ui-design-system/assets/css/soft-design-system.min.css?v=1.0.4" rel="stylesheet" />
    </head>

    <body class="sign-in-illustration">
        <header>
            <div class="page-header section-height-85">
                <div>
                    <img class="position-absolute fixed-top ms-auto w-50 h-100 z-index-0 d-none d-sm-none d-md-block border-radius-section border-top-end-radius-0 border-top-start-radius-0 border-bottom-end-radius-0" src="https://demos.creative-tim.com/soft-ui-design-system/assets/img/curved-images/curved8.jpg" alt="image">
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 d-flex justify-content-center flex-column">
                            <div class="card d-flex blur justify-content-center p-4 shadow-lg my-sm-0 my-sm-6 mt-8 mb-5">
                                <div class="text-left">
                                    <%
                                        if (session.getAttribute("user") == null) {
                                            request.getRequestDispatcher("signIn.jsp").forward(request, response);
                                        } else {
                                            ArrayList list = (ArrayList) session.getAttribute("userlogin");
                                    %>
                                    <h1 class="text-gradient text-primary">Logged-In users:<br></h1>
                                    <h3 class="text-gradient text-primary">
                                        <%
                                            out.println();
                                            for (int i = 0; i < list.size(); i++) {
                                                out.print(list.get(i).toString() + " ; ");
                                            }
                                        %>
                                    </h3>
                                    <% }%>


                                </div>
                                <div class="text-center">
                                    <a href="/project3" class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0">Back To Home</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
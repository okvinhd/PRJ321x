<%-- 
    Document   : courseform
    Created on : May 20, 2021, 12:56:33 AM
    Author     : VinhD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" itemscope itemtype="http://schema.org/WebPage">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="apple-touch-icon" sizes="76x76" href="https://demos.creative-tim.com/soft-ui-design-system/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="https://demos.creative-tim.com/soft-ui-design-system/assets/img/favicon.png">
        <title>
            Person Form
        </title>
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
        <!-- Font Awesome Icons -->
        <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
        <!-- CSS Files -->
        <link id="pagestyle" href="https://demos.creative-tim.com/soft-ui-design-system/assets/css/soft-design-system.min.css?v=1.0.4" rel="stylesheet" />
    </head>

    <body class="sign-in-illustration">
        <!--header-->
        <%@include file="header.jsp" %>
        <!--header-->
        <header>
            <div class="page-header section-height-85">
                <div>
                    <img class="position-absolute fixed-top ms-auto w-50 h-100 z-index-0 d-none d-sm-none d-md-block border-radius-section border-top-end-radius-0 border-top-start-radius-0 border-bottom-end-radius-0" src="https://demos.creative-tim.com/soft-ui-design-system/assets/img/curved-images/curved8.jpg" alt="image">
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 d-flex justify-content-center flex-column">
                            <div class="card d-flex blur justify-content-center p-4 shadow-lg my-sm-0 my-sm-6 mt-8 mb-5">
                                <div class="text-center">
                                    <h3 class="text-gradient text-primary">Course Registration</h3>
                                    <p class="mb-0">
                                        Person Form
                                    </p>
                                </div>
                                <form action="CourseValid" method="POST" >
                                    <div class="card-body pb-2">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Full Name</label>
                                                <div class="input-group mb-4">
                                                    <input name="fullname" type="text" class="form-control" placeholder="cannot be empty and contains no digits" >
                                                </div>
                                            </div>
                                            <div class="col-md-6 ps-md-2">
                                                <label>Age</label>
                                                <div class="input-group">
                                                    <input type="text" name="age" class="form-control" placeholder="must be more than 18, and less than 40">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label>Country</label>
                                                <select class="form-select mb-4" name="country">
                                                    <option value="Vietnam" selected>Vietnam</option>
                                                    <option value="US">US</option>
                                                    <option value="UK">UK</option>
                                                    <option value="China">China</option>
                                                    <option value="France">France</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Desired Language</label>
                                                <div class="input-group">
                                                    <div class="row text-center py-2">
                                                        <div class="mx-auto text-start">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" name="lang" value="Vietnamese">
                                                                <label class="form-check-label" for="flexCheckDefault">
                                                                    Vietnamese
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" name="lang" value="English" >
                                                                <label class="form-check-label" for="flexCheckChecked">
                                                                    English
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" name="lang" value="French">
                                                                <label class="form-check-label" for="flexCheckDefault">
                                                                    French
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 ps-md-2">
                                                <label>Course</label>
                                                <div class="input-group">
                                                    <div class="row text-center py-2">
                                                        <div class="mx-auto text-start">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" name="course" value="C#">
                                                                <label class="form-check-label" for="flexCheckDefault">
                                                                    C#
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" name="course" value="Java" >
                                                                <label class="form-check-label" for="flexCheckChecked">
                                                                    Java
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" name="course" value="C++">
                                                                <label class="form-check-label" for="flexCheckDefault">
                                                                    C++
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" name="course" value="Python">
                                                                <label class="form-check-label" for="flexCheckDefault">
                                                                    Python
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" name="course" value="Ruby on Rail">
                                                                <label class="form-check-label" for="flexCheckDefault">
                                                                    Ruby on Rail
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 text-center">
                                                    <input type="submit" value="Send Message" class="btn bg-gradient-primary mt-3 mb-0">
                                                    <p>${error}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>






        <!--footer-->
        <%@include file="footer.jsp" %>
        <!--footer-->
    </body>

</html>

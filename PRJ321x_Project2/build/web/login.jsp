<%-- 
    Document   : login
    Created on : May 20, 2021, 12:04:14 AM
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
    Soft UI Design System by Creative Tim
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- CSS Files -->
  <link id="pagestyle" href="https://demos.creative-tim.com/soft-ui-design-system/assets/css/soft-design-system.min.css?v=1.0.4" rel="stylesheet" />
</head>

<body class="sign-in-illustration">
<!--Header-->
 <%@include file="header.jsp" %>
<!--Header-->
  <section>
    <div class="page-header section-height-100">
      <div class="container">
        <div class="row">
          <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
            <div class="card card-plain">
              <div class="card-header pb-0 text-left">
                <h4 class="font-weight-bolder">LOGIN</h4>
                <p class="mb-0">Enter your username and password to sign in</p>
              </div>
              <div class="card-body">
                <form action="LoginServlet" method="POST">
                  <div class="mb-3">
                    <input type="text" name="Username" class="form-control form-control-lg" placeholder="admin" aria-label="Email" aria-describedby="email-addon">
                  </div>
                  <div class="mb-3">
                    <input type="password" name="Password" class="form-control form-control-lg" placeholder="passw0rd" aria-label="Password" aria-describedby="password-addon">
                  </div>
                  <div class="text-center">
                     <p style="color: red">${error}</p>
                    <input type="submit" value="Login" class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0"></input>
                  </div>
                </form>
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
              <h4 class="mt-5 text-white font-weight-bolder">"Attention is the new currency"</h4>
              <p class="text-white">The more effortless the writing looks, the more effort the writer actually put into the process.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--   Core JS Files   -->
  <script src="https://demos.creative-tim.com/soft-ui-design-system/assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="https://demos.creative-tim.com/soft-ui-design-system/assets/js/core/bootstrap.min.js" type="text/javascript"></script>
  <script src="https://demos.creative-tim.com/soft-ui-design-system/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <!--  Plugin for Parallax, full documentation here: https://github.com/wagerfield/parallax  -->
  <script src="https://demos.creative-tim.com/soft-ui-design-system/assets/js/plugins/parallax.min.js"></script>
  <!-- Control Center for Soft UI Kit: parallax effects, scripts for the example pages etc -->
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTTfWur0PDbZWPr7Pmq8K3jiDp0_xUziI"></script>
  <script src="https://demos.creative-tim.com/soft-ui-design-system/assets/js/soft-design-system.min.js?v=1.0.4" type="text/javascript"></script>
</body>

</html>
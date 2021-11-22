<%-- 
    Document   : reg
    Created on : May 11, 2021, 11:28:05 PM
    Author     : VinhD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
              crossorigin="anonymous">
        <title>Subject Registration</title>
        <style>
        </style>

    </head>

    <body class="d-flex h-100 text-center text-white bg-dark">

        <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
            <div class="Header">
                <%@include file='Header.jsp' %>
            </div>
            <div class="heigh"></div>
            <div class="form container ">
                <form class="form-signin" action="servletPost" method="POST">

                    <h1 class="h3 mb-3 font-weight-normal">Subject Registration</h1>

                    <input type="text" name="name" class="form-control" placeholder="Name" >
                    </br>
                    <input type="text" name="surName" class="form-control" placeholder="SurName" >
                    </br>
                    <input type="text" name="pNumber"  class="form-control" placeholder="phone number" >
                    </br>
                    <input type="text" name="eAddress" class="form-control"  placeholder="email address" >
                    </br>
                    <p>Select Subject: </p>
                    <div class="checkbox mb-3">                
                        <label>
                            <input type="checkbox" name="subject" value="math"> Maths
                            <input type="checkbox" name="subject" value="physic"> Physics
                            <input type="checkbox" name="subject" value="english"> English
                        </label>
                    </div>
                    </br>
                    <button type="submit button" class="btn btn-outline-primary">Registration</button>          
                </form>
            </div>
            <div class="heigh"></div>
            <div class="Footer">
                <%@include file='Footer.jsp' %>
            </div>
        </div>





        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ"
        crossorigin="anonymous"></script>
    </body>

</html>

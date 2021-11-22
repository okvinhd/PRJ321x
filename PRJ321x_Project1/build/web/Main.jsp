<%-- 
    Document   : Main
    Created on : May 11, 2021, 9:30:34 PM
    Author     : VinhD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <title>Main JSP Page</title>
        <style>
            .heigh{
                height: 100px;
            }
            .btn-secondary{
                color: #000!important;
            }
        </style>

    </head>
    <body class="d-flex h-100 text-center text-white bg-dark">

        <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
            <div class="Header">
                <%@include file='Header.jsp' %>
            </div>
            <div class="heigh"></div>

            <main class="px-3">
                <h1>Project 1 - Introduction and usage of Servlet and JSP</h1>
                <h2 class="display-2">Nguyễn Mậu Vinh</h2>
                <h3 class="display-3">VinhnmFX10710</h3>
                <p class="lead"></p>
                <p class="lead">
                    <a href="https://courses.funix.edu.vn/" class="btn btn-lg btn-secondary fw-bold border-white bg-white">FUNiX</a>
                </p>
            </main>

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
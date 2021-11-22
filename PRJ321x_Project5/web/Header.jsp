<%-- 
    Document   : Header
    Created on : Jun 13, 2021, 10:25:41 PM
    Author     : VinhD
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container-fluid">
            <!--logo-->
            <div class="logo">
                <a href="index.html">
                    <img src="https://noonpost.netlify.app/html/template/assets/img/logo-dark.png" alt="" class="logo-dark">
                    <img src="https://noonpost.netlify.app/html/template/assets/img/logo-white.png" alt="" class="logo-white">
                </a>
            </div>
            <!--/-->
    
            <!--navbar-collapse-->
            <div class="collapse navbar-collapse" id="main_nav">
                <c:if test="${sessionScope.account == null}" >
                <ul class="navbar-nav ml-auto mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="login"> Login </a>
                    </li>
                </ul>
                </c:if>
                <c:if test="${sessionScope.account != null}" >
                <ul class="navbar-nav ml-auto mr-auto">
                    <li class="nav-item">
                        <a class="nav-link"> Logged-in: ${sessionScope.account.username} </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="logout"> Logout </a>
                    </li>
                </ul>
                </c:if>
                <ul class="navbar-nav ml-auto mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="SendMail"> New Message </a>
                    </li>
                </ul>
            </div>
            <!--/-->
    
            <!--navbar-right-->
            <div class="navbar-right ml-auto">
                <div class="theme-switch-wrapper">
                    <label class="theme-switch" for="checkbox">
                        <input type="checkbox" id="checkbox">
                        <div class="slider round"></div>
                    </label>
                </div>
    
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </div>
    </nav>

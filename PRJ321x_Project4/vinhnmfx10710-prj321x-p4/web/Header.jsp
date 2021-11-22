<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        
        <!--loading -->
        <div class="loading">
            <div class="circle"></div>
        </div>
        <!--/-->
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="container-fluid">
                <!--logo-->
                <div class="logo">
                    <a href="home">
                        <img src="https://noonpost.netlify.app/html/template/assets/img/logo-dark.png" alt="" class="logo-dark">
                        <img src="https://noonpost.netlify.app/html/template/assets/img/logo-white.png" alt="" class="logo-white">
                    </a>
                </div>
                <!--/-->
                <!--navbar-collapse-->
                <div class="collapse navbar-collapse" id="main_nav">
                    <ul class="navbar-nav ml-auto mr-auto">
                        <c:choose>
                            <c:when test='${sessionScope.login == null}'>
                                <li class="nav-item">
                                    <a class="nav-link" href="login">Login</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="register">Register</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="nav-item">
                                    <a class="nav-link" href="home">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Welcome: ${sessionScope.login}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="logout">Logout</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
                <!--/-->

                <!--navbar-right-->
                <div class="navbar-right ml-auto">
                    <div class="theme-switch-wrapper">
                        <label class="theme-switch" for="checkbox">
                            <input type="checkbox" id="checkbox" />
                            <div class="slider round"></div>
                        </label>
                    </div>
                </div>
            </div>
        </nav>
        <!--/-->

<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:attribute name="title">Javastudy.ru MVC_HTML5_Angular</jsp:attribute>

    <jsp:body>
        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">About
                        <small>Spring MVC 4 + HTML5 + Bootstrap 3 + AngularJS</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">About</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Intro Content -->
            <div class="row">
                <div class="col-md-6">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/springmvc angular.jpg" alt="">
                </div>
                <div class="col-md-6">
                    <h2>О приложении</h2>
                    <p>Целью приложения является демонстрация возможностей Spring MVC, а так же использование с фрейморком таких технологий, как:</p>
                    <p><b>HTML5</b> - языка для структурирования и представления содержимого всемирной паутины</p>
                    <p><b>Bootstrap</b> - - интуитивно простой и в тоже время мощный интерфейсный фрейморк, повышающий скорость и облегчающий разработку web-приложений. </p>
                    <p><b>AngularJS</b> - так же здесь демонстрируется работа популярного фреймворка в связке с Spring MVC.</p>
                    <p>Здесь используется бесплатная тема <b>startbootstrap-modern-business-1.0.5</b>, найденная на просторах интернет. В теме 17 шаблонных страниц, но здесь используются не все.</p>
                </div>
            </div>
            <!-- /.row -->

            <!-- Team Members -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Our Team</h2>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                        <div class="caption">
                            <h3>John Smith<br>
                                <small>Job Title</small>
                            </h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste saepe et quisquam nesciunt maxime.</p>
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                        <div class="caption">
                            <h3>John Smith<br>
                                <small>Job Title</small>
                            </h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste saepe et quisquam nesciunt maxime.</p>
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                        <div class="caption">
                            <h3>John Smith<br>
                                <small>Job Title</small>
                            </h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste saepe et quisquam nesciunt maxime.</p>
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                        <div class="caption">
                            <h3>John Smith<br>
                                <small>Job Title</small>
                            </h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste saepe et quisquam nesciunt maxime.</p>
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                        <div class="caption">
                            <h3>John Smith<br>
                                <small>Job Title</small>
                            </h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste saepe et quisquam nesciunt maxime.</p>
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                        <div class="caption">
                            <h3>John Smith<br>
                                <small>Job Title</small>
                            </h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste saepe et quisquam nesciunt maxime.</p>
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                                </li>
                                <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <!-- Our Customers -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Our Customers</h2>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
                </div>
            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->
    </jsp:body>

</page:template>
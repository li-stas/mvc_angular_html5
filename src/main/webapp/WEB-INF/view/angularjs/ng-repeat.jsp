<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:angular-temaplate>
    <jsp:body>
        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Итерации и сортировка AngularJS
                        <small>ng-repeat</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">AngularJS ng-repeat, orderBy</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->
            <script>
                var app = angular.module('myAppModule', []);
                app.controller('myController', function($scope) {
                    $scope.someArray = [
                        {name: "Name1", developer: "javastudy.ru", link: "http://javastudy.ru"},
                        {name: "David Blaine", developer: "Copperfield", link: "http://mag.ic"},
                        {name: "Murzik", developer: "Murka", link: "http://welovecats.com"},
                        {name: "Z", developer: "X", link: "http://example.com"}
                    ]
                })
            </script>
            <!-- Content Row -->
            <div class="row">

                <div class="col-lg-12">

                    <div ng-app="myAppModule">


                        <div ng-controller="myController">
                            <h3>Пример ng-repeat, $index, $last</h3>
                            <table class="table">
                                <tr ng-repeat="row in someArray">
                                    <td style="padding-right: 0.5em"> {{ $index }} <td>
                                    <td> {{ row.name }} </td>
                                    <td> {{ row.developer }} </td>
                                    <td> {{ row.link }} </td>
                                    <td> Последний элемент? = {{ $last }}</td>
                                </tr>

                            </table>
                            <h3>Сортировка по 'name'</h3>
                            <table class="table">
                                <tr ng-repeat="row in someArray | orderBy :'name'">
                                    <td style="padding-right: 0.5em"> {{ $index }} <td>
                                    <td> {{ row.name }} </td>
                                    <td> {{ row.developer }} </td>
                                    <td> {{ row.link }} </td>
                                    <td> Последний элемент? = {{ $last }}</td>
                                </tr>

                            </table>

                            <h3>Сортировка по 'name' в обратном порядке </h3>
                            <table class="table">
                                <tr ng-repeat="row in someArray | orderBy :'name' :true">
                                    <td style="padding-right: 0.5em"> {{ $index }} <td>
                                    <td> {{ row.name }} </td>
                                    <td> {{ row.developer }} </td>
                                    <td> {{ row.link }} </td>
                                    <td> Последний элемент? = {{ $last }}</td>
                                </tr>

                            </table>

                        </div>


                    </div>

                </div>

            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->
    </jsp:body>
</page:angular-temaplate>
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
                    <h1 class="page-header">if, switch в AngularJS
                        <small>ng-if ng-switch</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">AngularJS ng-if, ng-switch</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Content Row -->
            <div class="row">

                <div class="col-lg-12">

                    <script>
                        var app = angular.module('myAppModule', []);
                        app.controller('myController', function($scope) {
                            $scope.someArray = {
                                name: "Some Name in Array var",
                                developer: "javastudy.ru",
                                link: "http://javastudy.ru"
                            }
                        })
                    </script>

                    <div ng-app="myAppModule" ng-controller="myController">
                        <pre>
                            <code>
                                var app = angular.module('myAppModule', []);
                                app.controller('myController', function($scope) {
                                        $scope.someArray = {
                                            name: "Some Name in Array var",
                                            developer: "javastudy.ru",
                                            link: "http://javastudy.ru"
                                        }
                                })
                            </code>
                        </pre>
                        <h3>Пример if (ng-if) в AngularJS</h3>
                        <div class="bg-success" ng-if="someArray.name == 'Some Name in Array var'">
                            <p>ng-if == someArray.name == 'Some Name in Array var'</p>
                        </div>
                        <div class="bg-warning" ng-if="someArray.developer != 'yandex.ru'">
                            <p>ng-if == someArray.developer != 'yandex.ru'</p>
                        </div>
                        <h3>Пример switch (ng-switch)</h3>
                        <div ng-switch on="someArray.link">
                            <div class="bg-success" ng-switch-when="http://javastudy.ru">
                                <p>ng-switch when="http://javastudy.ru"</p>
                            </div>
                            <div class="bg-success" ng-switch-when="yandex.ru">
                                <p>ng-switch when="yandex.ru"</p>
                            </div>
                            <div class="bg-warning" ng-switch-default>
                                <p>ng-switch-default</p>
                            </div>

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
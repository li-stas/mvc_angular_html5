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
                <h3 class="page-header">AngularJS routing and templates
                    <small>routing and templates</small>
                </h3>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">routing and templates</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <script>

            var app = angular.module('myApp', ['ngRoute']);
            app.controller('ListUserController', function($scope) {
                $scope.users = [
                    {id: '1', name: "user1"},
                    {id: '2', name: "user2"},
                    {id: '3', name: "user3"},
                    {id: '4', name: "user4"},
                    {id: '5', name: "user5"}
                ];
            });

            app.controller('ListUserControllerJSON', function($scope, $http) {
                $http.get('/rest/users').
                        success(function(data, status, headers, config) {
                            $scope.users = data;
                        })
                        .error(function(data, status, headers, config) {
                            alert("error getting data");
                        });
            });

            app.controller('GetUserController', function($scope, $routeParams) {
                //routeParams is used for get userId /users/:userId
                $scope.user = {id:$routeParams.userId, name:"Test Name in GetUserController"};

            });

            //ngRoute definition
            //a route is defined after #sign #/users/1 or #/usersJSON
            app.config(['$routeProvider',
                function($routeProvider) {
                    $routeProvider.
                    when('/users', {
                        templateUrl: ('/resources/angularjs/templates/listUsers.html'),
                        controller: 'ListUserController'
                    }).
                    when('/usersJSON', {
                        templateUrl: ('/resources/angularjs/templates/listUsers.html'),
                        controller: 'ListUserControllerJSON'
                    }).
                    when('/users/:userId', {
                        templateUrl: ('/resources/angularjs/templates/getUser.html'),
                        controller: 'GetUserController'

                    }).
                    otherwise({
                        redirectTo: '/users'
                    });
                }]);

        </script>

        <div>

            <h3>AngularJS routing</h3>
            <div ng-app="myApp">

                <div ng-view> </div>
                <div> <br />

                    <p> <a href="#/users/2">/users/2 - вызывает GetUserController и шаблон getUser.html</a> </p>
                    <p> <a href="#/usersJSON">#/usersJSON</a> Смотрите RestTemplateController.getRestUsers() где мапится ссылка, используемая в ListUserControllerJSON</p>
                    <p> <a href="#/users">#/users (по дефолту редиректит сюда). Это список ListUserController, заданный на этой странице</a> </p>

                </div>


            </div>

        </div>

        <!-- /.container -->
    </jsp:body>
</page:angular-temaplate>
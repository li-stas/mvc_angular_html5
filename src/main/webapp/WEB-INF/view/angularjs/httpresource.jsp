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
                    <h3 class="page-header">AngularJS http resource
                        <small>http resource</small>
                    </h3>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">http resource</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <script>

                var app = angular.module('myApp', ['ngResource']);
                app.controller('JSONController', function($scope, $http) {
                    $http.get('/rest/posts/13').
                    success(function(data, status, headers, config) {
                        $scope.post = data;
                        console.log(data);
                    }).
                    error(function($data, status, $headers, config) {
                        alert("error getting data");
                    });


                    //test JSON as post
                    var post = {
                        userId: 'test',
                        id : '1',
                        title : 'test',
                        body: 'test'
                    };

                    //$http
                    $http.post('/rest/savePost', post).
                    success(function(data, status, headers, config) {
                        $scope.post = data;
                        console.log(data);
                    }).
                    error(function(data, status, headers, config) {
                        alert("error post data");
                    });
                });

                //$resource
                //$resource configuration object is Posts used for CRUD
                app.factory("Posts", function($resource) {
                    return $resource("/rest/delPosts/:id");
                });

                //$resource
                //get post id mapped to @RestTemplateController getRestPostsById
                app.controller("PostQueryByIdController", function($scope, Posts) {
                    Posts.get({ id: 1 }, function(data) {
                        $scope.posts = data;
                        console.log(data);
                    });
                });

                //$resource
                //delete a post mapped to @RestTemplateController deletePostByIDAngular
                app.controller("DeletePostByIdController", function($scope, Posts) {
                    Posts.delete({ id: 4 })
                });

            </script>

            <h3>AngularJS routing</h3>
            <div ng-app="myApp">
                <div ng-controller="JSONController">
                    <table class="table">
                        <tr>
                            <td><b>userid</b></td>
                            <td>{{ post.userId }}</td>
                        </tr>
                        <tr>
                            <td><b>id</b></td>
                            <td>{{ post.id }}</td>
                        </tr>
                        <tr>
                            <td><b>title</b></td>
                            <td>{{ post.title}}</td>
                        </tr>
                        <tr>
                            <td><b>body</b></td>
                            <td>{{ post.body }}</td>
                        </tr>
                    </table>

                    <!--
                    change link to $http.get('/rest/posts/') in controller and get 100 posts!
                    <table class="table" ng-repeat="p in post">
                        <tr><td><b>userid</b></td><td>{{ p.userId }}</td></tr>
                    </table> -->

                    <div ng-controller="PostQueryByIdController"></div>
                    <div ng-controller="DeletePostByIdController"> </div>


                </div>

            </div>

        </div>
        <!-- /.container -->
    </jsp:body>
</page:angular-temaplate>
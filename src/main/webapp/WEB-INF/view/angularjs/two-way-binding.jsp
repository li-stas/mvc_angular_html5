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
                    <h1 class="page-header">Двунаправленное связывание AngularJS
                        <small>two way binding</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">AngularJS two way binding</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <script>

                var app = angular.module('myModule', []);
                app.controller('myController', function($scope) {
                    $scope.siteName = 'javastudy.ru';
                    $scope.clickMethod = function() {
                        var toggleMe = document.getElementById('toggleId');
                        toggleMe.style.color = toggleMe.style.color === 'red' ? 'green' : 'red';
                    };

                    $scope.changeSiteName = function(value) {
                        $scope.siteName = value;
                        alert($scope.siteName);
                    }
                });

            </script>
            <!-- Content Row -->
                <div class="col-lg-12">

                    <p id="toggleId" style="color:red;">ПЕРКЛЮЧАЮЩИЙСЯ ТЕКСТ</p>

                    <div ng-app="myModule" ng-controller="myController">
                        <h3>Пример связывания и использование модели AngularJS</h3>

                        <strong>Связанный параметр bindingValue: </strong> {{ bindingValue }} <br />
                        <strong>Пример: </strong> <span ng-bind="siteName"> </span> <br />
                        <br />
                        <label>Связать с параметром bindingValue: </label>

                        <input type="text" ng-model="bindingValue" ng-change="clickMethod()"/> <br />

                        <label>Поменять параметр siteName через вызов js метода: </label>
                        <input type="text" ng-model="newSiteName" /> <br />


                        <button ng-click='clickMethod()'>Вызвать clickMethod</button>
                        <button ng-click='changeSiteName(newSiteName)'>Вызвать changeSiteName</button>

                        <br /><br />

                        <select ng-model="selectedValue">
                            <option value="test1">test1</option>
                            <option value="test2">test2</option>
                            <option value="test3">test3</option>
                        </select> {{selectedValue}}<br/><br/>

                        <input type="radio" name="selectedColor" value="Red" ng-model="selectedColor">Red</input>
                        <input type="radio" name="selectedColor" value="Green" ng-model="selectedColor">Green</input>
                        <span style="color:{{selectedColor}}">{{selectedColor}}</span>

                        <br/><br/>
                        CheckBox1 <span ng-bind="checkBox1"></span><input type="checkbox" value="testCheckBox1" ng-model="checkBox1"><br/>
                        CheckBox2 <span ng-bind="checkBox2"></span><input  type="checkbox" value="testCheckBox2" ng-model="checkBox2"><br/>
                    </div>

                </div>

            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->
    </jsp:body>
</page:angular-temaplate>
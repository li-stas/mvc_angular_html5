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
                    <h1 class="page-header">Инициализация AngularJS
                        <small>ng-init</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">AngularJS ng-init</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Content Row -->
            <div class="row">

                <div class="col-lg-12">

                    <div ng-app>
                        <h3>Пример ng-init AngularJS</h3>
                        <div ng-init="properties=[ {value: 'value1'}, {value: 'value2'}, {value: 'value3'}]">
                            <table>
                                <tr ng-repeat="property in properties">
                                    <td><b>Property [ {{ $index }} ]: {{ property.value }}</b></td>
                                </tr>
                            </table>

                        </div>
                        <h3>Еще один способ инициализации объекта </h3>
                        <div ng-init="userName = 'Some User' ; userPass = 333444; email = 'mail@example.com'">
                            <table>
                                <tr>
                                    <td><b>Имя пользователя:</b></td>
                                    <td><input type="text" ng-model="userName"/></td>
                                </tr>
                                <tr>
                                    <td><b>Пароль:</b></td>
                                    <td><input type="number" ng-model="userPass"/></td>
                                </tr>
                                <tr>
                                    <td><b>Email:</b></td>
                                    <td><input type="text" ng-model="email"/></td>
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
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>
        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Список тем по AngularJS
                        <small>содержание</small>
                    </h1>
                    <ol class="breadcrumb">
                        <div><a href="index.html">Home</a>
                        </div>
                        <div class="active">Список тем по AngularJS</div>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <c:url value="/uploadFile" var="fileUploadControllerURL" />
            <!-- Content Row -->
            <div class="row">

                <div class="col-lg-12">
                    <div>
                        <h3>AngularJS stringiy и parse</h3>
                        <a href="/angularjson.html">Объекты, массивы в JS и функции stringiy и parse</a>
                    </div>
                    <div>
                        <h3>AngularJS Expressions</h3>
                        <a href="/expressions.html">Пример выражений в AngularJS</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-model</h3>
                        <a href="/ng-bind-model.html">Пример модели ng-model</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-class</h3>
                        <a href="/ng-class.html">Директива ng-class</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-click, ng-show</h3>
                        <a href="/ng-click-show.html">Директивы ng-click, ng-show</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-if, ng-switch</h3>
                        <a href="/ng-if-switch.html">Директивы ng-if, ng-switch</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-init</h3>
                        <a href="/ng-init.html">Директива ng-init</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-repeat</h3>
                        <a href="/ng-repeat.html">Директива ng-repeat</a>
                    </div>
                    <div>
                        <h3>AngularJS two way binding</h3>
                        <a href="/two-way-binding.html">Двустороннее связывание объектов и модели AngularJS.</a>
                    </div>
                    <div>
                        <h3>AngularJS Dependency Injection</h3>
                        <a href="/angularDI.html">Внедрение зависимостей (Dependency Injection) в AngularJS.</a>
                    </div>
                    <div>
                        <h3>AngularJS Controllers</h3>
                        <a href="/ng-controller.html">Контроллер ng-controller AngularJS. Наследование контроллеров.</a>
                    </div>
                    <div>
                        <h3>AngularJS Filters</h3>
                        <a href="/angularfilters.html">Использование фильтров AngularJS filters. Angular ng-repeat filter и собственный фильтр.</a>
                    </div>
                    <div>
                        <h3>AngularJS form validation</h3>
                        <a href="/angularvalidation.html">Валидация формы (angular form validation) в AngularJS. Свойства invalid, valid, touched, pristine, dirty.</a>
                    </div>
                    <div>
                        <h3>AngularJS routing and templates</h3>
                        <a href="/angularrouting.html">Понятие routing и templates в приложении AngularJS. Использование ngRoute, routeProvider.</a>
                    </div>
                    <div>
                        <h3>AngularJS http resource</h3>
                        <a href="/angularhttpresource.html">RESTful сервисы в AngularJS. Использование сервисов http, $resource для REST вызовов.</a>
                    </div>
                    <div>
                        <h3>AngularJS custom directive</h3>
                        <a href="/customdirective.html">Пример собственной директивы</a>
                    </div>
                </div>

            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->
</jsp:body>
</page:template>
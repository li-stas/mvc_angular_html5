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
                    <h1 class="page-header">Действия (actions) AngularJS
                        <small>ng-click, ng-show</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">AngularJS ng-click, ng-show</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Content Row -->
            <div class="row">

                <div class="col-lg-12">

                    <div ng-app ng-init="visible=false">
                        <h3>Пример директив ng-click, ng-show, ng-hide AngularJS</h3>
                        <div ng-show="visible">ng-show Visible is: {{ visible }} </div> <br />
                        <div ng-hide="visible">ng-hide Visible is: {{ visible }} </div> <br />

                        <div ng-show="someValue">ng-show someValue is: {{ someValue }} </div> <br />
                        <div ng-hide="someValue">ng-hide someValue is: {{ someValue }} </div> <br />
                        <br />
                        <a href="#" ng-click="visible=true">ng-click visible=true</a> <br />
                        <a href="#" ng-click="visible=false">ng-click visible=false</a> <br />
                        <br />
                        <a href="#" ng-click="someValue=true">ng-click someValue=true</a> <br />
                        <a href="#" ng-click="someValue=false">ng-click someValue=false</a> <br />
                    </div>

                </div>

            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->
    </jsp:body>
</page:angular-temaplate>
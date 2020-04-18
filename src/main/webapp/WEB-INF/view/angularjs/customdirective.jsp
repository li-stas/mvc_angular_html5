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
                    <h3 class="page-header">AngularJS customdirective
                        <small>customdirective</small>
                    </h3>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">customdirective</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

        <script>
            var myapp = angular.module("myApp", []);
            myapp.directive('cutomdirective', function() {
                var directive = {};
                directive.restrict = 'E'; // restrict the directive to element
                directive.template = "<b>Test Basic Custom Directive. Name must be lower case 'customdirective', not 'customDirective'</b>";
                return directive;
            });
        </script>

        <h3>AngularJS Custom Directive</h3>
        <div ng-app="myApp">
            <cutomdirective></cutomdirective>
        </div>

        <!-- /.container -->
    </jsp:body>
</page:angular-temaplate>
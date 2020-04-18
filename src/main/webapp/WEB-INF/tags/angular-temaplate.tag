<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@attribute name="title" fragment="true" %>
<%@ taglib prefix="headerTemplate" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <title><jsp:invoke fragment="title"/></title>
    <!-- Bootstrap Core CSS -->
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap"/>
    <link href="${bootstrap}" rel="stylesheet" />

    <!-- Custom CSS -->
    <spring:url value="/resources/css/modern-business.css" var="startertemplate"/>
    <link href="${startertemplate}" rel="stylesheet" />

    <!-- Custom Fonts -->
    <spring:url value="/resources/font-awesome/css/font-awesome.min.css" var="fontawesome"/>
    <link href="${fontawesome}" rel="stylesheet" />

    <!-- jQuery -->
    <spring:url value="/resources/js/jquery-2.1.4.min.js" var="jqueryjs"/>
    <script src="${jqueryjs}"></script>

    <!-- Bootstrap Core JavaScript -->
    <spring:url value="/resources/js/bootstrap.min.js" var="js"/>
    <script src="${js}"></script>

    <!-- AngularJS min production framework -->
    <spring:url value="/resources/angularjs/angular.min.js" var="angularjs" />
    <script src="${angularjs}"></script>


    <!-- AngularJS min production routing framework -->
    <spring:url value="/resources/angularjs/angular-route.min.js" var="angularroute" />
    <script src="${angularroute}"></script>

    <!-- AngularJS min production resource -->
    <spring:url value="/resources/angularjs/angular-resource.min.js" var="angularresource" />
    <script src="${angularresource}"></script>
</head>

<body>

<headerTemplate:header-template/>

<jsp:doBody/>


<div class="container">
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <a href="<%=request.getContextPath()%>?languageVar=en">EN</a>
                <a href="<%=request.getContextPath()%>?languageVar=ru">RU</a>
                <p>Copyright © Javastudy.ru 2016</p>
            </div>
        </div>
    </footer>
</div>

</body>

</html>
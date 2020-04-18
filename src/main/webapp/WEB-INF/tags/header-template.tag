<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<c:url value="/file.html" var="file"/>
<c:url value="/jdbc.html" var="jdbc"/>
<c:url value="/email.html" var="email" />
<c:url value="/rest.html" var="rest" />
<c:url value="/orm.html" var="orm" />
<c:url value="/runtimeException.html" var="runtimeException" />
<c:url value="/jstl.html" var="jstl" />
<c:url value="/redirectExample" var="redirectExample" />
<c:url value="/scope.html" var="scope" />
<c:url value="/cookie.html" var="cookieView" />
<c:url value="/security.html" var="security" />

<c:url value="/html5.html" var="html5" />

<c:url value="/angularIndex.html" var="angularIndex" />
<c:url value="/angularjson.html" var="angularjson" />
<c:url value="/expressions.html" var="expressions" />
<c:url value="/ng-bind-model.html" var="ngbindmodel" />
<c:url value="/ng-class.html" var="ngclass" />
<c:url value="/ng-click-show.html" var="ngclickshow" />
<c:url value="/ng-if-switch.html" var="ngifswitch" />
<c:url value="/ng-init.html" var="nginit" />
<c:url value="/ng-repeat.html" var="ngrepeat" />
<c:url value="/two-way-binding.html" var="twowaybinding" />
<c:url value="/angularDI.html" var="angularDI" />
<c:url value="/ng-controller.html" var="ngcontroller" />
<c:url value="/angularfilters.html" var="angularfilters" />
<c:url value="/angularvalidation.html" var="angularvalidation" />
<c:url value="/angularrouting.html" var="angularrouting" />
<c:url value="/angularhttpresource.html" var="angularhttpresource" />
<c:url value="/customdirective.html" var="customdirective" />


<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><spring:message code="navMenu.home"/></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPER_USER', 'ROLE_USER')" var="isUSer"/>


                <c:if test="${not isUSer}">
                    <li style="padding-top: 15px; padding-bottom: 15px; color: red">
                        <c:if test="${empty param.error}">
                            <spring:message code="navMenu.notLogin"/>
                        </c:if>
                    </li>
                    <li> <a style="color: Green;" href="<c:url value="/login.html"/>"><spring:message code="navMenu.login"/></a> </li>
                </c:if>



                <c:if test="${isUSer}">
                    <li style="padding-top: 15px; padding-bottom: 15px; color: green">
                        <spring:message code="navMenu.existLogin"/>
                        <security:authentication property="principal.username"/>  <spring:message code="navMenu.existLoginRole"/>
                        <b><security:authentication property="principal.authorities"/></b>

                    </li>
                    <li> <a style="color: red;" href="<c:url value="/j_spring_security_logout"/>"><spring:message code="navMenu.logout"/></a> </li>
                </c:if>


                <c:url value="/about.html" var="about"/>
                <li><a href="${about}"><spring:message code="navMenu.about"/></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><spring:message code="navMenu.tutorial"/><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="${file}">Загрузка файла PDF и Excel</a>
                        </li>
                        <li>
                            <a href="${jdbc}">JDBC c JDBCTemplates</a>
                        </li>
                        <li>
                            <a href="${email}">Работа с Java Mail API</a>
                        </li>
                        <li>
                            <a href="${rest}">Rest Services (JSON and XML)</a>
                        </li>
                        <li>
                            <a href="${orm}">Spring MVC и Hibernate 5</a>
                        </li>
                        <li>
                            <a href="${runtimeException}">Runtime Exception</a>
                        </li>
                        <li>
                            <a href="${jstl}">JSTL Example</a>
                        </li>
                        <li>
                            <a href="${redirectExample}">Redirect Example</a>
                        </li>
                        <li>
                            <a href="${scope}">Session Object Example</a>
                        </li>
                        <li>
                            <a href="${cookieView}">Работа с cookie</a>
                        </li>
                        <li>
                            <a href="${security}">Spring Security</a>
                        </li>
                        <li>
                            <a href="${html5}">HTML5</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="angularIndex" class="dropdown-toggle" data-toggle="dropdown"><spring:message code="navMenu.angularjs"/><b class="caret"></b> </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="${angularIndex}">Содержание тем AngularJS</a>
                        </li>
                        <li>
                            <a href="${angularjson}">JavaScript Object Notation .stringify</a>
                        </li>
                        <li>
                            <a href="${expressions}">AngularJS Expressions</a>
                        </li>
                        <li>
                            <a href="${ngbindmodel}">AngularJS bind and model</a>
                        </li>
                        <li>
                            <a href="${ngclass}">AngularJS ng-class</a>
                        </li>
                        <li>
                            <a href="${ngclickshow}">AngularJS ng-click, ng-show</a>
                        </li>
                        <li>
                            <a href="${ngifswitch}">AngularJS ng-if, ng-switch</a>
                        </li>
                        <li>
                            <a href="${nginit}">AngularJS ng-init</a>
                        </li>
                        <li>
                            <a href="${ngrepeat}">AngularJS ng-repeat</a>
                        </li>
                        <li>
                            <a href="${twowaybinding}">AngularJS two way binding</a>
                        </li>
                        <li>
                            <a href="${angularDI}">AngularJS Dependency Injection</a>
                        </li>
                        <li>
                            <a href="${ngcontroller}">AngularJS Controllers</a>
                        </li>
                        <li>
                            <a href="${angularfilters}">AngularJS Filters</a>
                        </li>
                        <li>
                            <a href="${angularvalidation}">AngularJS from validation</a>
                        </li>
                        <li>
                            <a href="${angularrouting}">AngularJS routing and templates</a>
                        </li>
                        <li>
                            <a href="${angularhttpresource}">AngularJS http resource</a>
                        </li>
                        <li>
                            <a href="${customdirective}">AngularJS custom directive</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

    </div>
    <!-- /.container -->
</nav>

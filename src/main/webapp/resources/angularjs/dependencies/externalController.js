//this is the definition for a new angularjs single page application

var app = angular.module('myApp', []).controller('externalController', function($scope) {
   $scope.externalControllerMethod = function () {
       $scope.externalControllerMethodCalled = true;
   }
});
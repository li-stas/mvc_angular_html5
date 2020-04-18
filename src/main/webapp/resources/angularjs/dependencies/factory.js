//creates values or objects on demand

angular.module("myApp")
.value("someFactoryValue", "AngularJS framework")
.factory("angularFactory", function(someFactoryValue) {
   var angularFactory = {
       'angularVersion': someFactoryValue,
       'siteName': 'javastudy.ru',
       getAngularVersion: function() {
           alert('Angular version is' + this.angularVersion);
       }
   };
    return angularFactory;
})
.controller("factoryController", function($scope, angularFactory) {
    alert(angularFactory.angularVersion);
    $scope.angularVersion = angularFactory.angularVersion;
    console.log(angularFactory.angularVersion);
    angularFactory.getAngularVersion();
});
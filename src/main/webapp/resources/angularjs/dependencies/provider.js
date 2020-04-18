//configurable service factory

angular.module("myApp")
.constant("testConstant","constant value")
.provider("configuredService", function() {
	
	var name = '';

    this.setName = function(newName) {
        this.name = newName;
    };
    
    this.$get = function() {
    	 var name = this.name;
         return {
             	 getName: function() {
                 return "Java Spring MCV and AngularJS";
             	 }
         }
    };
    
    
}) 
.config(function(configuredServiceProvider){
	configuredServiceProvider.setName('provider name');
})
.controller("providerController", function($scope, configuredService) {
	$scope.rootName = configuredService.getName();
	alert(configuredService.getName());

});
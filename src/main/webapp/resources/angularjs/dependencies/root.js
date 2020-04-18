angular.module("myApp", ['serviceModule'])
    .value("someObject", {
        objectName: "Mordor",
        objectValue: "Default City",
        getObjectDetails: function (){
            return this.objectName + " is " + this.value;
        }
    })
    .controller("valueController", function ($scope, someObject)
    {
        $scope.rootObject = someObject;
    });
(function () {
  "use strict";

  angular.module("app").controller("employeeCtrl", function($scope, $http) {

    $scope.employees = [];

    $scope.setup = function() {
      $http.get('/api/v1/employees.json').then(function(response) {
        $scope.employees = response.data;
      });
    }






    window.$scope = $scope;
  });
})();
angular.module("suspiciousEmployees", []).filter('suspicious', [function (age) {
  return function(employees, age) {
    var filteredEmployees = [];
    var today = new Date();
    var date = today.getDate();
    var month = today.getMonth() + 1;
    var year = today.getFullYear() - age;
    var cutOffDate = new Date(year, month, date);
    if (employees) {
      for (var i = 0; i < employees.length; i++) {
        var birthday = new Date(employees[i].birthdate)
        if (birthday >= cutOffDate) {
          filteredEmployees.push(employees[i]);
        }
      }
    }
    return filteredEmployees;
  }
}]);
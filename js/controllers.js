var formulaoneApp = angular.module('formulaoneApp', []);

var loggedIn = 1;

formulaoneApp.controller('headerNameCtrl', function($scope) {
	if (loggedIn)
		return $scope.user = "James";
	return $scope.user = "Not logged in";
});

formulaoneApp.controller('LeaderboardCtrl', function($scope) {
	$scope.leaders = [
		{'username': 'jamesferry',
		 'points': '100'},
		{'username': 'anotherjames',
		 'points': '500'},
		 {'username': 'yetanotherjames',
		 'points': '500'},
	]

	$scope.orderProp = 'points';
});

formulaoneApp.controller('FutureRacesCtrl', function($scope) {
	$scope.races = [
		{'date': '01/01/2015',
		 'country': 'Brazil'},
		{'date': '01/02/2015',
		 'country': 'United Kingdom'},
		 {'date': '02/01/2015',
		 'country': 'Spain'},
	]

	$scope.orderProp = 'date';
	});

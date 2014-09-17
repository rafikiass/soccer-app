(function (){
	"use strict";


	
	angular.module("app").controller("rankCtrl", function($scope, $http){
		
		getRanks();

	

		

		$scope.init = function(id){
    		$scope.league_id = id;
    		getTeams();	 		
		};

		function getRanks() {$http.get("/api/v1/teams.json").then(function (response){
    		$scope.ranks = response.data.ranks;
    		
    		});
		};

		function getTeams() {$http.get("/api/v1/teams.json?league_id=" + $scope.league_id).then(function (response){
    		$scope.teams = response.data.teams;
    		});
		};	
    		

	});
})();
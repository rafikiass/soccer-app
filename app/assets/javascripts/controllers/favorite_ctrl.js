(function(){
	"use strict";

	angular.module("app").controller("favoriteCtrl", function($scope, $http){



		$scope.favoriteLeague = function (id){
			favoriteLeagues(id);

		};

		$scope.favoriteTeam = function (id){
			favoriteTeams(id);
		}

		$scope.delete = function(id){
			deleteLeagues(id);
		}
		
		$scope.init = function(id, filled){
			$scope.id = id;
			$scope.filled = filled;
		}

		$scope.clicked = function(filled){
			$scope.filled = true;
		}

		function favoriteLeagues(id){

			if($scope.filled) {
				$http.delete("/favorites/" + $scope.id + "?type=League").then(function(){
	    			$scope.filled = false;
    			});
			} else {
				$http.post("/favorites", { id: id, type: "League" }).then(function(){
	    			$scope.filled = true;
	    		});
			}

		};

		function favoriteTeams(id){
			if($scope.filled){
				$http.delete("/favorites/" + $scope.id + "?type=Team").then(function(){
					$scope.filled = false;
				});
			} else {
				$http.post("/favorites", { id: id, type: "Team"}).then(function(){
					$scope.filled = true;
				});
			}
		};

		// window.scope = $scope;
	});

})();
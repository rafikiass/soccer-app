(function(){
	"use strict";

	angular.module("app").controller("favoriteCtrl", function($scope, $http){



		$scope.favorite = function (id){
			favoriteLeagues(id);

		};

		$scope.delete = function(id){
			deleteLeagues(id);
		}
		
		$scope.init = function(id, filled){
			$scope.id = id;
			$scope.filled = filled;
		}

		$scope.clicked = function(filled){
			$scope.filled = true;
			console.log("clicked");
			console.log($scope.filled)
		}


		function favoriteLeagues(id){

			if($scope.filled) {
				$http.delete("/favorites/" + $scope.id, { id: id, type: "League" }).then(function(){
	    			$scope.filled = false;
    			});
			} else {
				$http.post("/favorites", { id: id, type: "League" }).then(function(){
	    			$scope.filled = true;
	    		});
			}

		};

		// window.scope = $scope;
	});

})();
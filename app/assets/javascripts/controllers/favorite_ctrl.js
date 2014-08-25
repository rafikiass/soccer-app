(function(){
	"use strict";

	angular.module("app").controller("favoriteCtrl", function($scope, $http){



		$scope.favorite = function (id){
			favoriteLeagues(id);

		};

		$scope.delete = function(id){
			deleteLeagues(id);
		}
		
		$scope.init = function(id){
			$scope.id = id;
		}

		$scope.clicked = function(filled){
			$scope.filled = true;
			console.log("clicked");
			console.log($scope.filled)
		}


		function deleteLeagues(id){$http.delete("/favorites/" + $scope.id, { id: id, type: "League" }).then(function(){
    			$scope.filled = false;
    		});
		};
		function favoriteLeagues(id){$http.post("/favorites", { id: id, type: "League" }).then(function(){
    			$scope.filled = true;
    		});
		};
	});

})();
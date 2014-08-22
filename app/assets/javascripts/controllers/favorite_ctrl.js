(function(){
	"use strict";

	angular.module("app").controller("favoriteCtrl", function($scope, $http){

		$scope.favorite = function (){
			favoriteLeagues();
		};



		function favoriteLeagues(){$http.post("/favorites").then(function(){
    			
    		});
		};
	});

})();